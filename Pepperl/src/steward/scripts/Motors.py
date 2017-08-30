#! /usr/bin/env python

import rospy
from steward.msg import Motors
from motor_driver import Polulu_driver
from geometry_msgs.msg import Twist
lm = Polulu_driver(15, 'left_motor_driver')
rm = Polulu_driver(15, 'right_motor_driver')

def callback(data):
    global lm, rm
    lm.wake_up()
    rm.wake_up()
    max_speed = 460.0
    max_radial =max_speed * 2.0 * 3.14 / 60.0 
    dist = 0.36
    radius = 0.05
    omega_r = ( data.linear.x + data.angular.z / (2 * dist ) ) / (2 * 3.14 * radius)
    omega_l = ( data.linear.x - data.angular.z / (2 * dist ) ) / (2 * 3.14 * radius)

    scaled_r = int(100.0 * omega_r/max_radial)
    scaled_l = int(100.0 * omega_r/max_radial)
    rospy.loginfo("writing to drivers %d %d", scaled_l, scaled_r)
    lm.set_speed(scaled_l)
    rm.set_speed(scaled_r)


rospy.init_node('Motors')

rospy.Subscriber('/cmd_vel', Twist, callback)

lm.wake_up()
rospy.spin()
