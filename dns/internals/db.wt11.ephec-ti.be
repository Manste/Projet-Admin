
$TTL 604800 
$ORIGIN wt11.ephec-ti.be.
@		IN 	SOA 	ns.wt11.ephec-ti.be. admin@wt11.ephec-ti.be (
					2  	   ;serial
					3600       ; refresh
		                       	300        ; retry 
                                	4619200    ; expire 
                                	604800     ; minimum 
                                )

wt11.ephec-ti.be.			IN	NS		ns.wt11.ephec-ti.be.
@					IN	MX		10 mail

ns					IN	A		51.77.203.19
mail					IN	A		51.77.203.6
www					IN	A		51.77.203.19
b2b					IN	CNAME		www
intranet				IN	CNAME		www

;SPF
@                                      IN      TXT             "v=spf1 a mx ~all"

;DKIM
key._domainkey				IN	TXT		"v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDXxkYv6tUzkxnjtTWPpGZy3vN7Whyy+rqGrvm5t289C2csZUeyxmdUdTPZQu9iYk6xtcHDqOQM7k++2aKO3rHVbOTLTP8BJfiMPHD+4o2sInNZ/jGDNQn0PNhmb7pFjUX5pz+2xXKOyanyB3c/+EcTc2gCscHhPOkt3UGvl3suHQIDAQAB"

;DMARC
_dmarc                                  IN      TXT             "v=DMARC1;p=quarantine;sp=quaratine;aspf=r;adkim=r;fo=1;ri=86400;rua=mailto:dmarc@wt11.ephec-ti.be;ruf=mailto:dmarc@wt11.ephec-ti.be;"
