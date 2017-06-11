#! /usr/bin/env python

import rospy
import time

import actionlib
from steward.msg import MotorsAction, MotorsGoal, MotorsResult, MotorsFeedback

velocity_temp = 0


# This function will execute when action client will call this server
def do_Motors(goal):
    global velocity_temp
    velocity_temp = 0

    # This function control the goal value and it can stop the server
    if goal.goal_velocity > 20:
        print "Za duzo"
        print (goal.goal_velocity - velocity_temp) < 2
        result = MotorsResult()
        result.final_velocity = -10
        server.set_aborted(result, "It's not possible to reach this velocity!")
        return

    # This loop is a simple regulator and it work as long as the goal is not reached
    while (goal.goal_velocity - int(velocity_temp)) > 2:

        # When you stop server by using "cancel_goal" , this "if" will react 
        if server.is_preempt_requested():
            result = MotorsResult()
            result.final_velocity = velocity_temp
            server.set_preempted(result, "Motors preempted")
            return

        # This is exactly what a regulator do
        velocity_temp += 1

        # After one cycle feedback is send to action client
        feedback = MotorsFeedback()
        feedback.actual_velocity = velocity_temp
        server.publish_feedback(feedback)
        time.sleep(1)

    # If regulation will succed, an action will receive this info
    result = MotorsResult()
    result.final_velocity = velocity_temp
    server.set_succeeded(result, "Velocity reached")


rospy.init_node('Motors_server')
server = actionlib.SimpleActionServer('Motors_data', MotorsAction, do_Motors, False)
server.start()
rospy.spin()
