import time
import PFcam

cam = PFcam.Pgv100(
    address=0
)

# print(cam.choose_color('blue'))
cam.send_req(232)

cam.choose_color('red')
time.sleep(1)
while 1 :
    cam.update()
    print(cam.pos_y)
    print(cam.lanes)
    print(cam.angle)
    time.sleep(1)



