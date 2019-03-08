#Image de ubuntu

FROM ubuntu:16.04

# Dockerfile Maintainer

MAINTAINER Darryl Bilongo "d.bilongo@students.ephec.be"

RUN apt-get update && apt-get install --no-install-recommends nginx

	echo "daemin off;" >> /etc/nginx/nginx.conf

#copie des pages du site

COPY index.html /usr/share/nginx/html

# Exposer les ports necessaires pour HTTP

EXPOSE 80 443 

# Lancer nginx

CMD ["/usr/sbin/nginx"]
