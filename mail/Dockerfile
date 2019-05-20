# DOCKERFILE DU MAIL

FROM ubuntu:16.04

# Maintainer

MAINTAINER "d.bilongo@students.ephec.be"

# User - aliaces

RUN chmod +wx /etc/host* 

RUN echo "mail.wt11.ephec-ti.be" > /etc/hostname

RUN echo "127.0.0.1 localhost.localdomain localhost" > /etc/hosts

RUN echo "51.77.203.6 mail.wt11.ephec-ti.be" >> /etc/hosts


# Installation of the dependencies

RUN apt-get update && \
        DEBIAN_FRONTEND=noninteractive apt-get -y -q install postfix postfix-mysql mailutils --no-install-recommends

# ajouter les fichiers necessaires

COPY /config/postconfig.cf /tmp/

RUN chmod +x /tmp/postconfig.cf

RUN /tmp/postconfig.cf

# Expose

EXPOSE 25
