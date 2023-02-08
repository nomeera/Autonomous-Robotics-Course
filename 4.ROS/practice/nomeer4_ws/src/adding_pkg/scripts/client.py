#!/usr/bin/python3

# import required libraries
import sys
import rospy
from adding_pkg.srv import adding, addingRequest, addingResponse

# Define a function that acts as the client
def add_two_int_client(x,y):
    # Wait until the service is available
    '''
    rospy.wait_for_service() 
    is used to block the execution of the client program until the service specified 
    by the service name is available. This ensures that the client does not send 
    a request to an unavailable service and fail with an error.
    '''
    rospy.wait_for_service('add_two_ints') # Name of the service
    try:
        # Create a proxy to the service
        add_two_int = rospy.ServiceProxy('add_two_ints', adding)
        '''
        rospy.ServiceProxy() [proxy is bi-directional]
        is used to create a proxy for the service. The proxy is an object that allows 
        the client to interact with the service as if it were a local object. 
        The proxy is created using the name of the service and the service type. 
        The client can use the proxy to call the service's functions and send requests 
        to the server.
        '''
        # Call the service and get the response
        resp = add_two_int(x,y)
        # Return the sum value from the response
        return resp.sum # sum object in adding.srv file
    except rospy.ServiceException as e:
        # Print an error message if the service call fails
        print("Service call failed %s" % e)

# Define a function to provide usage instructions
def usage():
    return "%s [x y]" % sys.argv[0]

if __name__ == "__main__":
    # Check if the required number of arguments are provided
    if len(sys.argv) == 3:
        # Get the values of x and y from the command line arguments
        x = int(sys.argv[1])
        y = int(sys.argv[2])
    else:
        # Print usage instructions if the required number of arguments are not provided
        print(usage())
        sys.exit(1)

    # Print the values of x and y that are to be added
    print("Requesting %s + %s" % (x,y))
    # Call the client function to get the sum of x and y
    s = add_two_int_client(x,y)
    # Print the sum of x and y
    print("%s + %s = %s" % (x,y,s))
