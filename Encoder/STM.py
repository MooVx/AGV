import serial


class STM:
    def __init__(self):
        self.raw = [12]  # raw data

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
        data = self.UART.read(12)
        formatted_data = []
        for i in range(0, len(data)):
            formatted_data.append(ord(data[i]))
        self.raw = formatted_data
        return self.raw
