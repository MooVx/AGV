import serial


class STM:
    def __init__(self):
        self.raw = [14]  # raw data
        self.dirL = 0
        self.dirR = 0
        self.chL = 0
        self.chR = 0
        self.speedL = 0
        self.speedR = 0
        self.n_cntL = 0
        self.n_cntR = 0
        self.battery_12 = 0
        self.battery_24 = 0
        self.button_stop = 0
        self.button_start = 0
        self.button_3 = 0
        self.button_4 = 0
        self.field1 = 0
        self.field2 = 0
        self.field3 = 0
        self.field4 = 0

        self.UART = serial.Serial(
            port='/dev/my_little_stm',
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
        self.chL = bool(self.raw[0] & 0b00000010)
        self.chR = bool(self.raw[1] & 0b00000010)

        self.field1 = bool(self.raw[0] & 0b00000100)
        self.field2 = bool(self.raw[0] & 0b00001000)
        self.field3 = bool(self.raw[1] & 0b00000100)
        self.field4 = bool(self.raw[1] & 0b00001000)

        self.button_start = bool(self.raw[0] & 0b00010000)
        self.button_stop = bool(self.raw[0] & 0b00100000)
        self.button_3 = bool(self.raw[1] & 0b00010000)
        self.button_4 = bool(self.raw[1] & 0b00100000)

        self.speedL = 1875 * (self.raw[3] + (self.raw[2] << 8)) / 4096
        self.speedR = 64 * (self.raw[5] + (self.raw[4] << 8)) / 1875
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
        print('Fields  |1|2|3|4| :  |' + str(self.field1) + '|' + str(self.field2) + '|' + str(self.field3) + '|' + str(
            self.field3) + '|')
        print('Buttons START|STOP   ' + str(self.button_start) + '|' + str(self.button_stop))
