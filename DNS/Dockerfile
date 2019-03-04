#cree un calque ou une couche à partir de l'ubuntu 14.04.5
#indique sur quelle distribution ou image de référence
#cette nouvelle nouvelle image Docker va se baser .
FROM ubuntu:14.04.5

#qui est responsable de cette image
MAINTAINER Manuelle Ndamtang <m.ndamtang@students.ephec.be>

#s'occupe de mettre à jour le systeme et installe bind
RUN apt-get update && \
  apt-get install bind9 bind9utils bind9-doc dnsutils

#permet d'ouvrir des port de communication TCP/UDP pour communiquer
#avec le reste du monde
EXPOSE 53/udp 53/tcp

#indique quelle commande avec ses paramètres éventuels devra être exécutée
#au démarrage du container Docker
CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-f"]


