FROM ubuntu

MAINTAINER Darryl Bilongo	

# installation de asterisk

RUN apt update

RUN apt-get -y install asterisk vim

RUN apt-get install build-essential wget libssl-dev libncurses5-dev libnewt-dev  libxml2-dev libsqlite3-dev uuid-dev libiksemel-utils libiksemel-dev

# set up config

VOLUME /etc/asterisk

# lancer asterisk

ENTRYPOINT [ "/usr/sbin/asterisk", "-f" ]
