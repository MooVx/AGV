#!/usr/bin/env python
import rospy
from steward.msg import Camera
import PFcam

pub = rospy.Publisher('Camera_data', Camera, queue_size=10)

rospy.init_node('Camera_publisher')

rate = rospy.Rate(10)

cam = PFcam.Pgv100(
    address=0
)
cam.choose_color('red')
cam.choose_dir('ahead')

while not rospy.is_shutdown():
    msg = Camera()
    msg.dir = 'Camera is working'
    cam.update()
    msg.lanes = cam.lanes
    msg.any_line = cam.any_lane
    msg.angle = int(cam.angle)

    pub.publish(msg)
    rate.sleep()