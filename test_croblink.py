
#
# Authors: Nuno Lau and Luis Seabra Lopes
# October-November 2013
#


from croblink import *

rob=CRobLink("AA",3,"localhost")
if rob.status!=0:
    print "Connection refused or error"
    quit()

while 1:
     rob.readSensors()
     if rob.measures.irSensor[0]> 3.0\
        or rob.measures.irSensor[1]> 3.0\
        or rob.measures.irSensor[2]> 3.0\
        or rob.measures.irSensor[3]> 3.0:
         rob.driveMotors(0.1,-0.1)
     else:
         rob.driveMotors(0.1,0.1)

