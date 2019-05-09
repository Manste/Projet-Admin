FROM ubuntu:14.04

RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password password mdp'"]

RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password mdp'" ]

RUN apt-get update &&\
	DEBIAN_FRONTEND=noninteractive apt-get -y -q install mysql-server --no-install-recommends

# Copie des fichiers bash && config & Copy of the schema of the database

COPY initDb.sh entrypoint.sh /tmp/
COPY db_schema.sql /tmp/


RUN chmod +x /tmp/initDb.sh && chmod +x /tmp/entrypoint.sh

RUN /tmp/initDb.sh

# Entrypoint

ENTRYPOINT "/tmp/entrypoint.sh"

RUN 
