FROM ubuntu:14.04

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y -q install postfix postfix-mysql dovecot-core --no-install-recommends && \
	touch /etc/postfix/sasl/smtpd.conf && \

COPY hosts /etc/        

WORKDIR /etc/postfix
VOLUME /etc/postfix

COPY main.cf .

WORKDIR /etc/dovecot/conf.d
VOLUME /etc/dovecot/conf.d

COPY ./dovecot/10-master.conf .
COPY ./dovecot/10-auth.conf .

EXPOSE 25 465 110 143 993 995

