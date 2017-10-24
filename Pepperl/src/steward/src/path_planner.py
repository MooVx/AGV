#! /usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from steward.msg import Camera
from steward.msg import STMdata
from numpy import abs

timeout = 0.3
state = 'stop'

cam_data = Camera()
stm_data = STMdata()
last_cam_cb = 0


def cam_cb(data):
    global cam_data, last_cam_cb
    cam_data = data
    last_cam_cb = rospy.get_time()

def is_area_clear():
    global stm_data
    return not stm_data.field1

def create_cmd_vel_from_cam(camera_data):
    k_th = 1.0
    k_x = 0.2
    vel_msg = Twist()
    if camera_data.lanes > 0:
        if (camera_data.angle > 0 and camera_data.pos_y < -10.0 ) or (camera_data.angle < 0 and camera_data.pos_y > 10.0):
            vel_msg.linear.x = 0.0
        else:
            vel_msg.linear.x = 0.2

        if abs(camera_data.angle) < 30 or vel_msg.linear.x == 0.0:
            vel_msg.angular.z = -k_th * camera_data.pos_y/300.0
    return vel_msg


def stm_callback(data):
    global state, stm_data

    if state == 'stop' and data.start_button:
        state = 'run'
    if data.safety_button:
        state = 'stop'
    stm_data = data


rospy.init_node("path_planner")
# rospy.Subscriber('STM_data', STMdata, stm_callback)
rospy.Subscriber("Camera_data", Camera, cam_cb)

cmd_vel_pub = rospy.Publisher("cmd_vel", Twist, queue_size=10)
rate = rospy.Rate(10)


state = 'run'

while not rospy.is_shutdown():

    if state == 'run':
        if rospy.get_time() - last_cam_cb < timeout and is_area_clear():
            cmd_vel_pub.publish(create_cmd_vel_from_cam(cam_data))
        else:
            cmd_vel_pub.publish(Twist())
    else:
        cmd_vel_pub.publish(Twist())

    rate.sleep()
