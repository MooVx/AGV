import time
import PFcam

cam = PFcam.Pgv100(
    address=0
)

print(cam.choose_color('blue'))

prev = cam.update()

for i in xrange(1, 10000):
    current = cam.update()
    if prev != current:
        print i
    prev = current

