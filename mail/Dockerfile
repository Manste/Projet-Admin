# DOCKERFILE DU MAIL

FROM ubuntu:16.04

# Maintainer

MAINTAINER "d.bilongo@students.ephec.be"

# Installation of the dependencies

RUN apt-get update && \
        DEBIAN_FRONTEND=noninteractive apt-get -y -q install postfix postfix-mysql --no-install-recommends

# working directory

#WORKDIR /etc/postfix

#VOLUME /etc/postfix

# ajouter les fichiers necessaires

COPY /config/postconfig.cf /tmp/

RUN chmod +x /tmp/postconfig.cf

RUN /tmp/postconfig.cf

# Expose

EXPOSE 25
