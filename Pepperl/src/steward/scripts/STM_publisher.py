#!/usr/bin/env python
import rospy
from steward.msg import STMdata
import STM

pub = rospy.Publisher('STM_data', STMdata, queue_size=10)

rospy.init_node('STM_publisher')

rate = rospy.Rate(10)

stm = STM.STM()

while not rospy.is_shutdown():
    msg = STMdata()
    stm.read()


    msg.dirL = stm.dirL
    msg.dirR = stm.dirR

    msg.speedR = stm.speedR
    msg.speedL = stm.speedL

    msg.n_cntL = stm.n_cntL
    msg.n_cntR = stm.n_cntR

    msg.field1 = stm.field1
    msg.field2 = stm.field2
    msg.field3 = stm.field3
    msg.field4 = stm.field4

    msg.safety_button = stm.button_stop

    msg.battery_12 = stm.battery_12
    msg.battery_24 = stm.battery_24

    pub.publish(msg)
    rate.sleep()
