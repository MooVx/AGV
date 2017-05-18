import time
import PFcam

cam = PFcam.Pgv100(
    address=0
)

while 1:
    cam.update()
    print(cam.raw)
    print(cam.angle)
    time.sleep(1)


