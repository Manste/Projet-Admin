
$TTL 604800 
$ORIGIN wt11.ephec-ti.be.
@		IN 	SOA 	ns.wt11.ephec-ti.be. admin@wt11.ephec-ti.be (
					1  	   ;serial
					3600       ; refresh
		                       	600        ; retry 
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

