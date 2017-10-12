#! /usr/bin/env python

import rospy
from motor_driver import Polulu_driver
from geometry_msgs.msg import Twist
from steward.msg import Camera
from numpy import abs

timeout = 0.3

cam_data = Camera()
last_cam_cb = 0
def cam_cb(data):
    global cam_data, last_cam_cb
    cam_data = data
    last_cam_cb = rospy.get_time()

def create_cmd_vel_from_cam(camera_data):
    vel_msg = Twist()
    if camera_data.lanes > 0:
        vel_msg.linear.x = 0.1
        if abs(camera_data.angle) < 30:
            vel_msg.angular.z = camera_data.pos_y/10.0






rospy.init_node("path_planner")

rospy.Subscriber("Camera_data", Camera, cam_cb)
cmd_vel_pub = rospy.Publisher("cmd_vel", Twist, queue_size=None)
rate = rospy.Rate(10)

while not rospy.is_shutdown():
    if rospy.get_time() - last_cam_cb < timeout:
        cmd_vel_pub.publish(create_cmd_vel_from_cam(cam_data))
    else:
        cmd_vel_pub.publish(Twist())
    rate.sleep()
