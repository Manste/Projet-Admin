create database WoodyToys;

use WoodyToys;

create table Client(

id char(4) not null,
primary_key(id)

) COMMENT="Table client";

# FLUSH

flush privileges;
