CREATE TABLE IF NOT EXISTS `saved_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL DEFAULT '0',
  `type` varchar(60) NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  `timestamp` varchar(60) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;


ALTER TABLE `users`
    ADD COLUMN `mainMailadres` VARCHAR(50) NULL DEFAULT NULL;


ALTER TABLE `users`
    ADD COLUMN `registerDate` VARCHAR(50) NULL DEFAULT curdate() COLLATE 'utf8mb4_general_ci';
	
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;