#!/bin/bash

# Set up for the mail server

postconf -e myhostname=mail.wt11.ephec-ti.be

mydomain=wt11.ephec-ti.be 

myorigin=$mydomain

"mydestination = wt11.ephec-ti.be localhost.$mydomain localhost"

inet_interfaces=all 

inet_protocols=ipv4 

mailbox_size_limit=0 

mynetworks=127.0.0.0/8


# Reload postfix to accept the changes

service postfix restart

