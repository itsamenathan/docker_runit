FROM ubuntu:12.04
MAINTAINER nathan@frcv.net

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list \
    && apt-get --quiet --yes update \
    && apt-get --quiet --yes install runit nginx openssh-server \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists

ADD service /opt/service
RUN ln -s /opt/service/pre-start /etc/service/

EXPOSE 22 80
ENTRYPOINT ["/usr/sbin/runsvdir-start"]
