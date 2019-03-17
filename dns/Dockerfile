FROM ubuntu:14.04.5

MAINTAINER Manuelle Ndamtang <m.ndamtang@students.ephec.be>

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y -q install bind9 bind9utils dnsutils bind9-doc --no-install-recommends && \
	cat /etc/bind/named.conf.options 

COPY hosts /etc/
COPY resolv.conf /etc/
COPY host.conf /etc/

RUN mkdir -p /etc/bind/externals && \
	mkdir -p /etc/bind/internals 

WORKDIR /etc/bind
VOLUME /etc/bind

COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/

COPY ./externals/db.203.77.51.in-addr.arpa /etc/bind/externals/ 
COPY ./internals/db.203.77.51.in-addr.arpa /etc/bind/internals/
COPY ./externals/db.w11.ephec-ti.be /etc/bind/externals/
COPY ./internals/db.w11.ephec-ti.be /etc/bind/internals/

COPY named.conf	/etc/bind/
COPY named.conf.default-zones /etc/bind/

EXPOSE 53/tcp 53/udp

CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-f"]

