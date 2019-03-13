FROM ubuntu:14.04.5

MAINTAINER Manuelle Ndamtang <m.ndamtang@students.ephec.be>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y -q install bind9 bind9utils --no-install-recommends && \
    cat /etc/bind/named.conf.options 

WORKDIR /etc/bind

VOLUME /etc/bind

EXPOSE 53/tcp 53/udp

CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-f"]

