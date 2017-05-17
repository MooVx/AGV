import time
import serial
import serial.rs485

class Pgv100:

    def __init__(self, address):
        self.address = address
        self.rs485 = serial.Serial(
            port='/dev/ttyS0',
            baudrate=115200,
            parity=serial.PARITY_EVEN,
            stopbits=serial.STOPBITS_ONE,
            bytesize=serial.EIGHTBITS
        )

    def send_req(self, req):
        self.rs485.write( chr(req + self.address) )
        self.rs485.write( chr(255 - req - self.address) )

    def read_from_bus(self, bytes_to_read = 0):
        if bytes_to_read > 0:
            data = self.rs485.read(bytes_to_read)

        else:
            data = self.rs485.read_all()
        formatted_data = []
        for i in xrange(0, len(data) - 1):
            formatted_data.append(ord(data[i]))

        return formatted_data

    def choose_color(self, color):
            if color == 'red':
                self.send_req(128 + 16)
                return
            elif color == 'green':
                self.send_req(128 + 8)
            elif color == 'blue':
                self.send_req(128 + 4)
            else:
                print 'No color selected'
                return - 1
