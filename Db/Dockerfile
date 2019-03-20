# Image de Ubuntu

FROM ubuntu: 16.04

# Maintainer

MAINTAINER "d.bilongo@students.ephec.be"


# Installation et mise a jour

RUN apt-get install -y \ 

	mysql-server

RUN apt-get update

# Copie des fichiers bash && config

COPY entrypoint.sh /sbin/entrypoint.sh

RUN chmod +x /sbin/entrypoint.sh

COPY db_schema.sql /tmp/

# Entrypoint

ENTRYPOINT ["/sbin/entrypoint.sh"]

# Expose 

EXPOSE 3306

# Lancement

CMD ["/usr/bin/mysqld_safe"]
