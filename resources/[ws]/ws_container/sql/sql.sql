CREATE TABLE `ws_container_keys` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `key` longtext COLLATE utf8_unicode_ci NOT NULL,
    `claimed` tinyint(1) DEFAULT 0,
    PRIMARY KEY (`id`)
);