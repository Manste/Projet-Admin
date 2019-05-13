openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=BE/ST=Ottignies/L=Louvain-la-Neuve/O=WoodyToys/CN=www.wt11.ephec-ti.be" \
    -keyout "/etc/ssl/private/dovecot.pem"  -out "/etc/ssl/certs/dovecot.pem"

#find /etc/ssl -name dovecot.* -exec rm {} \;
#dpkg-reconfigure dovecot-common

mkdir -p /var/mail/vhosts/wt11.ephec-ti.be
groupadd -g 5000 vmail 
useradd -g vmail -u 5000 vmail -d /var/mail
chown -R vmail:vmail /var/mail

chown -R vmail:dovecot /etc/dovecot
chmod -R o-rwx /etc/dovecot 

service mysql start
#service postfix restart
/etc/init.d/mysql start
