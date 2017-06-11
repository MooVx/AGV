import serial


class Polulu_driver:
    def __init__(self, addr, dev_name):

        self.address = addr
        self.name = dev_name
        self.UART = serial.Serial(
            port='/dev/' + self.name,
            baudrate=9600,
            parity=serial.PARITY_NONE,
            stopbits=serial.STOPBITS_ONE,
            bytesize=serial.EIGHTBITS
        )

    def suspend(self):
        self.UART.write([chr(255), chr(self.address), chr(255)])

    def wake_up(self):
        self.UART.write([chr(170), chr(self.address), chr(3)])

    def set_speed(self, speed):
        if speed > 100:
            speed = 100
        if speed < -100:
            speed = -100

        speed_formated = ((speed * 254) / 200) + 127

        self.UART.write([chr(255), chr(self.address), chr(speed_formated)])
