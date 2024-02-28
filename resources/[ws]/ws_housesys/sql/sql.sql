ALTER TABLE `users` ADD `house` INT(11) NOT NULL DEFAULT '0';

CREATE TABLE `ws_housesys` (
    `id` int(11) NOT NULL,
    `owner` text NOT NULL DEFAULT 'none',
    `ownerName` text NOT NULL DEFAULT 'none',
    `interiorId` text DEFAULT 'default',
    `closed` tinyint(1) NOT NULL DEFAULT '1',
    `customName` text DEFAULT 'none',
    PRIMARY KEY(`id`)
);

CREATE TABLE `ws_housesys_keys` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `identifier` text NOT NULL,
    `name` text NOT NULL,
    `houseId` int(11) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `ws_housesys_garages` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `houseId` int(11) NOT NULL,
    `vehicles` text NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `ws_housesys_warehouse` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `houseId` int(11) NOT NULL,
    `data` text NOT NULL,
    PRIMARY KEY(`id`)
);