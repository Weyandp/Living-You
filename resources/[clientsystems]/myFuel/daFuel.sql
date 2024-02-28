CREATE TABLE `myfuel_stocks` (
  `gas_station_id` INT(11) NOT NULL,
  `fuel_type` VARCHAR(45) NOT NULL,
  `price_per_liter` DOUBLE NOT NULL,
  `stock` int NOT NULL,
  `updated` TINYINT(1) NOT NULL DEFAULT 0,

  PRIMARY KEY (`gas_station_id`, `fuel_type`));

CREATE TABLE `myfuel_balance` (
  `uid` INT NOT NULL AUTO_INCREMENT,
  `gas_station_id` INT(11) NOT NULL,
  `costtype` VARCHAR(45) NOT NULL,
  `fuel_type` VARCHAR(45) NOT NULL,
  `fuel_amount` INT NOT NULL,
  `fuel_singleprice` DOUBLE NOT NULL,
  `totalprice` DOUBLE NOT NULL,
  `createddate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  INDEX `idx_crateddate` (`createddate` ASC) );

#DROP TABLE myfuel_gas_stations; ###optional step

CREATE TABLE `myfuel_gas_stations` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `posX` double NOT NULL DEFAULT 0,
  `posY` double NOT NULL DEFAULT 0,
  `posZ` double NOT NULL DEFAULT 0,
  `vehicleClass` varchar(10) NOT NULL DEFAULT 'car',
  `admin_posX` double NOT NULL DEFAULT 0,
  `admin_posY` double NOT NULL DEFAULT 0,
  `admin_posZ` double NOT NULL DEFAULT 0,
  `mission_spawn_poxX` double NOT NULL DEFAULT 0,
  `mission_spawn_poxY` double NOT NULL DEFAULT 0,
  `mission_spawn_poxZ` double NOT NULL DEFAULT 0,
  `mission_spawn_heading` DECIMAL(19,1) NOT NULL DEFAULT 0,
  `price` decimal(19,0) NOT NULL DEFAULT 0,
  `warehouse_level` int(11) NOT NULL DEFAULT 0,
  `owner` varchar(46) DEFAULT NULL,
  `logo_name` varchar(45) NOT NULL DEFAULT 'xero',
  PRIMARY KEY (`posX`,`posY`,`posZ`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO `myfuel_gas_stations` (`posX`, `posY`, `posZ`, `vehicleClass`, `admin_posX`, `admin_posY`, `admin_posZ`, `mission_spawn_poxX`, `mission_spawn_poxY`, `mission_spawn_poxZ`, `mission_spawn_heading`, `price`, `logo_name`) VALUES 
('-2555.12','2334.27','33.07','car','-2543.83','2316.04','33.21','-2525.2292','2339.4019','33.1464','212','50000','ron'),
('-2096.59','-321.48','13.16','car','-2073.5','-327.35','13.31','-2068.8228','-307.457','13.2338','83','50000','xero'),
('-1799.41','802.81','138.65','car','-1816.75','795.57','138.1','-1829.1769','807.726','139.2781','313','50000','ltd'),
('-1604.22','5256.73','2.07','boat','-1606.07','5255.84','3.97','-1578.4677','5158.8159','19.8572','194','50000','exxon'),
('-1436.97','-276.55','46.2','car','-1436.37','-260.38','46.26','-1437.4679','-253.7085','46.3661','134','50000','ron'),
('-913.6','-3047.77','13.94','planes','-914.53','-3043.31','13.94','-894.2976','-3057.1165','13.9444','150','50000','exxon'),
('-804.78','-1505.68','0.5','boat','-753.95','-1511.07','5.01','-745.2076','-1502.429','5.0005','295','50000','exxon'),
('-723.29','-935.55','19.21','car','-702.56','-917.38','19.21','-729.6887','-913.9202','19.1256','160','50000','ltd'),
('-525.35','-1211.32','18.18','car','-508.99','-1212.62','18.55','-509.2644','-1200.0907','19.7077','309','50000','xero'),
('-319.42','-1471.81','30.54','car','-341.78','-1475.02','30.75','-318.9482','-1495.8295','30.6272','271','50000','globe_oil'),
('-215.65','6199.4','31.49','car','-236.51','6201.91','31.93','-243.2813','6193.0444','31.575','226','50000','xero'),
('-94.2','6419.49','31.48','car','-79.8','6416.03','31.63','-76.8395','6430.1455','31.5377','45','50000','xero'),
('-70.51','-1761.25','29.65','car','-47.85','-1762.04','29.43','-64.7017','-1743.745','29.4062','46','50000','ltd'),
('49.8','2779.31','58.04','car','50.7','2787.28','57.87','67.0266','2784.0793','57.8782','139','50000','xero'),
('175.55','-1562.21','29.26','car','159.29','-1561.61','29.26','181.4231','-1548.0464','29.2603','216','50000','ron'),
('179.82','6602.84','31.86','car','205.23','6615.18','31.65','196.6132','6626.2354','31.6718','182','50000','ron'),
('263.92','2607.41','44.98','car','252.41','2596.48','44.84','232.4394','2597.9338','45.4596','19','50000','globe_oil'),
('264.95','-1259.45','26.4','car','289.07','-1253.31','29.44','293.4498','-1246.2234','29.3677','92','50000','xero'),
('620.8','268.73','103.08','car','642.22','260.59','103.29','631.0021','251.9641','103.1777','84','50000','globe_oil'),
('819.61','-1028.2','26.4','car','817.96','-1039.97','26.75','827.0495','-1040.9393','26.9996','17','50000','ron'),
('1039.12','2671.3','39.55','car','1033.27','2662.66','39.55','1026.6689','2661.1965','39.6368','1','50000','globe_oil'),
('1180.95','-329.84','69.31','car','1168.61','-323.93','69.3','1164.658','-334.321','68.841','188','50000','ltd'),
('1208.03','2660.48','37.89','car','1202.73','2654.38','37.85','1207.972','2643.3528','37.9142','325','50000','globe_oil'),
('1208.6','-1402.28','35.22','car','1211.49','-1389.61','35.37','1199.8217','-1387.2134','35.3127','181','50000','ron'),
('1687.26','4929.63','42.07','car','1693.44','4920.89','42.07','1700.8508','4946.3682','42.5559','57','50000','ltd'),
('1702','6416.99','32.76','car','1705.71','6425.06','32.76','1686.797','6429.8267','32.4836','182','50000','globe_oil'),
('2005','3774.2','32.4','car','2004.92','3780.52','32.18','1982.6167','3777.9482','32.267','208','50000','xero'),
('2539.33','2594.61','37.94','car','2544.05','2591.54','37.94','2536.7539','2579.0234','38.0314','21','50000','globe_oil'),
('2581.17','362.01','108.46','car','2559.89','358.9','108.62','2585.1331','412.3998','108.5436','174','50000','ron'),
('2679.93','3264.09','55.24','car','2674.57','3267.01','55.24','2649.0627','3272.5957','55.327','154','50000','xero'),
('3852.02','4459.73','1.85','boat','3858.36','4460.12','1.82','3810.6631','4461.1675','4.2896','84','50000','exxon');

CREATE TABLE `myfuel_classes` (
  `uid` INT NULL AUTO_INCREMENT,
  `classname` VARCHAR(90) NOT NULL DEFAULT '',
  `fueltype` VARCHAR(90) NOT NULL DEFAULT '',
  PRIMARY KEY (`classname`, `fueltype`),
  UNIQUE INDEX `ui_UNIQUE` (`uid` ASC));



INSERT INTO `myfuel_classes` (`classname`, `fueltype`) VALUES 
('boat', 'diesel')
,('planes', 'diesel')
,('planes', 'paraffin')
,('car', 'gasoline')
,('car', 'diesel')
,('car', 'electricity');


/*Version 1.0.3 extension*/
CREATE TABLE `myfuel_income_expenses` (
  `gas_station_id` INT(11) NOT NULL,
  `total_income` DOUBLE ,
  `total_expenses` DOUBLE,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`gas_station_id`)
);

insert into `myfuel_income_expenses`(`gas_station_id`) SELECT `uid` from `myfuel_gas_stations`;

UPDATE `myfuel_income_expenses`
	SET `total_income` = (SELECT IFNULL(SUM(totalprice),0) FROM myfuel_balance where myfuel_balance.gas_station_id = myfuel_income_expenses.gas_station_id and costtype in('income','deposit'))
    ,`total_expenses`= (SELECT IFNULL(SUM(totalprice),0) FROM myfuel_balance where myfuel_balance.gas_station_id = myfuel_income_expenses.gas_station_id and costtype in('expenses','payout','Upgrade'))
    ,`last_update` = now()
where (total_expenses is null or total_income is null) 
	and gas_station_id > -1;

/*Version 1.0.5 extension*/
ALTER TABLE `myfuel_gas_stations` 
ADD COLUMN `is_buyable` INT NOT NULL DEFAULT 1 AFTER `logo_name`;