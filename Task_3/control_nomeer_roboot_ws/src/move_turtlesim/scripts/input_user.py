#!/usr/bin/python3

'''
create node to move turtle1 robot
publish Twist msg via /turtle1/cmd_vel
Users can input a linear (x) velocity in the range [2,6]
Users can input an angular (z) velocity [1,3]ew
'''

import rospy
from geometry_msgs.msg import Twist


def pub_twist():
    # create publisher  node
    rospy.init_node("input_user")

    # create publisher object & topic
    pub = rospy.Publisher("/turtle1/cmd_vel", Twist, queue_size=1) 
 
    rate = rospy.Rate(1) # publish twish with 1 hz rate

    # ask user to input linear.x & angular.z
    while not rospy.is_shutdown():
        # define twist msg
        try:
            twist = Twist() 
            twist.linear.x = float(input("Enter linear.x value [2-6]: "))
            twist.angular.z = float(input("Enter angular.z value [2-6]: "))

            # ensure that linear.x & angular.z = [2-6]
            if 2 <= twist.linear.x <= 6 and 2 <= twist.angular.z <= 6:
                break
            else:
                print("\nPLEASE ENTER VALUE FROM 2 TO 6\n")
        except ValueError:  # error handling
            print("\ninvalid input, try again")
            print("PLEASE ENTER VALUE FROM 2 TO 6\n")


    # publish msg
    pub.publish(twist)


if __name__ == "__main__":
    try:
        pub_twist()
    except rospy.ROSInternalException:
        pass
