#! /usr/bin/env python

import rospy

import actionlib
from steward.msg import MotorsAction, MotorsGoal, MotorsResult, MotorsFeedback

velocity_temp = 0;

def do_Motors(goal):
    global velocity_temp

    if goal.goal_velocity > 10:
        result = MotorsResult()
        result.final_velocity = -1
        server.set_aborted(result,"It's not possible to reach this velocity!")
        return
    
    
    while abs(velocity_temp - goal.goal_velocity)<2:
        
        if server.is_preempt_requested():
            result = MotorsResult()
            result.final_velocity = velocity_temp
            server.set_preempted(result, "Motors preempted")
            return
        
        velocity_temp += 1
        feedback = MotorsFeedback()
        feedback.actual_velocity = velocity_temp
        server.publish_feedback(feedback)
        
    result = MotorsResult()
    result.final_velocity = velocity_temp
    server.set_succeeded(result, "Velocity reached")
    

rospy.init_node('Motors_server')
server = actionlib.SimpleActionServer('Motors_data',MotorsAction, do_Motors, False)
server.start()
rospy.spin
        
