#!/usr/bin/python3

import sys
import rospy
from n_words_pkg.srv import count_words

# Define a function that acts as the client
def pub_words(words):
    # Wait until the service is available
    rospy.wait_for_service("countWords")  # Name of the service

    try:
        # Create a proxy to the service
        get_words = rospy.ServiceProxy("countWords", count_words)

        # Call the service and get the response
        resp = get_words(words)
        # return string from te response
        return resp.count
    except rospy.ServiceException as e:
        print("Service Call failed %s", e)


def usage():
    return sys.argv[0]


if __name__ == "__main__":
    words = sys.argv[0]
    print("The sentence you entered: %s", words)
    count = pub_words(words)
    print("Number of Words: %d")
    