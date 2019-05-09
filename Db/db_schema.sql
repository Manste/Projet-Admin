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
	`nom` VARCHAR(50) NOT NULL,
	`prenom` VARCHAR(120),
	`fonction` VARCHAR (100) NOT NULL DEFAULT 'ATELIER',
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

flush privileges;


INSERT INTO `WoodyToys`.`virtual_domains`
(`id` ,`name`)
VALUES
('1', 'wt11.ephec-ti.be');


INSERT INTO `WoodyToys`.`virtual_users`
(`id`, `domain_id`,`nom`, `prenom`, `fonction`, `password` , `email`)
VALUES
('1', '1', 'service secretariat', NULL, 'SECRETARIAT', ENCRYPT('password', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'contact@wt11.ephec-ti.be'),
('2', '1', 'service commercial', NULL, 'COMMERCIAUX', ENCRYPT('password', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'b2b@wt11.ephec-ti.be'),
('3', '1', 'Manou', 'Stévia', 'DESIGNER', ENCRYPT('password', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'manou.stevia@wt11.ephec-ti.be'),
('4', '1', 'Admin', NULL, 'Service Informatique', ENCRYPT('password', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'admin@wt11.ephec-ti.be');

INSERT INTO `WoodyToys`.`virtual_aliases`
(`id`, `domain_id`, `source`, `destination`)
VALUES
('1', '1', 'noreply@wt11.ephec-ti.be', 'contact@wt11.ephec-ti.be');


-- Comptes utilisateurs

/*create user 'admin'@'%' identified by 'password';

grant all privileges on *.* to 'admin'@'%';*/
GRANT ALL ON WoodyToys.* TO 'admin'@'51.77.203.6' IDENTIFIED BY 'password' WITH GRANT OPTION;

-- FLUSH

flush privileges;

