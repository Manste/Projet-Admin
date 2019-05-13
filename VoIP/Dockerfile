FROM ubuntu:14.04

MAINTAINER Manuelle Ndamtang <m.ndamtang@students.ephec.be>

#Mise à jour du système et télécharger les outils de compilations
RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y -q install build-essential make libxml2-dev wget libncurses5-dev linux-headers-`uname -r` libsqlite3-dev libssl-dev --no-install-recommends

#Créer un répertoire
RUN mkdir /usr/src/asterisk && cd /usr/src/asterisk

COPY config.sh users.conf /tmp/

RUN chmod +x /tmp/config.sh
RUN /tmp/config.sh

#Le port SIP on UDP, IAX2, IAX, RTP, MGCP
EXPOSE 5060 4569 5036 2727

