 
CREATE TABLE `number` (
	`id_number` varchar(400) NOT NULL,
	`category_number` varchar(400) NOT NULL,
	`s_number` varchar(400) NOT NULL,
	`col_comnat` varchar(400) NOT NULL,
	`col_mest` varchar(400) NOT NULL,
	`vid_okna` varchar(400) NOT NULL,
	`opisanie` varchar(400) NOT NULL,
	`status` varchar(400) NOT NULL,
	`summ_sytok` varchar(400) NOT NULL,
	PRIMARY KEY (`id_number`)
);

CREATE TABLE `dogovor` (
	`id_dogovor` varchar(400) NOT NULL,
	`data_zac` varchar(400) NOT NULL,
	`data_z` varchar(400) NOT NULL,
	`data_v` varchar(400) NOT NULL,
	`sposob_oplat` varchar(400) NOT NULL,
	`id_client` varchar(400) NOT NULL,
	`id_number` varchar(400) NOT NULL,
	`id_prog` varchar(400) NOT NULL,
	`summ_oplat` varchar(400) NOT NULL,
	PRIMARY KEY (`id_dogovor`)
);

CREATE TABLE `Client` (
	`id_client` varchar(400) NOT NULL,
	`fio_cl` varchar(400) NOT NULL,
	`data_roj` varchar(400) NOT NULL,
	`pol` varchar(400) NOT NULL,
	`pass` varchar(400) NOT NULL,
	PRIMARY KEY (`id_client`)
);

CREATE TABLE `Programma_sanatory` (
	`id_prog` varchar(400) NOT NULL,
	`name_prog` varchar(400) NOT NULL,
	`kolovo_proc` varchar(400) NOT NULL,
	`kolovo_day` varchar(400) NOT NULL,
	`opis_prog` varchar(400) NOT NULL,
	`summ_prog` varchar(400) NOT NULL,
	PRIMARY KEY (`id_prog`)
);

ALTER TABLE `dogovor` ADD CONSTRAINT `dogovor_fk0` FOREIGN KEY (`id_client`) REFERENCES `Client`(`id_client`);

ALTER TABLE `dogovor` ADD CONSTRAINT `dogovor_fk1` FOREIGN KEY (`id_number`) REFERENCES `number`(`id_number`);

ALTER TABLE `dogovor` ADD CONSTRAINT `dogovor_fk2` FOREIGN KEY (`id_prog`) REFERENCES `Programma_sanatory`(`id_prog`);




