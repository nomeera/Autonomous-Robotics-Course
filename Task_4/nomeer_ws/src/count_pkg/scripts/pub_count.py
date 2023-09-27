#!/usr/bin/python3

'''
count from 0 until user input ctrl+c
we need to publish count msg
'''

import rospy
from std_msgs.msg import Int32


def pub_count():
    # create publisher  node
    rospy.init_node("pub_count")

    # create publisher object & topic
    pub = rospy.Publisher("count_topic", Int32, queue_size=1) 
 
    rate = rospy.Rate(1) # publish count with 1 hz rate

    # define count msg
    count = 0

    # publish msg
    while not rospy.is_shutdown():
        rospy.loginfo(count)
        pub.publish(count)
        rate.sleep()  # ensure that node publish with 1 hz
        count +=1

if __name__ == "__main__":
    try:
        pub_count()
    except rospy.ROSInternalException:
        pass
