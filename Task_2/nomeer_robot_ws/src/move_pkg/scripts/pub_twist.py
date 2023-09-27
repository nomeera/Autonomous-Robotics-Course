#!/usr/bin/python3

'''
create node to move turtle1 robot
publish Twist msg via /turtle1/cmd_vel
'''

import rospy
from geometry_msgs.msg import Twist


def pub_twist():
    # create publisher  node
    rospy.init_node("pub_twist")

    # create publisher object & topic
    pub = rospy.Publisher("/turtle1/cmd_vel", Twist, queue_size=1) 
 
    rate = rospy.Rate(1) # publish twish with 1 hz rate

    # define twist msg
    twist = Twist() 
    twist.linear.x = 1
    twist.angular.z = 1 # robot will rotate in circle

    # publish msg
    while not rospy.is_shutdown():
        rospy.loginfo("\n")
        rospy.loginfo(twist)
        pub.publish(twist)
        rate.sleep()  # ensure that node publish with 1 hz


if __name__ == "__main__":
    try:
        pub_twist()
    except rospy.ROSInternalException:
        pass
