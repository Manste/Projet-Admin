FROM ubuntu:14.04.5

MAINTAINER Manuelle Ndamtang <m.ndamtang@students.ephec.be>

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y -q install bind9 bind9utils --no-install-recommends && \
	cat /etc/bind/named.conf.options

COPY hosts /etc/hosts
COPY resolv.conf /etc/resolv.conf

RUN mkdir -p /etc/bind/externals
RUN mkdir -p /etc/bind/internals
COPY ./externals/db.203.77.51.in-addr.arpa /etc/bind/externals/db.203.77.51.in-addr.arpa 
COPY ./internals/db.203.77.51.in-addr.arpa /etc/bind/internals/db.203.77.51.in-addr.arpa
COPY ./externals/db.w11.ephec-ti.be /etc/bind/externals/db.w11.ephec-ti.be
COPY ./internals/db.w11.ephec-ti.be /etc/bind/internals/db.w11.ephec-ti.be
COPY named.conf	/etc/bind/named.conf
COPY named.conf.local /etc/bind/named.conf.local
COPY named.conf.options /etc/bind/named.conf.options
COPY named.conf.default-zones /etc/bind/named.conf.default-zones

EXPOSE 53/tcp 53/udp

CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-f"]
CMD service named stop && service named start
