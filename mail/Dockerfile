FROM ubuntu:14.04

MAINTAINER Manuelle Ndamtang <m.ndamtang@students.ephec.be>

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y -q install postfix mailutils postfix-mysql --no-install-recommends

WORKDIR /etc/postfix
VOLUME /etc/postfix

COPY /postfix/main.cf .
COPY /postfix/master.cf .
 
EXPOSE 25 465
