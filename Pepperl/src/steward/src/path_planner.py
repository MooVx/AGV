#! /usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from steward.msg import Camera
from steward.msg import STMdata
from numpy import abs

timeout = 0.3
state = 'stop'

cam_data = Camera()
last_cam_cb = 0
def cam_cb(data):
    global cam_data, last_cam_cb
    cam_data = data
    last_cam_cb = rospy.get_time()

def create_cmd_vel_from_cam(camera_data):
    k_th = 1.0
    k_x = 0.2
    vel_msg = Twist()
    if camera_data.lanes > 0:
        vel_msg.linear.x = 0.1
        if abs(camera_data.angle) < 30:
            vel_msg.angular.z = -k_th * camera_data.pos_y/100.0
    return vel_msg


def stm_callback(data):
    global state
       
    if state == 'stop' and data.start_button:
        state = 'run'
    if data.safety_button:
        state = 'stop'



rospy.init_node("path_planner")
rospy.Subscriber('STM_data', STMdata, stm_callback)
rospy.Subscriber("Camera_data", Camera, cam_cb)

cmd_vel_pub = rospy.Publisher("cmd_vel", Twist, queue_size=10)
rate = rospy.Rate(10)

while not rospy.is_shutdown():

    if state == 'run':
        if rospy.get_time() - last_cam_cb < timeout:
            cmd_vel_pub.publish(create_cmd_vel_from_cam(cam_data))
        else:
            cmd_vel_pub.publish(Twist())
    else:
        cmd_vel_pub.publish(Twist())

    rate.sleep()
