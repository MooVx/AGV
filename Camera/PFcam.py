import serial
import serial.rs485


class Pgv100:
    def __init__(self, address):
        self.QR()
        self.raw = []  # raw data from camera

        self.address = address  # Address of the read head/camera
        self.lanes = 0  # Number of lanes in the reading window
        self.angle = 0  # Absolute angle specification
        self.dir = 'none'  # direction decision
        self.any_lane = False  # Colored lane detected
        self.pos_x = 0  # Absolute position in the X direction, unsigned
        self.pos_y = 0  # Absolute position in the Y direction, signed

        self.rs485 = serial.Serial(
            port='/dev/ttyS0',
            baudrate=115200,
            parity=serial.PARITY_EVEN,
            stopbits=serial.STOPBITS_ONE,
            bytesize=serial.EIGHTBITS
        )

    class QR:
        def __init__(self):
            self.pos_x = 0  # Absolute QR position in the X direction, signed
            self.pos_y = 0  # Absolute QR position in the Y direction, signed
            self.known = 0  # Associated control code is detected.
            self.orient = 'none'  # Orientation control code for lane
            self.side = 'none'  # Relative position control code for lane

    def send_req(self, req):
        self.rs485.write(chr(req + self.address))
        self.rs485.write(chr(255 - req - self.address))

    def read_from_bus(self, bytes_to_read=0):
        # Description:  reading data from camera over rs485
        # Arguments:    number bytes to read
        # Return:       table of read data
        if bytes_to_read > 0:
            data = self.rs485.read(bytes_to_read)

        else:
            data = self.rs485.read_all()
        formatted_data = []
        for i in range(0, len(data)):
            formatted_data.append(ord(data[i]))

        return formatted_data

    def choose_color(self, color):
        # Description:  send information about detected lines color
        # Arguments:    color string 'red','blue','green'
        # Return:       False if failure
        if color == 'red':
            self.send_req(128 + 16)
            return self.read_from_bus(2) == [4, 4]
        elif color == 'green':
            self.send_req(128 + 8)
            return self.read_from_bus(2) == [2, 2]
        elif color == 'blue':
            self.send_req(128 + 64 + 4)
            return self.read_from_bus(2) == [1, 1]
        else:
            print('No color selected')
            return False

    def choose_dir(self, direction):
        # Description:  send information side of detection
        # Arguments:    dir string 'left','right','ahead'
        # Return:       False if failure
        if direction == 'left':
            self.send_req(128 + 64 + 32 + 8)
        elif direction == 'ahead':
            self.send_req(128 + 64 + 32 + 8 + 4)
        elif direction == 'right':
            self.send_req(128 + 64 + 32 + 4)
        else:
            print('No direction selected')

    def update(self):
        # Description:  updating all of variables from camera
        # Arguments:    none
        # Return:       raw data - table 21x8

        self.send_req(128 + 64 + 8 + self.address)
        self.raw = self.read_from_bus(21)
        self.any_lane = bool(self.raw[1] & 0b00000100)
        self.lanes = (self.raw[1] & 0b00110000) >> 4

        self.angle = (self.raw[11] & 0b00111111) + ((self.raw[10] & 0b00111111) << 6)
        self.pos_y = (self.raw[7] & 0b00111111) + ((self.raw[6] & 0b00111111) << 6)

        if self.raw[1] & 0b00000010:
            self.dir = 'left'
        elif self.raw[1] & 0b00000001:
            self.dir = 'right'
        else:
            self.dir = 'none'

        return self.raw
