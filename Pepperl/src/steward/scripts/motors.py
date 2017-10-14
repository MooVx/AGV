#! /usr/bin/env python

import rospy
from steward.msg import Motors
from motor_driver import Polulu_driver
from geometry_msgs.msg import Twist
from std_msgs.msg import Float64
from steward.msg import STMdata

lm = Polulu_driver(15, 'left_motor_driver')
rm = Polulu_driver(15, 'right_motor_driver')

def callback(data):
    global lm, rm, left_sp_pub, right_sp_pub
    # lm.wake_up()
    # rm.wake_up()
    max_speed = 460.0
    max_radial =max_speed * 2.0 * 3.14 / 60.0 
    dist = 0.36
    radius = 0.05
    omega_r = 2.0 * 3.14 * ( data.linear.x - data.angular.z / (2.0 * dist ) ) / (2.0 * 3.14 * radius)
    omega_l = 2.0 * 3.14 * ( data.linear.x + data.angular.z / (2.0 * dist ) ) / (2.0 * 3.14 * radius)
    right_sp_pub.publish(Float64(omega_r))
    left_sp_pub.publish(Float64(omega_l))


    # scaled_r = int(100.0 * omega_r/max_radial)
    # scaled_l = int(100.0 * omega_l/max_radial)
    # lm.set_speed(scaled_l)
    # rm.set_speed(scaled_r)

def left_callback(data):
    global lm
    lm.wake_up()
    lm.set_speed(int(data.data))

def right_callback(data):
    global rm
    rm.wake_up()
    rm.set_speed(int(data.data))

def stm_callback(data):
    global left_state_pub, right_state_pub, last_cb

    dt = rospy.get_time() - last_cb
    last_cb = rospy.get_time()

    speed_left = data.n_cntL
    speed_right = data.n_cntR

    if data.dirL:
        speed_left = speed_left * (-1)
    if data.dirR:
        speed_right = speed_right * (-1)


    speed_left = float(speed_left) * 2 * 3.14  / ( 2048.0 * dt)
    speed_right = float(speed_right) * 2 * 3.14  / ( 2048.0 * dt)
    
    left_state_pub.publish(Float64(speed_left))
    right_state_pub.publish(Float64(speed_right))


rospy.init_node('Motors')
last_cb = rospy.get_time()

rospy.Subscriber('/cmd_vel', Twist, callback)

left_sp_pub = rospy.Publisher("/left/setpoint", Float64, queue_size=10)
right_sp_pub = rospy.Publisher("/right/setpoint", Float64, queue_size=10)

left_state_pub = rospy.Publisher("/left/state", Float64, queue_size=10) 
right_state_pub = rospy.Publisher("/right/state", Float64, queue_size=10) 

rospy.Subscriber('/left/control_effort', Float64, left_callback)
rospy.Subscriber('/right/control_effort', Float64, right_callback)

rospy.Subscriber('STM_data', STMdata, stm_callback)

rospy.spin()
