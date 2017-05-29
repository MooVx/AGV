import time
import STM

stm = STM.STM()

while 1:
    stm.read()
    print(stm.raw)
    time.sleep(1)


