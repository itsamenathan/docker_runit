FROM ubuntu:latest
MAINTAINER nathan@frcv.net

# Install runit
RUN apt-get update --yes --force-yes
RUN apt-get install runit --yes --force-yes

# Launch runit calling our run script.
ADD run /etc/service/run/run
RUN chmod +x /etc/service/run/run

ENTRYPOINT ["/usr/sbin/runsvdir-start"]
