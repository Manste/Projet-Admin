cd /usr/src/asterisk

wget http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-10.7.0.tar.gz

tar -xzvf asterisk-10.7.0.tar.gz

cd asterisk-10.7.0
./configure

make
#permet d'assure que le serveur soit connecté à internet
make install

make samples
make config

/etc/init.d/asterisk start

echo "language=fr" >> /etc/asterisk/sip.conf
#recharger asterisk en dehors de sa line de commande
asterisk -rx 'reload now'

cp /tmp/users.conf /etc/asterisk/users.conf
asterisk -rx 'reload now'

echo "[work]" >> /etc/asterisk/extensions.conf
echo "exten => _6XXX,1,Dial(SIP/${EXTEN},20)" >> /etc/asterisk/extensions.conf
echo "exten => _6XXX,2,Hangup()" >> /etc/asterisk/extensions.conf
asterisk -rx 'reload now'

