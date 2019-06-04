#Image de ubuntu

FROM ubuntu

# Dockerfile Maintainer

MAINTAINER Darryl Bilongo "d.bilongo@students.ephec.be"

RUN apt-get update && apt-get install vim wget libnss3-tools -y --no-install-recommends -y  nginx software-properties-common
RUN add-apt-repository universe && add-apt-repository ppa:certbot/certbot  

#RUN apt-get update &&  apt install certbot 

RUN DEBIAN_FRONTEND=noninteractive apt-get -y -q install git certbot python-certbot-nginx  --no-install-recommends

#copie des pages statiques du site

RUN mkdir -p /var/www/b2b.wt11.ephec-ti.be

RUN mkdir -p /var/www/wt11.ephec-ti.be

RUN mkdir -p /var/www/intranet.wt11.ephec-ti.be


COPY index.html /var/www/b2b.wt11.ephec-ti.be/html/

COPY index.html /var/www/wt11.ephec-ti.be/html/

COPY index.html /var/www/intranet.wt11.ephec-ti.be/html/


WORKDIR  /usr/local
VOLUME  /usr/local

# Configurations des sites 

COPY default.conf /etc/nginx/sites-available/

COPY wt11.ephec-ti.be /etc/nginx/sites-available/

COPY b2b.wt11.ephec-ti.be /etc/nginx/sites-available/

COPY intranet.wt11.ephec-ti.be /etc/nginx/sites-available/

# Enable both sites

RUN ln -s /etc/nginx/sites-available/wt11.ephec-ti.be /etc/nginx/sites-enabled/

RUN ln -s /etc/nginx/sites-available/b2b.wt11.ephec-ti.be /etc/nginx/sites-enabled/
 
RUN ln -s /etc/nginx/sites-available/intranet.wt11.ephec-ti.be /etc/nginx/sites-enabled/

# Exposer les ports necessaires pour HTTP

EXPOSE 80 443 

#RUN mkdir -p /etc/ssl/private &&\
#	 mkdir -p /etc/ssl/certs &&\
#	mkdir -p /mkcert-v1.1.2-linux-amd64

#ADD config.sh /tmp/
#RUN chmod +x /tmp/config.sh
#RUN /tmp/config.sh

#RUN wget -O - https://www.digicert.com/CACerts/DigiCertHighAssuranceEVRootCA.crt | openssl x509 -inform DER -outform PEM | tee -a /etc/ssl/private/ca-certs.pem> /dev/null
#ADD self-signed.conf /etc/nginx/snippets/
#ADD ssl-params.conf /etc/nginx/snippets/

# Lancer nginx

# CMD nginx -t

CMD nginx -g "daemon off;"
