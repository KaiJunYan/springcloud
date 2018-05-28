cd /opt/fit2cloud-demo
echo going to start app
nohup java -Djava.io.tmpdir=/opt/fit2cloud/tmp -jar springcloud-eureka-server-2.0.0-SNAPSHOT.jar  >> /var/log/springcloud-eureka.log 2>&1 &
echo app started!
ps aux | grep springcloud-eureka-server-2.0.0-SNAPSHOT.jar | grep -v grep
