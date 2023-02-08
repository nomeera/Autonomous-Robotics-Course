#!/usr/bin/python3

import rospy
from std_msgs.msg import Int32

def listener():
    # create node
    rospy.init_node("Listener")
    # subscribe count_topic
    rospy.Subscriber("count_topic", Int32, callback)
    rospy.spin() # processes incoming messages until the node is shut down.

def callback(count):   # callback function to handle msg
    rospy.loginfo("count = %d", count.data)



if __name__ == "__main__":
    listener()