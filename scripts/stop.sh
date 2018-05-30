#!/bin/bash
echo going to stop app
ps aux | grep springcloud-eureka-server-ha-2.0.0-SNAPSHOT.jar | grep -v grep | awk '{print "kill -9 " $2}' | bash
processesNum=`ps aux | grep springcloud-eureka-server-ha-2.0.0-SNAPSHOT.jar | grep -v grep | wc -l | sed 's/ //g'`
if [ "$processesNum" == "0" ];then
    echo stopped app successfully!
    exit 0
else
    echo stopped app failed!
    exit 1
fi 
