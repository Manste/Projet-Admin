#cd /var/www/html && wget https://github.com/roundcube/roundcubemail/releases/download/1.3.6/roundcubemail-1.3.6-complete.tar.gz

#tar xvf roundcubemail-1.3.6-complete.tar.gz

#sudo mv roundcubemail-1.3.6 /var/www/html/roundcube

#sudo chmod 775 /var/www/html/roundcube/temp/ /var/www/html/roundcube/logs/

#Pour que RoundCube fonctionne sans problème, on active le module Apache Mod Rewrite
#sudo a2enmod rewrite

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

