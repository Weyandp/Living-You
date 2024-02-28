CREATE TABLE `owned_vehicles` (
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `vehiclename` varchar(255) DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'car',
  PRIMARY KEY (`plate`)
);