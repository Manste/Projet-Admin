create database WoodyToys;

use WoodyToys;

create table Client(

clientId char(4) not null,
primary_key(clientId)

) COMMENT="Table client";

# Comptes utilisateurs

create user 'admin'@'localhost' identified as 'admin_password';

grant all privileges on '.' to 'admin'@'localhost';

# FLUSH

flush privileges;
