#Image de ubuntu

FROM ubuntu:14.04.5

# Dockerfile Maintainer

MAINTAINER Darryl Bilongo "d.bilongo@students.ephec.be"

RUN apt-get update && apt-get install -y --no-install-recommends -y  nginx  

	# && apt-get -y install php7.0-fpm

#copie des pages statiques du site

RUN mkdir -p /var/www/b2b.wt11.ephec-ti.be/

RUN mkdir -p /var/www/wt11.ephec-ti.be/

RUN mkdir -p /var/www/intranet.wt11.ephec-ti.be/
 


COPY index.html /var/www/b2b.wt11.ephec-ti.be/html/

COPY index.html /var/www/wt11.ephec-ti.be/html/

COPY index.html /var/www/intranet.wt11.ephec-ti.be/html/


# Configurations des sites 

COPY default.conf /etc/nginx/sites-available/

COPY wt11.ephec-ti.be /etc/nginx/sites-available/

COPY b2b.wt11.ephec-ti.be /etc/nginx/sites-available/

COPY intranet.wt11.ephec-ti.be /etc/nginx/sites-available/

# Enable both sites

RUN sudo ln -s /etc/nginx/sites-available/wt11.ephec-ti.be /etc/nginx/sites-enabled/

RUN sudo ln -s /etc/nginx/sites-available/b2b.wt11.ephec-ti.be /etc/nginx/sites-enabled/
 
RUN sudo ln -s /etc/nginx/sites-available/intranet.wt11.ephec-ti.be /etc/nginx/sites-enabled/

# Exposer les ports necessaires pour HTTP

EXPOSE 80 443 

# Lancer nginx

# CMD nginx -t

CMD nginx -g "daemon off;"
