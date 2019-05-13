create database WoodyToys;
use WoodyToys;

CREATE TABLE `virtual_domains` (
	`id`  INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `virtual_users` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`domain_id` INT NOT NULL,
	`password` VARCHAR(106) NOT NULL,
	`email` VARCHAR(120) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE KEY `email` (`email`),
	FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `virtual_aliases` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`domain_id` INT NOT NULL,
	`source` varchar(100) NOT NULL,
	`destination` varchar(100) NOT NULL,
	PRIMARY KEY (`id`),
	FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#create user 'admin'@'localhost' identified as 'admin_password';

#grant all privileges on '.' to 'admin'@'localhost';
#mysql > GRANT SELECT ON servermail.* TO 'usermail'@'127.0.0.1' IDENTIFIED BY 'mailpassword';

# FLUSH

flush privileges;
