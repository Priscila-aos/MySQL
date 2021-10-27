CREATE TABLE `Temas` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`descrição` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Postagens` (
	`id_postagens` INT NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL,
	`texto` varchar(1000) NOT NULL,
	`data` TIMESTAMP NOT NULL,
	`tema_id` INT NOT NULL,
	`usuario_id` INT NOT NULL,
	PRIMARY KEY (`id_postagens`)
);

CREATE TABLE `Usuario` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`usuario` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk0` FOREIGN KEY (`tema_id`) REFERENCES `Temas`(`id`);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario`(`id`);




