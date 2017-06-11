import rospy
from steward.msg import Motors
from motor_driver import Polulu_driver



lm = Polulu_driver(15, 'left_motor_driver')



def callback(data):
    global lm
    lm.set_speed(data.motor1_pwm)




rospy.init_node('Motors')

rospy.Subscriber('Motors_data', Motors, callback)




lm.wake_up()
rospy.spin()