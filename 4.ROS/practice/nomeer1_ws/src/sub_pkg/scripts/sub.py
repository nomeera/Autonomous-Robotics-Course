#!/usr/bin/python3

import rospy
from std_msgs.msg import String

def Listener():
    rospy.init_node("listener")
    rospy.Subscriber("tlk_topic", String, callback)
    rospy.spin()

def callback(str_msg):
    rospy.loginfo("I heard %s" % str_msg.data)



if __name__ == "__main__":
    Listener()