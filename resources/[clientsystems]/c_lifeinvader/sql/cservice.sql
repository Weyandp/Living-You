-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 28. Jun 2023 um 19:08
-- Server-Version: 10.6.12-MariaDB-0ubuntu0.22.04.1
-- PHP-Version: 8.2.6
SET
    SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
    time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8mb4 */
;

--
-- Datenbank: `lucim_testserver`
--
-- --------------------------------------------------------
--
-- Tabellenstruktur für Tabelle `lifeinvader`
--
CREATE TABLE `lifeinvader` (
    `id` int(11) NOT NULL,
    `identifier` longtext NOT NULL,
    `name` longtext NOT NULL,
    `text` longtext NOT NULL,
    `phonenumber` longtext NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_general_ci;

--
-- Indizes der exportierten Tabellen
--
--
-- Indizes für die Tabelle `lifeinvader`
--
ALTER TABLE
    `lifeinvader`
ADD
    PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--
--
-- AUTO_INCREMENT für Tabelle `lifeinvader`
--
ALTER TABLE
    `lifeinvader`
MODIFY
    `id` int(11) NOT NULL AUTO_INCREMENT;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;