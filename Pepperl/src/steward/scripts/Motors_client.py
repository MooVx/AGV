#! /usr/bin/env python

import rospy
import time
import actionlib
from steward.msg import MotorsAction, MotorsGoal, MotorsResult, MotorsFeedback
from steward.msg import Motors


# This function will execute when feedback messege will appear
def feedback_cb(feedback):
    print('[Feedback] actual_velocity: %d' % (feedback.actual_velocity))


# This function will execute when Motors messege will appear
def callback(Motors_msg):
    # Action will set a new goal when the Motors messege will appear.
    # How to use Motors_client from different node???
    goal = MotorsGoal()
    goal.goal_velocity = 15
    client.send_goal(goal, feedback_cb=feedback_cb)


rospy.init_node('Motors_client')
client = actionlib.SimpleActionClient('Motors_data', MotorsAction)
client.wait_for_server()
sub = rospy.Subscriber('Motors_data', Motors, callback)

# These three following lines describe how to set a new goal in action_server
goal = MotorsGoal()
goal.goal_velocity = 5
client.send_goal(goal, feedback_cb=feedback_cb)

time.sleep(4.0)

# You can use a following function to stop an action serwer.
# client.cancel_goal()

# You can set a new geal whenever you want 
goal.goal_velocity = 9
client.send_goal(goal, feedback_cb=feedback_cb)

# When a action will reach a goal, the results will be printed on screen
client.wait_for_result()
print('[Result] final_velocity: %d' % (client.get_result().final_velocity))
print('[Result] State: %d' % (client.get_state()))
print('[Result] Status: %s' % (client.get_goal_status_text()))
