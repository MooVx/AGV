import serial


class STM:
    def __init__(self):
        self.raw = [14]  # raw data
        self.dirL = 0
        self.dirR = 0
        self.speedL = 0
        self.speedR = 0
        self.n_cntL = 0
        self.n_cntR = 0
        self.battery_12 = 0
        self.battery_24 = 0

        self.UART = serial.Serial(
            port='/dev/ttyACM0',
            baudrate=115200,
            parity=serial.PARITY_NONE,
            stopbits=serial.STOPBITS_ONE,
            bytesize=serial.EIGHTBITS
        )

    def read(self):
        # Description:  reading data from camera over rs485
        # Arguments:    none
        # Return:       table of read data
        self.UART.write('##')
        data = self.UART.read(14)
        formatted_data = []
        for i in range(0, len(data)):
            formatted_data.append(ord(data[i]))
        self.raw = formatted_data
        self.dirL = bool(self.raw[0] & 0b00000001)
        self.dirR = bool(self.raw[1] & 0b00000001)
        self.speedL = 64 * (self.raw[2] + (self.raw[3] << 8)) / 1875
        self.speedR = 64 * (self.raw[4] + (self.raw[5] << 8)) / 1875
        self.n_cntL = self.raw[6] + (self.raw[7] << 8)
        if self.raw[0] & 0b00000010:
            self.n_cntL = 65536 - self.n_cntL
        self.n_cntR = self.raw[8] + (self.raw[9] << 8)
        if self.raw[1] & 0b00000010:
            self.n_cntR = 65536 - self.n_cntR
        self.battery_12 = self.raw[10] + (self.raw[11] << 8)
        self.battery_24 = self.raw[12] + (self.raw[13] << 8)

        return self.raw

    def print_all(self):
        print('Direction left:      ' + str(self.dirL))
        print('Direction right:     ' + str(self.dirR))
        print('Speed left:          ' + str(self.speedL))
        print('Speed right:         ' + str(self.speedR))
        print('Counter left:        ' + str(self.n_cntL))
        print('Counter right:       ' + str(self.n_cntR))
        print('Battery 12 level:    ' + str(self.battery_12))
        print('Battery 24 level:    ' + str(self.battery_24))
