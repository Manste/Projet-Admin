
$TTL 604800 
$ORIGIN wt11.ephec-ti.be.
@		IN 	SOA 	ns.wt11.ephec-ti.be. admin.wt11.ephec-ti.be. (
					1	   ;serial
					3600       ; refresh
		                             6     ; retry 
                                	1209600    ; expire 
                                	3600     ; minimum 
                                )

wt11.ephec-ti.be.			IN	NS		ns.wt11.ephec-ti.be.
@					IN	MX		10 mail

ns					IN	A		51.77.203.19
mail					IN	A		51.77.203.6
www					IN	A		51.77.203.19
b2b					IN	CNAME		www
intranet				IN	CNAME		www

;SPF
@					IN	TXT		"v=spf1 a mx ipv4=51.77.203.6 ~all"

;DKIM
dkim._domainkey				IN	TXT	 	"v=DKIM; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC0/cNq+6XooQh44e4CG4Y+zZKtsXRw/HD5+pygS/s5GB9v1czmMAtAOn8X92sCMqHWYeyzzaXG4VLUCfdxqhXTqWvtoLhiynTV/M4pAWPQtIwuyYtulOYP14Nnnhqq+STJu52sfiK4mL53NAiyu42meMMP0IJM65lkTuljTTl8QwIDAQAB"

;DMARC
_dmarc					IN	TXT		"v=DMARC1;p=none;rua=mailto:admin@wt11.ephec-ti.be;"

;sip
sip					IN	A		51.77.203.6

_sip._udp					SRV	0		0	5060	sip
_sip._tcp					SRV 	0		0	5060	sip

