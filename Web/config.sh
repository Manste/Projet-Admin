#./letsencrypt-auto certonly --agree-tos --email admin@wt11.ephec-ti.be --webroot --webroot-path /var/www/wt11.ephec-ti.be -d www.wt11.ephec-ti.be
#openssl genrsa -des3 -out /etc/nginx/ssl/wt11.ephec-ti.be.key 2048

#openssl req -new -new -key -subj "/C=BE/ST=Ottignies/L=Louvain-la-Neuve/O=WoodyToys/CN=www.wt11.ephec-ti.be" \
 #   -key "/etc/nginx/ssl/wt11.ephec-ti.be.key"  -out "/etc/nginx/ssl/wt11.ephec-ti.be.crt"
openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=BE/ST=Ottignies/L=Louvain-la-Neuve/O=WoodyToys/CN=www.wt11.ephec-ti.be" \
    -keyout "/etc/ssl/private/wt11.ephec-ti.be.key"  -out "/etc/ssl/certs/wt11.ephec-ti.be.crt"

openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
#echo QUIT | openssl s_client -connect www.wt11.ephec-ti.be:443 -status 2> /dev/null | grep -A 17 'OCSP response:' | grep -B 17 'Next Update'

#openssl rsa -nout -text -in /etc/nginx/ssl/wt11.ephec-ti.be.crt
