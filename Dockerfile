FROM ubuntu:latest
MAINTAINER nathan@frcv.net

# Install runit
RUN apt-get update --yes --force-yes
RUN apt-get install runit nginx openssh-server --yes --force-yes

# Launch runit calling our run script.
ADD run /etc/service/run/run
RUN chmod +x /etc/service/run/run

EXPOSE 22 80
ENTRYPOINT ["/usr/sbin/runsvdir-start"]
