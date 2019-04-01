
$TTL 604800 
$ORIGIN wt11.ephec-ti.be.
@		IN 	SOA 	ns.wt11.ephec-ti.be. admin.wt11.ephec-ti.be. (
					1	   ;serial
					3600       ; refresh
		                       	300        ; retry 
                                	4619200    ; expire 
                                	604800     ; minimum 
                                )

wt11.ephec-ti.be.			IN	NS		ns.wt11.ephec-ti.be.
wt11.ephec-ti.be.			IN	MX		10 mail

ns					IN	A		51.77.203.19
mail					IN	A		51.77.203.6
www					IN	A		51.77.203.19

key1._domainkey.wt11.ephec-ti.be.	IN	TXT		“v=DKM1; k=rsa\; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsLr3HsTg/BB0Sh9aVAoYEv/h4Qgwq1fiVpcU2bpTV52zrCCQXtjIhivRClv4KPqKYVNQ0StkkIt24nsrAXoZminizvgwy6iN+bNXg63gPaBvbEuB8wimqLeYfZgh23N7J0uzfLKSB8K06b07XNXKpU8hXdP5OMOPidtIjj3XYUMJVJlVGvWNJYjfj03JZvZf+B0lUHjKRbNQBEsIhov/SFwkC3BXy7SipbH2ZTJH+6JPFWruWc9c3q/m6uggx13AJbxd6Xs9eDzJeyDrmmj7cTCpxrqwIPLv6XqeyTDF4FbWqTvzE6u5cesbcjEH6WU02VeLVDOw6BJ/aIWiH1LOpwIDAQAB”

