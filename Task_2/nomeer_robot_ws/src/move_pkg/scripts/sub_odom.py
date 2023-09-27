#!/usr/bin/python3

'''
we need to prinet the odometry of the robot
we will subscribe /odom topic
'''
import rospy
from nav_msgs.msg import Odometry

def callback(odom):
    rospy.loginfo(odom) # print whole odometry data on screen

def sub_odom():
    # creat subscribe node
    rospy.init_node("sub_odom")

    # subscribe /odom topic 
    rospy.Subscriber("/odom", Odometry,callback)    
    rospy.spin()




if __name__ == "__main__":
    sub_odom()
