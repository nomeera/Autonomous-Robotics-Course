#!/usr/bin/python3

import rospy
from n_words_pkg.srv import count_words , count_wordsRequest, count_wordsResponse

# Define a function that acts as the client
def pub_words(words):
    # Wait until the service is available
    rospy.wait_for_service("pub_words")  # Name of the service

    try:
        # Create a proxy to the service
        get_words = rospy.ServiceProxy("count_wordsx", count_words)

        # Call the service and get the response
        resp = get_words(words)
        # return string from te response
        return resp.count
    except rospy.ServiceException as e:
        print("Service Call failed %s", e)


if __name__ == "__main__":
    print("Count Number of words in string")
    