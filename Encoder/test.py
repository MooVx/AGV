import time
import STM

stm = STM.STM()

while 1:
    stm.read()
    stm.print_all()
    time.sleep(1)


