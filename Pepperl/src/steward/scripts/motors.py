#! /usr/bin/env python

import rospy
from steward.msg import Motors
from motor_driver import Polulu_driver
from geometry_msgs.msg import Twist
from std_msgs.msg import Float64, Bool
from steward.msg import STMdata

lm = Polulu_driver(15, 'left_motor_driver')
rm = Polulu_driver(15, 'right_motor_driver')

timeout = 0.3
last_safety_ok = 0.0

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
    global lm, last_safety_ok, timeout, stop_l_pub
    lm.wake_up()
    last_safety_ok = rospy.get_time()
    if rospy.get_time() - last_safety_ok < timeout:
        stop_l_pub.publish(Bool(True))     
        lm.set_speed(int(data.data))
    else:
        lm.set_speed(0)
        stop_l_pub.publish(Bool(False))

def right_callback(data):
    global rm, last_safety_ok, timeout, stop_r_pub
    rm.wake_up()

    last_safety_ok = rospy.get_time()
    if rospy.get_time() - last_safety_ok < timeout:
        stop_r_pub.publish(Bool(True)) 
        rm.set_speed(int(data.data))
    else:
        rm.set_speed(0)
        stop_r_pub.publish(Bool(False))

def stm_callback(data):
    global left_state_pub, right_state_pub, last_cb, last_safety_ok

    dt = rospy.get_time() - last_cb
    last_cb = rospy.get_time()

    if data.safety_button:
        last_safety_ok = rospy.get_time()

    #not mistake!
    speed_left = data.n_cntR
    speed_right = data.n_cntL

    if data.dirR:
        speed_left = speed_left * (-1)
    if data.dirL:
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

stop_r_pub = rospy.Publisher("/right/pid_enable", Bool, queue_size=10)
stop_l_pub = rospy.Publisher("/left/pid_enable", Bool, queue_size=10)

rospy.Subscriber('/left/control_effort', Float64, left_callback)
rospy.Subscriber('/right/control_effort', Float64, right_callback)

rospy.Subscriber('STM_data', STMdata, stm_callback)

rospy.spin()
