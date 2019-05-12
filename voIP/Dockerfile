FROM ubuntu

MAINTAINER Darryl Bilongo	

# installation de asterisk

RUN apt-get update

RUN apt-get -y install asterisk

# RUN apt-get install build-essential wget libssl-dev libncurses5-dev libnewt-dev  libxml2-dev libsqlite3-dev uuid-dev libiksemel-utils libiksemel-dev


VOLUME /etc/asterisk

# Configuration files

COPY sip.conf /etc/asterisk/

COPY extensions.conf /etc/asterisk/

COPY users.conf /etc/asterisk/

COPY voicemail.conf /etc/asterisk/

COPY rtp.conf /etc/asterisk/

# lancer asterisk

ENTRYPOINT [ "/usr/sbin/asterisk", "-f" ]
