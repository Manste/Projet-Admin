FROM ubuntu:14.04

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y -q install postfix dovecot-core postfix-mysql procmail sasl2-bin mail-stack-delivery --no-install-recommends && \
	adduser postfix sasl && \
	touch /etc/postfix/sasl/smtpd.conf && \
        mkdir -p /etc/postfix/ssl && \
	echo 'pwcheck_method: saslauthd' >> /etc/postfix/sasl/smtpd.conf && \
	echo 'mech_list: plain login' >> /etc/postfix/sasl/smtpd.conf

COPY hosts /etc/        

WORKDIR /etc/postfix
VOLUME /etc/postfix

COPY main.cf .

WORKDIR /etc/dovecot/conf.d
VOLUME /etc/dovecot/conf.d

EXPOSE 25
