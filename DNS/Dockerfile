#cree un calque ou une couche à partir de l'ubuntu 14.04.5
FROM ubuntu:14.04.5

#s'occupe de mettre à jour le systeme et installe bind
RUN apt-get update
RUN apt-get install bind9 bind9utils bind9-doc dnsutils

EXPOSE 53/udp 53/tcp
