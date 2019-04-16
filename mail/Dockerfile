FROM ubuntu:14.04

MAINTAINER Manuelle Ndamtang <m.ndamtang@students.ephec.be>

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y -q install postfix postfix-mysql dovecot-mysql sasl2-bin mailutils mail-stack-delivery binutils opendkim clamav opendkim-tools opendmarc spamassassin spamc --no-install-recommends 

ADD imap-2006b.tar.Z /imap-2006b.tar.Z

RUN tar -xzvf imap-2006b.tar.Z 	

COPY qc?mailtools.anomy.net%2Fdist%2Fanomy-sanitizer-1.76.tar.gz /etc/postfix

RUN tar -xzvf /etc/postfix/qc?mailtools.anomy.net%2Fdist%2Fanomy-sanitizer-1.76.tar.gz 

#ADD virtual /etc/postfix/virtual

#RUN postmap /etc/postfix/virtual

WORKDIR /etc/postfix
VOLUME /etc/postfix

COPY ./postfix/main.cf .
COPY ./postfix/master.cf .    

COPY ./dovecot/dovecot.conf /etc/dovecot/dovecot.conf

WORKDIR /usr/share/ssl/certs
VOLUME /usr/share/ssl/certs

EXPOSE 25 143 465 993 110 995 783

RUN adduser spamd --disabled-login
COPY ./spamassassin/local.cf /etc/spamassassin/
COPY ./spamassassin/spamassassin /etc/default/spamassassin

RUN mkdir -p /etc/opendkim &&\
        mkdir -p /etc/opendkim/keys &&\
        touch /etc/opendkim/TrustedHosts &&\
        touch /etc/opendkim/KeyTable &&\
        touch /etc/opendkim/SigningTable &&\
        mkdir /etc/opendkim/keys/wt11.ephec-ti.be/ &&\
        touch /etc/opendkim/keys/wt11.ephec-ti.be/key.txt &&\
        touch /etc/opendkim/keys/wt11.ephec-ti.be/key.private

#DKIM
COPY /opendkim/TrustedHosts /etc/opendkim/
COPY /opendkim/opendkim.conf /etc/
COPY /opendkim/SigningTable /etc/opendkim/

#on génère les clés
#-s indique le sélecteur, ici dans notre cas il s’agit de key1
#-d le domaine
RUN opendkim-genkey -s key -d wt11.ephec-ti.be

COPY /opendkim/key.private /etc/opendkim/keys/wt11.ephec-ti.be/
COPY /opendkim/key.txt /etc/opendkim/keys/wt11.ephec-ti.be/

#Pour attribuer le bon utilisateur et groupe au fichier clé privée
RUN chown opendkim:opendkim /etc/opendkim/keys/wt11.ephec-ti.be/key.private

