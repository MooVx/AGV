#!/usr/bin/env python

import rospy
from steward.msg import STMdata
from steward.msg import Camera
from steward.msg import Motors

Camera_msg_temp = Camera()

def callback1(STM_msg):
    global Camera_msg_temp
    print STM_msg.speedR
    print Camera_msg_temp.dir
    Motors_msg = Motors()
    
    #Tutaj wjebac kod ktory wylicza co trzeba ;-P
    #Wyniki szampanskich obliczen zapisac do wiadomosci Motors_msg
    
    pub.publish(Motors_msg)
    
    
def callback2(Camera_msg):
    global Camera_msg_temp
    Camera_msg_temp = Camera_msg


rospy.init_node('Logic')

sub1 = rospy.Subscriber('STM_data', STMdata, callback1)
sub2 = rospy.Subscriber('Camera_data', Camera, callback2)
pub = rospy.Publisher('Motors_data', Motors)

rospy.spin()
