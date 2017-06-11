#!/usr/bin/env python

import rospy
from steward.msg import STMdata
from steward.msg import Camera
from steward.msg import Motors

Camera_msg_temp = Camera()




def battery_voltage_ok(bat_1, bat_1_and_2):
    bat_2 = bat_1_and_2 - bat_1
    min_voltage = 1#???????
    if (bat_1 < min_voltage) or (bat_2 < min_voltage):
        return False
    else:
        return True


def no_field_violation(f1, f2, f3, f4, state):
    return True



def callback1(STM_msg):
    global Camera_msg_temp
    Motors_msg = Motors()


    current_state = 0

    if(battery_voltage_ok(STM_msg.battery_12, STM_msg.battery_24) and
    no_field_violation(STM_msg.field1, STM_msg.field2, 
                       STM_msg.field3, STM_msg.field4, 
                       current_state)):
        #Tutaj wjebac kod ktory wylicza co trzeba ;-P                      
        Motors_msg.motor1_pwm = 100
        Motors_msg.motor2_pwm = 100
    else:
        #Something wrong
        Motors_msg.motor1_pwm = 0
        Motors_msg.motor2_pwm = 0



    #Tutaj wjebac kod ktory wylicza co trzeba ;-P
    #Wyniki szampanskich obliczen zapisac do wiadomosci Motors_msg
    
    #pub.publish(Motors_msg)
    
# This callback will react on Camera messege
def callback2(Camera_msg):
    global Camera_msg_temp
    Camera_msg_temp = Camera_msg
    
    #Motors_msg = Motors()
    #pub.publish(Motors_msg)


rospy.init_node('Logic')

sub1 = rospy.Subscriber('STM_data', STMdata, callback1)
sub2 = rospy.Subscriber('Camera_data', Camera, callback2)
pub = rospy.Publisher('Motors_data', Motors, queue_size=10)

rospy.spin()


