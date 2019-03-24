# DOCKERFILE DU MAIL

FROM ubuntu:16.04

# Maintainer

MAINTAINER "d.bilongo@students.ephec.be"

# Installation of the dependencies

RUN apt-get update -y && apt-get install -y postfix postfix-mysql #&& apt-get install -y mysql-server

# ajouter les fichiers necessaires

COPY setup.sh /tmp/

RUN chmod +x /tmp/setup.sh

RUN /tmp/setup.sh

# Expose

EXPOSE 25

# OK

CMD ["service postfix restart"]
