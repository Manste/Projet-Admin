FROM ubuntu:14.04.5

MAINTAINER Manuelle Ndamtang <m.ndamtang@students.ephec.be>

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y -q install bind9 bind9utils dnsutils bind9-doc openssl opendkim opendkim-tools  --no-install-recommends && \
	cat /etc/bind/named.conf.options 


RUN mkdir -p /etc/bind/externals && \
	mkdir -p /etc/bind/internals &&\
	mkdir -p /var/log/bind/ &&\
	touch /etc/bind/log.conf &&\
	touch /var/log/bind/security.log &&\
	touch /var/log/bind/requests.log  &&\
	touch /var/log/bind/bind.log &&\
	chown -R bind /var/log/bind &&\
	chmod u+rw /var/log/bind &&\
	mkdir -p /etc/opendkim &&\
	mkdir -p /etc/opendkim/keys &&\
	touch /etc/opendkim/TrustedHosts &&\
	touch /etc/opendkim/KeyTable &&\
	touch /etc/opendkim/SigningTable &&\
	mkdir /etc/opendkim/keys/wt11.ephec-ti.be/

WORKDIR /etc/bind
VOLUME /etc/bind

COPY host.conf /etc/
COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/
COPY log.conf /etc/bind/
COPY ./externals/db.203.77.51.in-addr.arpa /etc/bind/externals/ 
COPY ./internals/db.203.77.51.in-addr.arpa /etc/bind/internals/
COPY ./externals/db.wt11.ephec-ti.be /etc/bind/externals/
COPY ./internals/db.wt11.ephec-ti.be /etc/bind/internals/

#DKIM
COPY TrustedHosts /etc/opendkim/
COPY opendkim.conf /etc/
COPY SigningTable /etc/opendkim/

#on génère les clés
#-s indique le sélecteur, ici dans notre cas il s’agit de key1
#-d le domaine
RUN opendkim-genkey -s key -d wt11.ephec-ti.be

#Pour attribuer le bon utilisateur et groupe au fichier clé privée
#RUN chown opendkim:opendkim /etc/opendkim/keys/wt11.ephec-ti.be/key.private

#On récupère la clé publique et on ajoute ça au fichier KeyTable et au fichier de zone
RUN cat /etc/opendkim/keys/wt11.ephec-ti.be/key.txt >> /etc/opendkim/KeyTable &&\
	/etc/opendkim/keys/wt11.ephec-ti.be/key.txt >> /etc/externals/db.wt11.ephec-ti.be &&\
	/etc/opendkim/keys/wt11.ephec-ti.be/key.txt >> /etc/internals/db.wt11.ephec-ti.be

COPY named.conf	/etc/bind/
COPY named.conf.default-zones /etc/bind/

EXPOSE 53/tcp 53/udp

CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-fg"]

