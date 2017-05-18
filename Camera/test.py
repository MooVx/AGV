import time
import PFcam

cam = PFcam.Pgv100(
    address=0
)


print(cam.choose_color('red'))
time.sleep(1)
print(cam.choose_dir('left'))
time.sleep(1)
print(cam.choose_dir('right'))
time.sleep(1)
print(cam.choose_dir('ahead'))
time.sleep(1)



