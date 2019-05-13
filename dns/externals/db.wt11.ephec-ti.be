
$TTL 604800 
$ORIGIN wt11.ephec-ti.be.
@		IN 	SOA 	ns.wt11.ephec-ti.be. admin@wt11.ephec-ti.be. (
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
@					IN	TXT		"v=spf1 a mx include:_spf.google.com ~all"

;DKIM
key._domainkey				IN	TXT	 	"v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDXxkYv6tUzkxnjtTWPpGZy3vN7Whyy+rqGrvm5t289C2csZUeyxmdUdTPZQu9iYk6xtcHDqOQM7k++2aKO3rHVbOTLTP8BJfiMPHD+4o2sInNZ/jGDNQn0PNhmb7pFjUX5pz+2xXKOyanyB3c/+EcTc2gCscHhPOkt3UGvl3suHQIDAQAB"

;DMARC
_dmarc					IN	TXT		"v=DMARC1;p=none;sp=reject;pct=100;aspf=r;fo=0;ri=86400;rua=mailto:dmarc@wt11.ephec-ti.be;"

;sip
_sip.udp				IN	SRV	0	0	6201 	mail


