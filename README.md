# docker_runit

The idea here is to show how to use runit to launch a script that configures other abolitions to run     
* Install runit, openssh-server, nginx
* Copy out run file into /etc/service/run 
* Launch runit
* runit then runs /etc/service/run/run which configures both openssh and nginx

## resources
* [Main runit page](http://smarden.org/runit/) - Main page all about runit.
* [Booting with runit](http://ralsina.me/stories/36.html) - kind of outdated but explains how everything works together.
* [sv manual](http://smarden.org/runit/sv.8.html) - Learn how to control everything.
