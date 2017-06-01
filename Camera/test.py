import time
import PFcam

cam = PFcam.Pgv100(
    address=0
)
cam.choose_dir('ahead')
cam.choose_color('red')

while 1:
    cam.update()

    cam.print_all()
    time.sleep(1)


