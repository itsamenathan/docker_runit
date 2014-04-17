docker_runit
============

The idea here is to show how to use runit to launch a script that configures other abolitions to run     
* Install runit, openssh-server, nginx
* Copy out run file into /etc/service/run 
* Launch runit
* runit then runs /etc/service/run/run which configures both openssh and nginx
