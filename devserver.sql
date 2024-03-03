-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 26. Feb 2024 um 19:59
-- Server-Version: 10.3.39-MariaDB-0+deb10u2
-- PHP-Version: 8.3.3-1+0~20240216.17+debian10~1.gbp87e37b

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `devserver`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bank_savings', 'Savings account', 0),
('caution', 'caution', 0),
('society_adac', 'ADAC ', 1),
('society_ambulance', 'EMS', 1),
('society_banker', 'Bank', 1),
('society_bundeskrankenhaus', 'Bundeskrankenhaus', 1),
('society_bundeskrankenhaus___off_duty', 'Bundeskrankenhaus - Off duty', 1),
('society_cardealer', 'Cardealer', 1),
('society_fisherman', 'Fisherman', 1),
('society_fueler', 'Fueler', 1),
('society_lumberjack', 'Lumberjack', 1),
('society_mechanic', 'Mechanic', 1),
('society_miner', 'Miner', 1),
('society_off_adac', 'ADAC - off Duty', 1),
('society_off_ambulance', 'EMS - Off duty', 1),
('society_off_mechanic', 'Mechanic - Off duty', 1),
('society_off_police', 'LSPD - Off duty', 1),
('society_off_polizei', 'Polizei - Off duty', 1),
('society_off_reporter', 'Reporter - off Duty', 1),
('society_police', 'Police', 1),
('society_polizei', 'Polizei', 1),
('society_reporter', 'Reporter', 1),
('society_slaughterer', 'Butcher', 1),
('society_tailor', 'Tailor', 1),
('society_taxi', 'Taxi', 1),
('society_trucker', 'LS Logistics', 1),
('society_unemployed', 'Unemployed', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_cardealer', 0, NULL),
(2, 'society_police', 0, NULL),
(3, 'society_ambulance', 0, NULL),
(4, 'society_mechanic', 0, NULL),
(5, 'society_taxi', 0, NULL),
(9, 'society_banker', 0, NULL),
(10, 'bank_savings', 0, 'char1:531c0783da697172843d844c83e9cfac247a6be6'),
(11, 'caution', 0, 'char1:531c0783da697172843d844c83e9cfac247a6be6'),
(12, 'bank_savings', 0, '531c0783da697172843d844c83e9cfac247a6be6'),
(13, 'caution', 0, '531c0783da697172843d844c83e9cfac247a6be6'),
(14, 'society_off_ambulance', 0, NULL),
(15, 'society_off_police', 0, NULL),
(16, 'society_off_mechanic', 0, NULL),
(17, 'society_fueler', 0, NULL),
(18, 'society_unemployed', 0, NULL),
(19, 'society_fisherman', 0, NULL),
(20, 'society_lumberjack', 0, NULL),
(21, 'society_miner', 0, NULL),
(22, 'society_slaughterer', 0, NULL),
(23, 'society_reporter', 0, NULL),
(24, 'society_tailor', 0, NULL),
(25, 'society_off_polizei', 0, NULL),
(26, 'society_polizei', 0, NULL),
(27, 'society_off_reporter', 0, NULL),
(28, 'society_adac', 0, NULL),
(29, 'society_bundeskrankenhaus', 0, NULL),
(30, 'society_trucker', 0, NULL),
(31, 'society_bundeskrankenhaus___off_duty', 0, NULL),
(32, 'society_off_adac', 0, NULL),
(33, 'bank_savings', 0, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0'),
(34, 'caution', 0, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0'),
(35, 'bank_savings', 0, '170c0781bf3db9b54847ee453224dfab755ad36c'),
(36, 'caution', 0, '170c0781bf3db9b54847ee453224dfab755ad36c'),
(37, 'bank_savings', 0, '94aa00d10f636f0acd4f8b7446724e62aae88114'),
(38, 'caution', 0, '94aa00d10f636f0acd4f8b7446724e62aae88114'),
(39, 'bank_savings', 0, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1'),
(40, 'caution', 0, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1'),
(41, 'bank_savings', 0, '722c42c644c33d8e39fbec94459d97c156a62462'),
(42, 'caution', 0, '722c42c644c33d8e39fbec94459d97c156a62462'),
(43, 'bank_savings', 0, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d'),
(44, 'caution', 0, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d'),
(45, 'bank_savings', 0, '6a2df2596c750aba87978a90314ede727436be2a'),
(46, 'caution', 0, '6a2df2596c750aba87978a90314ede727436be2a'),
(47, 'bank_savings', 0, 'ab7d763277d30bc748b5bd353a32eec6f9039fad'),
(48, 'caution', 0, 'ab7d763277d30bc748b5bd353a32eec6f9039fad'),
(49, 'bank_savings', 0, 'e9c42e433167ee744dba4011725cb75e1d9274ed'),
(50, 'caution', 0, 'e9c42e433167ee744dba4011725cb75e1d9274ed'),
(51, 'bank_savings', 0, '6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69'),
(52, 'caution', 0, '6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('society_adac', 'ADAC ', 1),
('society_ambulance', 'EMS', 1),
('society_banker', 'Banker', 1),
('society_bundeskrankenhaus', 'Bundeskrankenhaus', 1),
('society_bundeskrankenhaus___off_duty', 'Bundeskrankenhaus - Off duty', 1),
('society_cardealer', 'Cardealer', 1),
('society_fisherman', 'Fisherman', 1),
('society_fueler', 'Fueler', 1),
('society_lumberjack', 'Lumberjack', 1),
('society_mechanic', 'Mechanic', 1),
('society_miner', 'Miner', 1),
('society_off_adac', 'ADAC - off Duty', 1),
('society_off_ambulance', 'EMS - Off duty', 1),
('society_off_mechanic', 'Mechanic - Off duty', 1),
('society_off_police', 'LSPD - Off duty', 1),
('society_off_polizei', 'Polizei - Off duty', 1),
('society_off_reporter', 'Reporter - off Duty', 1),
('society_police', 'Police', 1),
('society_polizei', 'Polizei', 1),
('society_reporter', 'Reporter', 1),
('society_slaughterer', 'Butcher', 1),
('society_tailor', 'Tailor', 1),
('society_taxi', 'Taxi', 1),
('society_trucker', 'LS Logistics', 1),
('society_unemployed', 'Unemployed', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `banking`
--

CREATE TABLE `banking` (
  `identifier` varchar(46) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `amount` int(64) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `balance` int(11) DEFAULT 0,
  `label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bank_history`
--

CREATE TABLE `bank_history` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `date` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `bank_history`
--

INSERT INTO `bank_history` (`id`, `identifier`, `type`, `amount`, `date`) VALUES
(1, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'withdraw', 10000, 1708799221),
(2, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'withdraw', 20000, 1708800085),
(3, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'deposit', 20000, 1708800407),
(4, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'withdraw', 2000000, 1708802921),
(5, '170c0781bf3db9b54847ee453224dfab755ad36c', 'deposit', 400000, 1708805853),
(6, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 1700000, 1708871553),
(7, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 1700000, 1708871554),
(8, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 1700000, 1708871555),
(9, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 1700000, 1708871555),
(10, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 1700000, 1708871555),
(11, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 1700000, 1708871555),
(12, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 1700000, 1708871555),
(13, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 1700000, 1708871556),
(14, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 1700000, 1708871556),
(15, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 1700000, 1708871556),
(16, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 829466, 1708871556),
(17, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 10000000, 1708889016),
(18, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 10000000, 1708889128),
(19, '170c0781bf3db9b54847ee453224dfab755ad36c', 'deposit', 1000000, 1708889136),
(20, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'deposit', 12000, 1708889178),
(21, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 999980953823, 1708889199),
(22, '170c0781bf3db9b54847ee453224dfab755ad36c', 'deposit', 999999953823, 1708889215),
(23, '170c0781bf3db9b54847ee453224dfab755ad36c', 'withdraw', 200000000, 1708889227),
(24, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'withdraw', 1500000, 1708901722),
(25, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'withdraw', 1500000, 1708901727),
(26, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'withdraw', 1500000, 1708901727),
(27, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'withdraw', 2000000, 1708949399),
(28, 'e9c42e433167ee744dba4011725cb75e1d9274ed', 'withdraw', 50000, 1708953002),
(29, 'e9c42e433167ee744dba4011725cb75e1d9274ed', 'deposit', 40000, 1708953138),
(30, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'withdraw', 5000000, 1708953885),
(31, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'withdraw', 5000000, 1708965488),
(32, '6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', 'transfer', 31, 1708968077),
(33, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'transfergot', 31, 1708968077),
(34, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'transfer', 5000000, 1708968105),
(35, '6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', 'transfergot', 5000000, 1708968105);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `sender` varchar(60) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bugreports`
--

CREATE TABLE `bugreports` (
  `licence` varchar(255) DEFAULT NULL,
  `playername` varchar(255) DEFAULT NULL,
  `titel` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `bugreports`
--

INSERT INTO `bugreports` (`licence`, `playername`, `titel`, `description`, `time`, `position`) VALUES
('license:170c0781bf3db9b54847ee453224dfab755ad36c', 'Emenel_Original', 'bug', '8135 \n\nDie Straße bugt ist weg! ', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Christian', 'bug', 'Im ankleidemenü kann man bei T-Shirt und Torso nicht wirklich was auswählen weil das weiße standart t-shirt immer zu sehen ist.\n\n', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Christian', 'bug', 'Das Haus an der LAKE VINEWOOD DR 6073 ist Leer und man fällt durch den boden.', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'idea', 'Die nutzung des Repair-Kits geht mit 10sek zu schnell. \n\nMinimum 30sek\n', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'idea', 'Die nutzung des Repair-Kits geht mit 10sek zu schnell. \n\nMinimum 30sek\n', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Beim Tanken in Sandy an der Grapeseed Main ST 2006 habe ich ohne nachfrage beim Tanken einen Kanister gekauft.\n\n', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'idea', 'Beim Versuch den Drogendealer zu erreichen werden viele wahrscheinlich FailRP betreiben weil sie versuchen werden den weg zu dem Dealer abzukürzen und quer über den berg ballern mit ihren karren. Eventuell sollte der eine andere Position bekommen.\n\n', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Wenn man mit dem Drogendealer redet ( Mit den narcos) wo man LSD Verkaufen oder Kaufen kann, keine ahnung weil es nicht angezeigt wird, wird ein bild unten rechts eingeblendet und man kann nicht erkennen was man hier überhaupt machen kann.', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Bei dem Canabis händler das selbe, dort wird auch links oben im Bildschirm ein Logo eingeblendet was wahrscheinlich nicht dort sein sollte.', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Wenn man im Ammunation ist kauft man offensichtlich erst eine Lizenz, das wird einem aber nicht angezeigt sondern nur ein Bild von Living-You und darunter steht kaufen für 10000. Es ist aber nicht ersichtlich was man kauft', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'GREAT OCEAN HWY 1030 wird eine Tankstelle auf der Karte angezeigt was aber keine ist sondern eine Ruine', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Paleto BLVD 1054 Beim Tanken bleibt der Lagerbestand der Tankstelle durchgehend bei 1500L obwohl man tankt.', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'GREAT OCEAN HWY 1025 Beim Chicken Sammeln.\n\nMan sammelt nach einmaligem drücken der E taste durchgehend Chicken. Das macht das AFK Farming deutlich leichter und führt zu unrp situationen.', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'wenn man mit einem auto in einer straße fährt wo man häuser kaufen kann, kann man beim fahren mit Interagieren. Also es wird einem im auto angezeigt.', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Las Lagunas BLVD.\n\nIm Bekleidungsladen steht bei MASE wo MASKE stehen sollte.\n', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Wenn man mit einer Tankstelle interagieren möchte die nicht zum verkauf steht, wird die anzeige das diese tankstelle nicht zum verkauf steht von der Trinken/Essen anzeige überlagert.\n\n', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Die Triggerreichweite von Häuser eingängen zum Betreten des Hauses oder der Garage gehen zu weit so das man sie teilweise 10m davon schon eine benachrichtigung bekommt\n', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Wenn man ein Vollgetanktes Auto an die Zapfsäule stellt kann man es nochmal komplett auftanken. ALTA ST 9033', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Wenn man ein haus gekauft hat was über eine Garage verfügt, kann man zwar die garage betreten aber ein fahrzeug darin parken geht nicht. ', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Es gibt Bootsgaragen und Flugzeuggaragen (Hangar) aber nirgendwo die möglichkeit ein Flugzeug oder Boot zu kaufen.', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Die Fragen bei der Fahrschule sind auf Englisch und sollten übersetzt werden.', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'INNOCENCE BLVD 9146. Es ist ein Krankenhaus auf dem Map eingezeichnet das nicht vorhanden ist.', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Nach beenden der Mission seine Tankstelle aufzufüllen despawnen der LKW und Der Tankauflieger nicht.', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Mitten auf dem Ozean rechts unterhalb vom Airport ist eine Garagensymbol Pflanzen auf dem Wasser.', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Bank symbol auf dem ozean untenrhalb vom Airport.', NULL, NULL),
('license:e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Lucullus', 'idea', 'Wenn man eine Waffe erhält, bekommt man nur eine Waffe mit einer Patrone. Wenn ich ein volles Magazin möchte, muss ich erst eine Munitionsbox benutzen. Wäre schön, wenn man eine Waffe bekommt das das Magazin voll wäre.', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Beim Autokauf wählt man eine Farbe aus, und bekommt eine andere. In meinem fall schwarz gewählt und rot bekommen.', NULL, NULL),
('license:0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris_Sanchez', 'bug', 'Man kann autos nicht einparken.Nur ausparken.', NULL, NULL),
('license:6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', 'Old Hawk', 'bug', 'Tankstelle explodiert=Tank funktion weiterhin gegeben', NULL, NULL),
('license:6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', 'Old Hawk', 'idea', 'Mülltonnen =durchsuchen=passenden verkäufer zu=z.b. altes radio..geld,plastikflasche,pfandosen etc etc \n', NULL, NULL),
('license:6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', 'Old Hawk', 'idea', 'Anschnall funktion bitte hinzufügung AMK', '26.02.2024 19:52:59', '{\"z\":52.920166015625,\"x\":1938.3165283203126,\"y\":2558.10986328125}'),
('license:6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', 'Old Hawk', 'idea', 'Wohnungen Davis Avenue etc für gang rp', '26.02.2024 19:55:22', '{\"z\":79.8125,\"x\":828.8571166992188,\"y\":-73.88571166992188}'),
('license:6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', 'Old Hawk', 'idea', 'Steuern auf sprit % abzüge 30-40%', '26.02.2024 19:57:15', '{\"z\":69.0791015625,\"x\":1167.5208740234376,\"y\":-326.953857421875}'),
('license:6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', 'Old Hawk', 'idea', 'Dauerhaftes rennen deaktivieren,anzeige balken einfügen', '26.02.2024 20:42:14', '{\"z\":31.4029541015625,\"x\":300.29010009765627,\"y\":-1387.173583984375}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `crafting_recipes`
--

CREATE TABLE `crafting_recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `result_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `perfect_recipe_reward` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ingredients` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `crafting_recipes`
--

INSERT INTO `crafting_recipes` (`id`, `name`, `result_items`, `perfect_recipe_reward`, `ingredients`, `time`) VALUES
(1, 'Lean', '[{\"itemQuantity\":1,\"itemName\":\"drug_lean\"}]', '[{\"itemQuantity\":2,\"itemName\":\"drug_lean\"}]', '[{\"ingredientMaxQuantity\":3,\"ingredientItemName\":\"drink_sprite\",\"ingredientPerfectQuantity\":2,\"loseOnUse\":true,\"ingredientMinQuantity\":1},{\"ingredientMaxQuantity\":4,\"ingredientItemName\":\"codeine\",\"ingredientPerfectQuantity\":3,\"loseOnUse\":true,\"ingredientMinQuantity\":2},{\"ingredientMaxQuantity\":15,\"ingredientItemName\":\"jolly_ranchers\",\"ingredientPerfectQuantity\":12,\"loseOnUse\":true,\"ingredientMinQuantity\":10},{\"ingredientMaxQuantity\":8,\"ingredientItemName\":\"ice\",\"ingredientPerfectQuantity\":7,\"loseOnUse\":true,\"ingredientMinQuantity\":4}]', 8),
(2, 'Meth', '[{\"itemName\":\"drug_meth\",\"itemQuantity\":1}]', '[{\"itemName\":\"drug_meth\",\"itemQuantity\":2}]', '[{\"ingredientMaxQuantity\":30,\"loseOnUse\":true,\"ingredientItemName\":\"red_sulfur\",\"ingredientMinQuantity\":15,\"ingredientPerfectQuantity\":23},{\"ingredientMaxQuantity\":5,\"loseOnUse\":true,\"ingredientItemName\":\"muriatic_acid\",\"ingredientMinQuantity\":1,\"ingredientPerfectQuantity\":2},{\"ingredientMaxQuantity\":10,\"loseOnUse\":true,\"ingredientItemName\":\"liquid_sulfur\",\"ingredientMinQuantity\":5,\"ingredientPerfectQuantity\":6},{\"ingredientMaxQuantity\":20,\"loseOnUse\":true,\"ingredientItemName\":\"water\",\"ingredientMinQuantity\":10,\"ingredientPerfectQuantity\":18},{\"ingredientMaxQuantity\":12,\"loseOnUse\":true,\"ingredientItemName\":\"ammonium_nitrate\",\"ingredientMinQuantity\":4,\"ingredientPerfectQuantity\":8},{\"ingredientMaxQuantity\":3,\"loseOnUse\":true,\"ingredientItemName\":\"sodium_hydroxide\",\"ingredientMinQuantity\":1,\"ingredientPerfectQuantity\":2},{\"ingredientMaxQuantity\":23,\"loseOnUse\":true,\"ingredientItemName\":\"pseudoefedrine\",\"ingredientMinQuantity\":18,\"ingredientPerfectQuantity\":18}]', 4),
(3, 'Ecstasy', '[{\"itemQuantity\":1,\"itemName\":\"drug_ecstasy\"}]', '[{\"itemQuantity\":2,\"itemName\":\"drug_ecstasy\"}]', '[{\"ingredientMaxQuantity\":4,\"ingredientItemName\":\"carbon\",\"ingredientPerfectQuantity\":1,\"loseOnUse\":true,\"ingredientMinQuantity\":1},{\"ingredientMaxQuantity\":7,\"ingredientItemName\":\"hydrogen\",\"ingredientPerfectQuantity\":3,\"loseOnUse\":true,\"ingredientMinQuantity\":2},{\"ingredientMaxQuantity\":10,\"ingredientItemName\":\"nitrogen\",\"ingredientPerfectQuantity\":4,\"loseOnUse\":true,\"ingredientMinQuantity\":5},{\"ingredientMaxQuantity\":12,\"ingredientItemName\":\"oxygen\",\"ingredientPerfectQuantity\":11,\"loseOnUse\":true,\"ingredientMinQuantity\":8},{\"ingredientMaxQuantity\":12,\"ingredientItemName\":\"jolly_ranchers\",\"ingredientPerfectQuantity\":8,\"loseOnUse\":true,\"ingredientMinQuantity\":7}]', 3),
(4, 'LSD', '[{\"itemQuantity\":1,\"itemName\":\"drug_lsd\"}]', '[{\"itemQuantity\":2,\"itemName\":\"drug_lsd\"}]', '[{\"ingredientMaxQuantity\":12,\"ingredientItemName\":\"carbon\",\"ingredientPerfectQuantity\":11,\"loseOnUse\":true,\"ingredientMinQuantity\":8},{\"ingredientMaxQuantity\":2,\"ingredientItemName\":\"hydrogen\",\"ingredientPerfectQuantity\":2,\"loseOnUse\":true,\"ingredientMinQuantity\":1},{\"ingredientMaxQuantity\":16,\"ingredientItemName\":\"nitrogen\",\"ingredientPerfectQuantity\":6,\"loseOnUse\":true,\"ingredientMinQuantity\":3},{\"ingredientMaxQuantity\":8,\"ingredientItemName\":\"oxygen\",\"ingredientPerfectQuantity\":5,\"loseOnUse\":true,\"ingredientMinQuantity\":3}]', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Property', 0),
('society_adac', 'ADAC ', 1),
('society_ambulance', 'EMS', 1),
('society_banker', 'Banker', 1),
('society_bundeskrankenhaus', 'Bundeskrankenhaus', 1),
('society_bundeskrankenhaus___off_duty', 'Bundeskrankenhaus - Off duty', 1),
('society_cardealer', 'Cardealer', 1),
('society_fisherman', 'Fisherman', 1),
('society_fueler', 'Fueler', 1),
('society_lumberjack', 'Lumberjack', 1),
('society_mechanic', 'Mechanic', 1),
('society_miner', 'Miner', 1),
('society_off_adac', 'ADAC - off Duty', 1),
('society_off_ambulance', 'EMS - Off duty', 1),
('society_off_mechanic', 'Mechanic - Off duty', 1),
('society_off_police', 'LSPD - Off duty', 1),
('society_off_polizei', 'Polizei - Off duty', 1),
('society_off_reporter', 'Reporter - off Duty', 1),
('society_police', 'Police', 1),
('society_polizei', 'Polizei', 1),
('society_reporter', 'Reporter', 1),
('society_slaughterer', 'Butcher', 1),
('society_tailor', 'Tailor', 1),
('society_taxi', 'Taxi', 1),
('society_trucker', 'LS Logistics', 1),
('society_unemployed', 'Unemployed', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_police', NULL, '{}'),
(2, 'society_ambulance', NULL, '{}'),
(3, 'society_mechanic', NULL, '{}'),
(4, 'society_taxi', NULL, '{}'),
(5, 'property', NULL, '{}'),
(6, 'property', NULL, '{}'),
(7, 'property', 'char1:531c0783da697172843d844c83e9cfac247a6be6', '{}'),
(8, 'user_ears', 'char1:531c0783da697172843d844c83e9cfac247a6be6', '{}'),
(9, 'user_glasses', 'char1:531c0783da697172843d844c83e9cfac247a6be6', '{}'),
(10, 'user_helmet', 'char1:531c0783da697172843d844c83e9cfac247a6be6', '{}'),
(11, 'user_mask', 'char1:531c0783da697172843d844c83e9cfac247a6be6', '{}'),
(12, 'property', NULL, '{}'),
(13, 'property', NULL, '{}'),
(14, 'property', NULL, '{}'),
(15, 'property', '531c0783da697172843d844c83e9cfac247a6be6', '{}'),
(16, 'user_ears', '531c0783da697172843d844c83e9cfac247a6be6', '{}'),
(17, 'user_glasses', '531c0783da697172843d844c83e9cfac247a6be6', '{}'),
(18, 'user_helmet', '531c0783da697172843d844c83e9cfac247a6be6', '{}'),
(19, 'user_mask', '531c0783da697172843d844c83e9cfac247a6be6', '{}'),
(20, 'society_off_ambulance', NULL, '{}'),
(21, 'society_off_police', NULL, '{}'),
(22, 'society_off_mechanic', NULL, '{}'),
(23, 'society_fueler', NULL, '{}'),
(24, 'society_unemployed', NULL, '{}'),
(25, 'society_miner', NULL, '{}'),
(26, 'society_tailor', NULL, '{}'),
(27, 'society_cardealer', NULL, '{}'),
(28, 'society_reporter', NULL, '{}'),
(29, 'society_fisherman', NULL, '{}'),
(30, 'society_lumberjack', NULL, '{}'),
(31, 'society_slaughterer', NULL, '{}'),
(32, 'society_banker', NULL, '{}'),
(33, 'society_off_adac', NULL, '{}'),
(34, 'society_bundeskrankenhaus', NULL, '{}'),
(35, 'society_off_polizei', NULL, '{}'),
(36, 'society_off_reporter', NULL, '{}'),
(37, 'society_trucker', NULL, '{}'),
(38, 'society_bundeskrankenhaus___off_duty', NULL, '{}'),
(39, 'society_adac', NULL, '{}'),
(40, 'society_polizei', NULL, '{}'),
(41, 'user_ears', 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', '{}'),
(42, 'property', 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', '{}'),
(43, 'user_glasses', 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', '{}'),
(44, 'user_helmet', 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', '{}'),
(45, 'user_mask', 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', '{}'),
(46, 'property', '170c0781bf3db9b54847ee453224dfab755ad36c', '{}'),
(47, 'user_ears', '170c0781bf3db9b54847ee453224dfab755ad36c', '{}'),
(48, 'user_glasses', '170c0781bf3db9b54847ee453224dfab755ad36c', '{}'),
(49, 'user_helmet', '170c0781bf3db9b54847ee453224dfab755ad36c', '{}'),
(50, 'user_mask', '170c0781bf3db9b54847ee453224dfab755ad36c', '{}'),
(51, 'property', '94aa00d10f636f0acd4f8b7446724e62aae88114', '{}'),
(52, 'user_ears', '94aa00d10f636f0acd4f8b7446724e62aae88114', '{}'),
(53, 'user_glasses', '94aa00d10f636f0acd4f8b7446724e62aae88114', '{}'),
(54, 'user_helmet', '94aa00d10f636f0acd4f8b7446724e62aae88114', '{}'),
(55, 'user_mask', '94aa00d10f636f0acd4f8b7446724e62aae88114', '{}'),
(56, 'property', '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', '{}'),
(57, 'user_ears', '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', '{}'),
(58, 'user_glasses', '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', '{}'),
(59, 'user_helmet', '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', '{}'),
(60, 'user_mask', '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', '{}'),
(61, 'property', '722c42c644c33d8e39fbec94459d97c156a62462', '{}'),
(62, 'user_ears', '722c42c644c33d8e39fbec94459d97c156a62462', '{}'),
(63, 'user_glasses', '722c42c644c33d8e39fbec94459d97c156a62462', '{}'),
(64, 'user_helmet', '722c42c644c33d8e39fbec94459d97c156a62462', '{}'),
(65, 'user_mask', '722c42c644c33d8e39fbec94459d97c156a62462', '{}'),
(66, 'property', '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', '{}'),
(67, 'user_ears', '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', '{}'),
(68, 'user_glasses', '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', '{}'),
(69, 'user_helmet', '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', '{}'),
(70, 'user_mask', '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', '{}'),
(71, 'property', '6a2df2596c750aba87978a90314ede727436be2a', '{}'),
(72, 'user_ears', '6a2df2596c750aba87978a90314ede727436be2a', '{}'),
(73, 'user_glasses', '6a2df2596c750aba87978a90314ede727436be2a', '{}'),
(74, 'user_helmet', '6a2df2596c750aba87978a90314ede727436be2a', '{}'),
(75, 'user_mask', '6a2df2596c750aba87978a90314ede727436be2a', '{}'),
(76, 'property', 'ab7d763277d30bc748b5bd353a32eec6f9039fad', '{}'),
(77, 'user_ears', 'ab7d763277d30bc748b5bd353a32eec6f9039fad', '{}'),
(78, 'user_glasses', 'ab7d763277d30bc748b5bd353a32eec6f9039fad', '{}'),
(79, 'user_helmet', 'ab7d763277d30bc748b5bd353a32eec6f9039fad', '{}'),
(80, 'user_mask', 'ab7d763277d30bc748b5bd353a32eec6f9039fad', '{}'),
(81, 'property', 'e9c42e433167ee744dba4011725cb75e1d9274ed', '{}'),
(82, 'user_ears', 'e9c42e433167ee744dba4011725cb75e1d9274ed', '{}'),
(83, 'user_glasses', 'e9c42e433167ee744dba4011725cb75e1d9274ed', '{}'),
(84, 'user_helmet', 'e9c42e433167ee744dba4011725cb75e1d9274ed', '{}'),
(85, 'user_mask', 'e9c42e433167ee744dba4011725cb75e1d9274ed', '{}'),
(86, 'property', '6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', '{}'),
(87, 'user_ears', '6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', '{}'),
(88, 'user_glasses', '6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', '{}'),
(89, 'user_helmet', '6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', '{}'),
(90, 'user_mask', '6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', '{}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doorscreator_buildings`
--

CREATE TABLE `doorscreator_buildings` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `default_state` tinyint(4) NOT NULL DEFAULT 0,
  `allowed_jobs` longtext DEFAULT NULL,
  `allowed_gangs` longtext DEFAULT NULL,
  `required_item` varchar(50) DEFAULT NULL,
  `requires_job_and_item` int(11) NOT NULL DEFAULT 0,
  `required_code` varchar(50) DEFAULT NULL,
  `auto_closure_seconds` int(11) DEFAULT NULL,
  `requires_identifier` int(11) NOT NULL DEFAULT 0,
  `allowed_identifiers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `doorscreator_buildings`
--

INSERT INTO `doorscreator_buildings` (`id`, `label`, `default_state`, `allowed_jobs`, `allowed_gangs`, `required_item`, `requires_job_and_item`, `required_code`, `auto_closure_seconds`, `requires_identifier`, `allowed_identifiers`) VALUES
(1, 'ADAC', 1, '{\"adac\":true}', NULL, NULL, 0, NULL, NULL, 0, '[]'),
(2, 'Blonds Tuning Garage', 1, '{\"mechanic\":{\"2\":true,\"10\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"8\":true,\"9\":true,\"12\":true,\"11\":true,\"3\":true,\"1\":true}}', NULL, NULL, 0, NULL, 3, 1, '{\"e598fbbe436603d025acb703ebb6ef2fc337c1d0\":true}'),
(3, 'Polizei', 1, '{\"polizei\":true}', NULL, NULL, 0, NULL, 5, 0, '[]'),
(4, 'Blond´s Haus', 1, '{\"mechanic\":{\"12\":true}}', NULL, NULL, 0, NULL, 3, 1, '{\"e598fbbe436603d025acb703ebb6ef2fc337c1d0\":true}'),
(5, 'Bennys am Hafen PLZ.10071', 1, '{\"mechanic\":true}', NULL, NULL, 0, NULL, NULL, 1, '{\"e598fbbe436603d025acb703ebb6ef2fc337c1d0\":true,\"94aa00d10f636f0acd4f8b7446724e62aae88114\":true,\"722c42c644c33d8e39fbec94459d97c156a62462\":true}'),
(6, 'RedLine Tuner', 1, '{\"mechanic\":true}', NULL, NULL, 0, NULL, 4, 1, '{\"e598fbbe436603d025acb703ebb6ef2fc337c1d0\":true}'),
(7, 'Taxi', 1, '{\"taxi\":true}', NULL, NULL, 0, NULL, 2, 1, '[]');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doorscreator_doors`
--

CREATE TABLE `doorscreator_doors` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `doors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `default_state` tinyint(4) NOT NULL DEFAULT 0,
  `icon_coords` longtext NOT NULL,
  `max_distance` int(11) NOT NULL,
  `allowed_jobs` longtext DEFAULT NULL,
  `allowed_gangs` longtext DEFAULT NULL,
  `required_item` varchar(50) DEFAULT NULL,
  `requires_job_and_item` int(11) NOT NULL DEFAULT 0,
  `required_code` varchar(50) DEFAULT NULL,
  `auto_closure_seconds` int(11) DEFAULT NULL,
  `parent_building` int(11) DEFAULT NULL,
  `is_sliding` int(11) NOT NULL DEFAULT 0,
  `display_icon` tinyint(4) NOT NULL DEFAULT 1,
  `requires_identifier` int(11) NOT NULL DEFAULT 0,
  `allowed_identifiers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `vault` longtext DEFAULT NULL,
  `can_be_lockpicked` int(11) NOT NULL DEFAULT 1,
  `alert_police_on_lockpick` int(11) NOT NULL DEFAULT 0,
  `shop_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `doorscreator_doors`
--

INSERT INTO `doorscreator_doors` (`id`, `label`, `doors`, `default_state`, `icon_coords`, `max_distance`, `allowed_jobs`, `allowed_gangs`, `required_item`, `requires_job_and_item`, `required_code`, `auto_closure_seconds`, `parent_building`, `is_sliding`, `display_icon`, `requires_identifier`, `allowed_identifiers`, `vault`, `can_be_lockpicked`, `alert_police_on_lockpick`, `shop_id`) VALUES
(1, 'ADAC BÜRO', '{\"91650\":{\"coords\":{\"z\":43.6,\"x\":-334.61,\"y\":-154.37},\"model\":1142444161},\"91906\":{\"coords\":{\"z\":43.6,\"x\":-334.88,\"y\":-156.7},\"model\":1142444161}}', 1, '{\"z\":44.78,\"x\":-334.74,\"y\":-155.53}', 4, '{\"adac\":{\"4\":true,\"3\":true}}', NULL, NULL, 0, NULL, NULL, 1, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(2, 'ADAC Umkleide', '{\"103170\":{\"coords\":{\"z\":43.6,\"x\":-334.99,\"y\":-162.28},\"model\":1142444161}}', 0, '{\"z\":44.78,\"x\":-335.04,\"y\":-161.69}', 4, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(3, 'ADAC - Tor 1', '{\"43522\":{\"coords\":{\"y\":-134.8,\"x\":-356.14,\"z\":38.01},\"model\":1542392972}}', 0, '{\"y\":-134.8,\"x\":-356.13,\"z\":40.31}', 4, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 1, 0, '[]', NULL, 1, 0, NULL),
(4, 'ADAC - Tor 2', '{\"44546\":{\"coords\":{\"y\":-117.3,\"x\":-349.8,\"z\":38.02},\"model\":1542392972}}', 1, '{\"y\":-117.29,\"x\":-349.8,\"z\":40.32}', 4, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 1, 0, '[]', NULL, 1, 0, NULL),
(5, 'ADAC - TOR 3', '{\"46594\":{\"coords\":{\"y\":-102.13,\"x\":-364.97,\"z\":38.01},\"model\":260701421}}', 0, '{\"y\":-102.13,\"x\":-364.97,\"z\":40.61}', 4, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 1, 0, '[]', NULL, 1, 0, NULL),
(6, 'ADAC - Tor 4', '{\"47618\":{\"coords\":{\"y\":-99.59,\"x\":-371.95,\"z\":38.01},\"model\":260701421}}', 0, '{\"y\":-99.59,\"x\":-371.95,\"z\":40.62}', 4, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 1, 0, '[]', NULL, 1, 0, NULL),
(7, 'ADAC - Tor 5', '{\"43266\":{\"coords\":{\"y\":-154.94,\"x\":-360.22,\"z\":37.73},\"model\":260701421}}', 0, '{\"y\":-154.94,\"x\":-360.22,\"z\":40.33}', 8, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 0, 0, NULL),
(8, 'ADAC - Haupttor', '{\"644866\":{\"coords\":{\"y\":-160.72,\"x\":-359.13,\"z\":37.14},\"model\":-878463029},\"644098\":{\"coords\":{\"y\":-164,\"x\":-364.4,\"z\":37.12},\"model\":-878463029},\"645122\":{\"coords\":{\"y\":-160.83,\"x\":-359.07,\"z\":37.14},\"model\":-878463029},\"644610\":{\"coords\":{\"y\":-162.3,\"x\":-361.8,\"z\":37.13},\"model\":-878463029},\"638978\":{\"coords\":{\"y\":-163.89,\"x\":-364.47,\"z\":37.12},\"model\":-878463029},\"644354\":{\"coords\":{\"y\":-162.42,\"x\":-361.74,\"z\":37.13},\"model\":-878463029},\"7682\":{\"coords\":{\"y\":-166.84,\"x\":-369.38,\"z\":38.41},\"model\":1526539404}}', 0, '{\"y\":-164.01,\"x\":-364.66,\"z\":37.42}', 8, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 0, 0, '[]', NULL, 0, 0, NULL),
(9, 'ADAC - Zweiteeinfahrt', '{\"363522\":{\"coords\":{\"y\":-103.59,\"x\":-393.6,\"z\":37.73},\"model\":-878463029},\"364290\":{\"coords\":{\"y\":-105,\"x\":-396.37,\"z\":37.71},\"model\":-878463029},\"364546\":{\"coords\":{\"y\":-103.45,\"x\":-393.68,\"z\":37.71},\"model\":-878463029},\"363266\":{\"coords\":{\"y\":-105.14,\"x\":-396.29,\"z\":37.73},\"model\":-878463029},\"364034\":{\"coords\":{\"y\":-106.56,\"x\":-399.06,\"z\":37.7},\"model\":-878463029},\"363010\":{\"coords\":{\"y\":-106.7,\"x\":-398.98,\"z\":37.72},\"model\":-878463029}}', 0, '{\"y\":-106.06,\"x\":-397.87,\"z\":37.69}', 8, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 0, 0, '[]', NULL, 0, 0, NULL),
(10, 'Tor 1', '{\"104194\":{\"model\":-1512891070,\"coords\":{\"z\":10.81,\"x\":-973.98,\"y\":-2057.94}},\"103170\":{\"model\":-1512891070,\"coords\":{\"z\":10.79,\"x\":-965.68,\"y\":-2066.22}}}', 1, '{\"z\":10.27,\"x\":-966.09,\"y\":-2066.45}', 6, '{\"mechanic\":{\"2\":true,\"10\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"8\":true,\"9\":true,\"12\":true,\"11\":true,\"3\":true,\"1\":true}}', NULL, NULL, 0, NULL, NULL, 2, 1, 1, 1, '{\"e598fbbe436603d025acb703ebb6ef2fc337c1d0\":true}', NULL, 1, 0, NULL),
(11, 'Tor 2', '{\"104194\":{\"model\":-1512891070,\"coords\":{\"z\":10.77,\"x\":-973.97,\"y\":-2057.93}}}', 0, '{\"z\":10.52,\"x\":-974.12,\"y\":-2057.78}', 8, NULL, NULL, NULL, 0, NULL, NULL, 2, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(15, 'Eingang 2', '{\"317442\":{\"model\":-1435662972,\"coords\":{\"z\":9.98,\"x\":-915,\"y\":-2036.6}}}', 0, '{\"z\":0,\"x\":0,\"y\":0}', 4, NULL, NULL, NULL, 0, NULL, NULL, 2, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(18, 'Büro Chef', '{\"74754\":{\"model\":1781444600,\"coords\":{\"z\":15.01,\"x\":-926.16,\"y\":-2039.98}}}', 0, '{\"z\":15.05,\"x\":-925.69,\"y\":-2039.52}', 4, NULL, NULL, NULL, 0, NULL, NULL, 2, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(19, 'Besprechungsraum', '{\"323586\":{\"model\":928071338,\"coords\":{\"z\":15.01,\"x\":-920.4,\"y\":-2018.47}},\"323842\":{\"model\":1222074806,\"coords\":{\"z\":15.01,\"x\":-918.55,\"y\":-2020.31}}}', 0, '{\"z\":15.06,\"x\":-919.48,\"y\":-2019.39}', 2, NULL, NULL, NULL, 0, NULL, NULL, 2, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(20, 'Büro 1', '{\"63746\":{\"model\":1781444600,\"coords\":{\"z\":15,\"x\":-928.81,\"y\":-2030.25}}}', 0, '{\"z\":14.76,\"x\":-928.13,\"y\":-2030.06}', 2, NULL, NULL, NULL, 0, NULL, NULL, 2, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(21, 'Büro 2', '{\"317186\":{\"model\":1781444600,\"coords\":{\"z\":15,\"x\":-924.9,\"y\":-2026.34}}}', 0, '{\"z\":14.76,\"x\":-924.61,\"y\":-2025.85}', 2, NULL, NULL, NULL, 0, NULL, NULL, 2, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(22, 'Hubschrauberlandeplatz', '{\"14082\":{\"model\":-747536843,\"coords\":{\"z\":9.65,\"x\":-939.87,\"y\":-2035.35}},\"13826\":{\"model\":-747536843,\"coords\":{\"z\":9.65,\"x\":-938.05,\"y\":-2033.53}}}', 0, '{\"z\":9.62,\"x\":-938.96,\"y\":-2034.44}', 2, NULL, NULL, NULL, 0, NULL, NULL, 2, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(23, 'Eingang', '{\"12802\":{\"model\":-417530142,\"coords\":{\"z\":9.98,\"x\":-916.98,\"y\":-2038.58}},\"317442\":{\"model\":-1435662972,\"coords\":{\"z\":9.98,\"x\":-915,\"y\":-2036.6}}}', 0, '{\"z\":9.71,\"x\":-916.21,\"y\":-2037.85}', 4, NULL, NULL, NULL, 0, NULL, NULL, 2, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(24, 'Umkleide', '{\"587778\":{\"model\":-1543859032,\"coords\":{\"z\":25.86,\"y\":-983.2,\"x\":472.99}}}', 0, '{\"z\":25.86,\"y\":-983.19,\"x\":472.34}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(25, 'Zelle 1', '{\"2216962\":{\"model\":-1988553564,\"coords\":{\"z\":34.34,\"y\":-989.14,\"x\":462.15}}}', 0, '{\"z\":34.34,\"y\":-989.12,\"x\":461.5}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(26, 'Zelle 2', '{\"2210050\":{\"model\":-1988553564,\"coords\":{\"z\":34.34,\"y\":-989.14,\"x\":456.22}}}', 0, '{\"z\":34.34,\"y\":-989.12,\"x\":455.58}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(27, 'Zelle 3', '{\"2063362\":{\"model\":-1988553564,\"coords\":{\"z\":34.34,\"y\":-989.14,\"x\":450.29}}}', 0, '{\"z\":34.34,\"y\":-989.12,\"x\":449.64}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(28, 'Zelle 4', '{\"1997058\":{\"model\":-884718443,\"coords\":{\"z\":34.34,\"y\":-984.67,\"x\":448.99}}}', 0, '{\"z\":34.34,\"y\":-984.79,\"x\":449.96}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(29, 'Tür zu den Vernehmungszimmern', '{\"1990146\":{\"coords\":{\"y\":-986.3,\"x\":445.35,\"z\":34.32},\"model\":165994623}}', 0, '{\"y\":-986.95,\"x\":445.34,\"z\":34.32}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(30, 'Zellendurchgang', '{\"1099522\":{\"model\":-53345114,\"coords\":{\"z\":26.48,\"x\":481.01,\"y\":-1004.12}}}', 0, '{\"z\":26.44,\"x\":481.6,\"y\":-1004.15}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(31, 'Tür Gegenüberstellung', '{\"1230594\":{\"model\":-288803980,\"coords\":{\"z\":26.41,\"x\":479.06,\"y\":-1003.17}}}', 0, '{\"z\":26.42,\"x\":479.06,\"y\":-1002.57}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(32, 'Haupttür zu den Zellen', '{\"1252866\":{\"model\":149284793,\"coords\":{\"z\":26.41,\"x\":479.66,\"y\":-997.91}},\"1234946\":{\"model\":149284793,\"coords\":{\"z\":26.41,\"x\":482.07,\"y\":-997.91}}}', 0, '{\"z\":26.42,\"x\":480.87,\"y\":-997.91}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(33, 'Vernehmungszimmer', '{\"1099266\":{\"model\":-1406685646,\"coords\":{\"z\":26.41,\"x\":482.67,\"y\":-995.73}}}', 0, '{\"z\":26.42,\"x\":482.67,\"y\":-996.33}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(34, 'Aufzeichungsraum Vernehmungszimmer', '{\"1659394\":{\"coords\":{\"y\":-984.85,\"x\":439.89,\"z\":34.32},\"model\":165994623}}', 0, '{\"y\":-984.86,\"x\":440.54,\"z\":34.32}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(35, 'Vernehmungszimmer 2', '{\"1664770\":{\"coords\":{\"y\":-995.26,\"x\":441.36,\"z\":34.31},\"model\":-1543859032}}', 0, '{\"y\":-994.62,\"x\":441.36,\"z\":34.31}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(36, 'Aufzeichnungsraum Vernehmung 2', '{\"1662466\":{\"coords\":{\"y\":-991.08,\"x\":441.36,\"z\":34.32},\"model\":165994623}}', 0, '{\"y\":-990.44,\"x\":441.36,\"z\":34.32}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(37, 'Aservatenkammer', '{\"2166530\":{\"model\":-1543859032,\"coords\":{\"z\":34.35,\"y\":-1002.59,\"x\":472.21}}}', 0, '{\"z\":34.35,\"y\":-1002.59,\"x\":471.57}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(39, 'Tür zur Aservatenkammer und Vernehmungszimmern', '{\"1252354\":{\"model\":-96679321,\"coords\":{\"z\":26.41,\"x\":471.38,\"y\":-987.44}},\"1263362\":{\"model\":-1406685646,\"coords\":{\"z\":26.41,\"x\":471.38,\"y\":-985.03}}}', 0, '{\"z\":26.42,\"x\":471.38,\"y\":-986.23}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(40, 'Büro Gegenüberstellung', '{\"1544706\":{\"model\":149284793,\"coords\":{\"z\":26.41,\"x\":478.29,\"y\":-997.91}}}', 0, '{\"z\":26.42,\"x\":477.69,\"y\":-997.91}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(41, 'Parkplatz Tiefgarage', '{\"1237506\":{\"model\":1830360419,\"coords\":{\"x\":464.16,\"z\":26.37,\"y\":-974.67}}}', 0, '{\"x\":464.16,\"z\":26.42,\"y\":-975.27}', 8, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(42, 'Tür zur Tiefgarage', '{\"2159618\":{\"model\":165994623,\"coords\":{\"z\":25.86,\"y\":-989.32,\"x\":464.88}}}', 0, '{\"z\":25.86,\"y\":-988.68,\"x\":464.88}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(43, 'Tor Einfahrt Tiefgarage links', '{\"1943042\":{\"model\":1356380196,\"coords\":{\"z\":26.7,\"y\":-1001.14,\"x\":452.3}}}', 0, '{\"z\":26.69,\"y\":-1001.14,\"x\":452.3}', 8, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(44, 'Tor Ausfahrt Tiefgarage links', '{\"2213122\":{\"model\":1356380196,\"coords\":{\"z\":26.65,\"y\":-1001.13,\"x\":447.48}}}', 0, '{\"z\":26.64,\"y\":-1001.13,\"x\":447.48}', 8, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(45, 'Wachbüro Zellentrackt', '{\"1178370\":{\"model\":-288803980,\"coords\":{\"z\":26.41,\"x\":475.95,\"y\":-1006.94}}}', 0, '{\"z\":26.42,\"x\":475.35,\"y\":-1006.94}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(46, 'Büro Wachhabener Zellentrackt', '{\"1092610\":{\"model\":-1406685646,\"coords\":{\"z\":26.41,\"x\":475.95,\"y\":-1010.82}}}', 0, '{\"z\":26.42,\"x\":475.35,\"y\":-1010.83}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(47, 'Tür zu den Wachhabenen der Zellen', '{\"1238018\":{\"model\":149284793,\"coords\":{\"z\":26.41,\"x\":471.38,\"y\":-1010.2}},\"1254402\":{\"model\":149284793,\"coords\":{\"z\":26.41,\"x\":471.37,\"y\":-1007.79}}}', 0, '{\"z\":26.42,\"x\":471.37,\"y\":-1009}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(48, 'Seiteneingang', '{\"1124098\":{\"model\":-692649124,\"coords\":{\"z\":26.48,\"x\":467.37,\"y\":-1014.41}},\"1102338\":{\"model\":-692649124,\"coords\":{\"z\":26.48,\"x\":469.77,\"y\":-1014.41}}}', 0, '{\"z\":26.53,\"x\":468.57,\"y\":-1014.41}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(49, 'Seitentor zur Seitenstrasse ', '{\"329218\":{\"model\":-1603817716,\"coords\":{\"z\":27.15,\"y\":-1017.21,\"x\":488.89}}}', 0, '{\"z\":28.7,\"y\":-1019.96,\"x\":488.92}', 3, NULL, NULL, NULL, 0, NULL, NULL, 3, 1, 1, 0, '[]', NULL, 0, 0, NULL),
(50, 'Waffenkammer Tür 1', '{\"612098\":{\"model\":-1543859032,\"coords\":{\"z\":25.86,\"y\":-997.32,\"x\":487.55}}}', 0, '{\"z\":25.86,\"y\":-997.32,\"x\":486.91}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(51, 'Waffenkammer Tür 2', '{\"635394\":{\"model\":-1543859032,\"coords\":{\"z\":25.86,\"y\":-1002.64,\"x\":487.52}}}', 0, '{\"z\":25.86,\"y\":-1002.64,\"x\":486.88}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(52, 'Tür zur Schießbahn', '{\"1329410\":{\"model\":-692649124,\"coords\":{\"z\":30.79,\"x\":488.02,\"y\":-1002.9}},\"1097986\":{\"model\":-692649124,\"coords\":{\"z\":30.79,\"x\":485.61,\"y\":-1002.9}}}', 0, '{\"z\":30.83,\"x\":486.82,\"y\":-1002.84}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(53, 'Boss Büro', '{\"2100482\":{\"model\":165994623,\"coords\":{\"z\":30.82,\"y\":-999.51,\"x\":472.26}}}', 1, '{\"z\":30.82,\"y\":-999.51,\"x\":471.62}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(54, 'Archiv', '{\"1252610\":{\"model\":-96679321,\"coords\":{\"z\":30.82,\"x\":452.27,\"y\":-995.53}}}', 0, '{\"z\":30.83,\"x\":452.69,\"y\":-995.95}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(55, 'Aufenthaltsraum', '{\"1120258\":{\"model\":-1406685646,\"coords\":{\"z\":30.82,\"x\":458.65,\"y\":-976.89}}}', 0, '{\"z\":30.83,\"x\":458.65,\"y\":-977.49}', 1, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(56, 'Seitentür zur Strasse Keller', '{\"381954\":{\"model\":-2023754432,\"coords\":{\"z\":26.54,\"y\":-1014.55,\"x\":469.95}},\"453378\":{\"model\":-2023754432,\"coords\":{\"z\":26.54,\"y\":-1014.55,\"x\":467.35}}}', 0, '{\"z\":26.54,\"y\":-1014.54,\"x\":468.65}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(57, 'Empfang', '{\"443138\":{\"model\":-1543859032,\"coords\":{\"z\":30.81,\"y\":-994.3,\"x\":442.64}}}', 0, '{\"z\":30.81,\"y\":-994.3,\"x\":443.28}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(58, 'Haupteingang', '{\"1161730\":{\"model\":-1547307588,\"coords\":{\"z\":30.82,\"x\":434.74,\"y\":-983.08}},\"1163010\":{\"model\":-1547307588,\"coords\":{\"z\":30.82,\"x\":434.74,\"y\":-980.76}}}', 0, '{\"z\":30.82,\"x\":434.74,\"y\":-981.92}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(59, 'Tür zu den Diensträumen', '{\"428290\":{\"model\":165994623,\"coords\":{\"z\":30.82,\"y\":-994.28,\"x\":441.77}}}', 0, '{\"z\":30.82,\"y\":-994.28,\"x\":441.12}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(60, 'Tür zur Polizei 2 Vorflur', '{\"1101826\":{\"model\":-96679321,\"coords\":{\"z\":30.82,\"x\":440.52,\"y\":-986.23}}}', 0, '{\"z\":30.83,\"x\":441.12,\"y\":-986.24}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(61, 'Seitentür 2 zur Strasse', '{\"408322\":{\"model\":-165604314,\"coords\":{\"z\":30.8,\"y\":-998.68,\"x\":441.24}},\"404226\":{\"model\":1388858739,\"coords\":{\"z\":30.8,\"y\":-998.68,\"x\":439.01}}}', 0, '{\"z\":30.8,\"y\":-998.68,\"x\":440.13}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(62, 'Presse Zimme Erdgeschoss', '{\"1100802\":{\"model\":-288803980,\"coords\":{\"z\":30.82,\"x\":438.2,\"y\":-996.32}},\"1099778\":{\"model\":-288803980,\"coords\":{\"z\":30.82,\"x\":438.2,\"y\":-993.91}}}', 0, '{\"z\":30.83,\"x\":438.17,\"y\":-995.12}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(63, 'Tür zum Helipad Dach', '{\"2051586\":{\"model\":-340230128,\"coords\":{\"z\":43.84,\"y\":-983.37,\"x\":464.27}}}', 0, '{\"z\":43.84,\"y\":-984.02,\"x\":464.27}', 3, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(64, 'Meeting Room 1.OG', '{\"1262082\":{\"model\":-1406685646,\"coords\":{\"z\":35.1,\"x\":459.95,\"y\":-981.07}}}', 0, '{\"z\":35.11,\"x\":459.34,\"y\":-981.07}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(65, 'SEK Meeting Room 2 . 1 OG', '{\"1113090\":{\"coords\":{\"y\":-990.71,\"x\":459.95,\"z\":35.1},\"model\":-96679321}}', 0, '{\"y\":0,\"x\":0,\"z\":0}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(66, 'Breefing Room 1.OG', '{\"1120514\":{\"model\":-96679321,\"coords\":{\"z\":35.1,\"x\":448.99,\"y\":-981.58}}}', 0, '{\"z\":35.11,\"x\":449.41,\"y\":-982.01}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(67, 'Breefing Room 2. 1OG', '{\"1249538\":{\"model\":-1406685646,\"coords\":{\"z\":35.1,\"x\":448.99,\"y\":-990.2}}}', 0, '{\"z\":35.11,\"x\":449.41,\"y\":-989.77}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(68, 'Leitstelle 1.OG', '{\"1130754\":{\"model\":-96679321,\"coords\":{\"z\":35.1,\"x\":448.98,\"y\":-995.53}}}', 0, '{\"z\":35.11,\"x\":449.41,\"y\":-995.95}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(69, 'Meeting Room 1.OG', '{\"1793538\":{\"coords\":{\"y\":-999.5,\"x\":482.22,\"z\":30.82},\"model\":165994623},\"1773058\":{\"coords\":{\"y\":-999.49,\"x\":479.64,\"z\":30.82},\"model\":165994623}}', 0, '{\"y\":-999.5,\"x\":480.93,\"z\":30.82}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(70, 'Meeting Room Seite EG', '{\"496642\":{\"model\":165994623,\"coords\":{\"z\":30.82,\"y\":-985.11,\"x\":462.02}}}', 0, '{\"z\":30.82,\"y\":-985.11,\"x\":462.66}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(71, 'Forensic Tür EG', '{\"1262850\":{\"model\":-96679321,\"coords\":{\"z\":30.82,\"x\":479.75,\"y\":-988.62}},\"1253890\":{\"model\":-1406685646,\"coords\":{\"z\":30.82,\"x\":479.75,\"y\":-986.22}}}', 0, '{\"z\":30.83,\"x\":479.75,\"y\":-987.42}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(72, 'Badezimmer', '{\"1544450\":{\"model\":149284793,\"coords\":{\"z\":30.82,\"x\":475.38,\"y\":-984.37}},\"1251842\":{\"model\":149284793,\"coords\":{\"z\":30.82,\"x\":472.98,\"y\":-984.37}}}', 0, '{\"z\":30.83,\"x\":474.18,\"y\":-984.34}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(73, 'Seitenflur zum Badezimmer und Meeting Room', '{\"1131010\":{\"model\":-288803980,\"coords\":{\"z\":30.82,\"x\":469.44,\"y\":-985.03}},\"1258498\":{\"model\":-288803980,\"coords\":{\"z\":30.82,\"x\":469.44,\"y\":-987.44}}}', 0, '{\"z\":30.83,\"x\":469.45,\"y\":-986.23}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 1, 0, NULL),
(74, 'Blonds Garage', '{\"1977090\":{\"coords\":{\"z\":231.21,\"x\":-674.37,\"y\":907.17},\"model\":-915091986}}', 0, '{\"z\":231.21,\"x\":-674.37,\"y\":907.17}', 6, NULL, NULL, NULL, 0, NULL, NULL, 4, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(75, 'Bennys Tuner am Hafen Tor.1', '{\"1199874\":{\"coords\":{\"x\":154.81,\"z\":8.5,\"y\":-3023.89},\"model\":-456733639}}', 0, '{\"x\":154.81,\"z\":8.5,\"y\":-3023.89}', 2, NULL, NULL, NULL, 0, NULL, NULL, 5, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(76, 'Bennys Tuner am Hafen Tor.2', '{\"12034\":{\"coords\":{\"x\":154.81,\"y\":-3034.05,\"z\":8.5},\"model\":-456733639}}', 0, '{\"x\":154.81,\"y\":-3034.05,\"z\":8.5}', 4, NULL, NULL, NULL, 0, NULL, NULL, 5, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(77, 'Bennys Tuner am Hafen kl.Tür', '{\"12290\":{\"coords\":{\"x\":154.93,\"y\":-3017.32,\"z\":7.19},\"model\":-2023754432}}', 0, '{\"x\":154.93,\"y\":-3017.97,\"z\":7.19}', 2, NULL, NULL, NULL, 0, NULL, NULL, 5, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(78, 'Umkleide EG RedLine Tuner', '{\"123906\":{\"model\":-1687047623,\"coords\":{\"y\":-917.8,\"x\":-598.1,\"z\":24.04}}}', 0, '{\"y\":-917.15,\"x\":-598.1,\"z\":24.04}', 2, NULL, NULL, NULL, 0, NULL, NULL, 6, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(79, 'Büro EG RedLine Tuner', '{\"123650\":{\"model\":-1687047623,\"coords\":{\"y\":-923.02,\"x\":-598.1,\"z\":24.04}}}', 0, '{\"y\":-922.37,\"x\":-598.09,\"z\":24.04}', 2, NULL, NULL, NULL, 0, NULL, NULL, 6, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(80, 'Werkstatt Tor RedLine Tuner', '{\"45314\":{\"model\":-610223133,\"coords\":{\"y\":-930.16,\"x\":-561.11,\"z\":25.59}}}', 0, '{\"y\":-930.16,\"x\":-561.11,\"z\":25.59}', 4, NULL, NULL, NULL, 0, NULL, NULL, 6, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(81, 'Lager Empore RedLine Tuner', '{\"124162\":{\"model\":634417522,\"coords\":{\"y\":-936.84,\"x\":-587.99,\"z\":28.29}}}', 0, '{\"y\":-936.2,\"x\":-587.99,\"z\":28.29}', 2, NULL, NULL, NULL, 0, NULL, NULL, 6, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(82, 'Werkbank RedLine Tuner', '{\"123394\":{\"model\":-1264687887,\"coords\":{\"y\":-925.56,\"x\":-590.19,\"z\":27.14}}}', 0, '{\"y\":-926.02,\"x\":-589.14,\"z\":28.35}', 2, NULL, NULL, NULL, 0, NULL, NULL, 6, 1, 1, 0, '[]', NULL, 0, 0, NULL),
(83, 'Tiefgarage RedLine Tuner', '{\"287490\":{\"model\":1827434119,\"coords\":{\"y\":-885.94,\"x\":-532.64,\"z\":26.32}}}', 0, '{\"y\":-885.94,\"x\":-532.62,\"z\":26.27}', 4, NULL, NULL, NULL, 0, NULL, NULL, 6, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(84, 'Event Halle RedLine Tuner', '{\"130306\":{\"model\":4787313,\"coords\":{\"y\":-887.59,\"x\":-589.78,\"z\":16.23}},\"128002\":{\"model\":4787313,\"coords\":{\"y\":-890.75,\"x\":-589.78,\"z\":16.23}}}', 1, '{\"y\":-888.38,\"x\":-589.78,\"z\":17.93}', 4, '{\"mechanic\":{\"11\":true,\"10\":true,\"12\":true}}', NULL, NULL, 0, NULL, 3, 6, 1, 1, 1, '{\"e598fbbe436603d025acb703ebb6ef2fc337c1d0\":true}', NULL, 0, 0, NULL),
(85, 'Besprechungsraum Evenhalle RedLine Tuner', '{\"128770\":{\"model\":1282049587,\"coords\":{\"y\":-885.86,\"x\":-596.19,\"z\":17.51}}}', 0, '{\"y\":-886.51,\"x\":-596.19,\"z\":17.51}', 2, NULL, NULL, NULL, 0, NULL, NULL, 6, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(86, 'Küche/Bar Eventhalle RedLine Tuner', '{\"129026\":{\"model\":1282049587,\"coords\":{\"y\":-892.86,\"x\":-596.18,\"z\":17.51}}}', 0, '{\"y\":-893.51,\"x\":-596.18,\"z\":17.51}', 2, NULL, NULL, NULL, 0, NULL, NULL, 6, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(87, 'Büro 1 Eventhalle RedLine Tuner', '{\"129282\":{\"model\":1282049587,\"coords\":{\"y\":-895.01,\"x\":-589.77,\"z\":17.51}}}', 0, '{\"y\":-895.66,\"x\":-589.78,\"z\":17.51}', 2, NULL, NULL, NULL, 0, NULL, NULL, 6, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(88, 'Büro 2 Eventhalle RedLine Tuner', '{\"129538\":{\"model\":1282049587,\"coords\":{\"y\":-902.02,\"x\":-589.78,\"z\":17.51}}}', 0, '{\"y\":-902.67,\"x\":-589.78,\"z\":17.51}', 2, NULL, NULL, NULL, 0, NULL, NULL, 6, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(89, 'Showroom RedLine Tuner', '{\"128258\":{\"model\":4787313,\"coords\":{\"y\":-909.23,\"x\":-594.6,\"z\":16.25}},\"128514\":{\"model\":4787313,\"coords\":{\"y\":-909.22,\"x\":-591.45,\"z\":16.25}}}', 0, '{\"y\":-909.23,\"x\":-592.23,\"z\":17.95}', 3, NULL, NULL, NULL, 0, NULL, NULL, 6, 1, 1, 0, '[]', NULL, 0, 0, NULL),
(90, 'Werkstatt Tür RedLine Tuner', '{\"2126338\":{\"model\":1387498002,\"coords\":{\"y\":-935.54,\"x\":-588.08,\"z\":22.89}},\"2134530\":{\"model\":1693396617,\"coords\":{\"y\":-938.56,\"x\":-588.08,\"z\":22.89}}}', 0, '{\"y\":-937.05,\"x\":-588.02,\"z\":24.04}', 3, NULL, NULL, NULL, 0, NULL, NULL, 6, 1, 1, 0, '[]', NULL, 0, 0, NULL),
(91, 'Taxi - Hof Tor', '{\"36354\":{\"model\":1286535678,\"coords\":{\"x\":397.88,\"y\":-1607.38,\"z\":28.34}}}', 0, '{\"x\":400.79,\"y\":-1609.74,\"z\":29.66}', 3, NULL, NULL, NULL, 0, NULL, NULL, 7, 1, 1, 0, '[]', NULL, 0, 0, NULL),
(92, 'Taxi-Hof Seitentür', '{\"90114\":{\"model\":-1156020871,\"coords\":{\"x\":391.86,\"y\":-1636.07,\"z\":29.97}}}', 0, '{\"x\":392.4,\"y\":-1635.43,\"z\":29.97}', 2, NULL, NULL, NULL, 0, NULL, NULL, 7, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(93, 'Taxi Schulungsraum Tür zum Hof', '{\"149506\":{\"model\":-538477509,\"coords\":{\"x\":369.89,\"y\":-1606.26,\"z\":29.43}},\"149762\":{\"model\":-538477509,\"coords\":{\"x\":368.21,\"y\":-1608.25,\"z\":29.43}}}', 0, '{\"x\":369.05,\"y\":-1607.25,\"z\":29.43}', 2, NULL, NULL, NULL, 0, NULL, NULL, 7, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(94, 'Taxi Umkleide', '{\"61186\":{\"model\":-1320876379,\"coords\":{\"x\":374.28,\"y\":-1604.21,\"z\":29.45}}}', 0, '{\"x\":374.7,\"y\":-1603.71,\"z\":29.45}', 2, NULL, NULL, NULL, 0, NULL, NULL, 7, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(95, 'Taxi Meeting Raum', '{\"61442\":{\"model\":-1320876379,\"coords\":{\"x\":378.36,\"y\":-1598.04,\"z\":29.44}}}', 0, '{\"x\":378.87,\"y\":-1598.46,\"z\":29.44}', 2, NULL, NULL, NULL, 0, NULL, NULL, 7, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(96, 'Taxi Chef Büro', '{\"59394\":{\"model\":-1320876379,\"coords\":{\"x\":382.96,\"y\":-1604.31,\"z\":29.45}}}', 0, '{\"x\":383.39,\"y\":-1603.81,\"z\":29.45}', 2, NULL, NULL, NULL, 0, NULL, NULL, 7, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(97, 'Taxi Zentrale', '{\"148994\":{\"model\":-1320876379,\"coords\":{\"x\":369.41,\"y\":-1590.5,\"z\":29.44}}}', 0, '{\"x\":369.92,\"y\":-1590.93,\"z\":29.44}', 2, NULL, NULL, NULL, 0, NULL, NULL, 7, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(98, 'Taxi Haupteingang', '{\"62978\":{\"model\":-538477509,\"coords\":{\"x\":360.53,\"y\":-1586.03,\"z\":29.45}},\"63234\":{\"model\":-538477509,\"coords\":{\"x\":362.18,\"y\":-1584.06,\"z\":29.45}}}', 0, '{\"x\":361.29,\"y\":-1585.01,\"z\":29.45}', 2, NULL, NULL, NULL, 0, NULL, NULL, 7, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(99, 'Taxi Dach-Heli', '{\"60674\":{\"model\":749848321,\"coords\":{\"x\":378.63,\"y\":-1602.42,\"z\":37.1}}}', 0, '{\"x\":379.03,\"y\":-1601.95,\"z\":37.08}', 2, NULL, NULL, NULL, 0, NULL, NULL, 7, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(100, 'Waffenkammer Tür 3', '{\"621570\":{\"model\":-1543859032,\"coords\":{\"z\":25.85,\"y\":-1006.21,\"x\":482.6}}}', 0, '{\"z\":25.85,\"y\":-1005.57,\"x\":482.6}', 4, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(101, 'Haupttor', '{\"967426\":{\"model\":725274945,\"coords\":{\"y\":-1025.06,\"z\":28.34,\"x\":411.02}}}', 0, '{\"y\":-1021.44,\"z\":30.99,\"x\":411.02}', 8, NULL, NULL, NULL, 0, NULL, NULL, 3, 1, 1, 0, '[]', NULL, 0, 0, NULL),
(102, 'Tor Ausfahrt rechts', '{\"2019586\":{\"model\":1356380196,\"coords\":{\"z\":26.64,\"y\":-1001.25,\"x\":431.41}}}', 0, '{\"z\":26.64,\"y\":-1001.25,\"x\":431.41}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(103, 'Tor Einfahrt rechts', '{\"2214146\":{\"model\":1356380196,\"coords\":{\"z\":26.64,\"y\":-1001.25,\"x\":436.22}}}', 0, '{\"z\":26.64,\"y\":-1001.25,\"x\":436.22}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(104, 'Zelle 5', '{\"2041090\":{\"model\":-884718443,\"coords\":{\"z\":34.34,\"y\":-984.67,\"x\":454.92}}}', 0, '{\"z\":34.34,\"y\":-984.78,\"x\":455.89}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(105, 'Zelle 6', '{\"1937154\":{\"model\":-1988553564,\"coords\":{\"z\":34.34,\"y\":-984.67,\"x\":460.85}}}', 0, '{\"z\":34.34,\"y\":-984.69,\"x\":461.49}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(106, 'Hausflur Tür DG', '{\"2084098\":{\"model\":165994623,\"coords\":{\"z\":34.34,\"y\":-991.79,\"x\":468.18}}}', 0, '{\"z\":34.34,\"y\":-991.79,\"x\":467.54}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(107, 'Hausflur Tür 2 OG', '{\"2086146\":{\"model\":165994623,\"coords\":{\"z\":30.82,\"y\":-991.84,\"x\":468.18}}}', 0, '{\"z\":30.82,\"y\":-991.84,\"x\":467.54}', 2, NULL, NULL, NULL, 0, NULL, NULL, 3, 0, 1, 0, '[]', NULL, 0, 0, NULL),
(108, 'Seiteneingang 2', '{\"5340162\":{\"model\":1388858739,\"coords\":{\"y\":-998.68,\"z\":30.8,\"x\":441.6}},\"5476610\":{\"model\":-165604314,\"coords\":{\"y\":-998.68,\"z\":30.8,\"x\":443.84}}}', 0, '{\"y\":-998.68,\"z\":30.8,\"x\":442.72}', 4, NULL, NULL, NULL, 0, NULL, NULL, 3, 1, 1, 0, '[]', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `drugs_fields`
--

CREATE TABLE `drugs_fields` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `radius` int(11) NOT NULL,
  `object_model` varchar(50) NOT NULL,
  `max_objects` int(11) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `time` int(11) NOT NULL,
  `blip_name` varchar(50) DEFAULT NULL,
  `blip_sprite` int(11) DEFAULT NULL,
  `blip_color` int(11) DEFAULT NULL,
  `blip_scale` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `drugs_fields`
--

INSERT INTO `drugs_fields` (`id`, `label`, `coords`, `radius`, `object_model`, `max_objects`, `items`, `time`, `blip_name`, `blip_sprite`, `blip_color`, `blip_scale`) VALUES
(1, 'Alternative Cannabis', '{\"x\":321.23,\"z\":46.36,\"y\":4310.05}', 30, 'prop_weed_01', 15, '[{\"chances\":70,\"minQuantity\":2,\"maxQuantity\":5,\"name\":\"cannabis\"},{\"chances\":30,\"minQuantity\":2,\"maxQuantity\":5,\"name\":\"green_gelato_cannabis\"}]', 5, NULL, NULL, NULL, NULL),
(2, 'Opium', '{\"x\":2943.05,\"z\":38.51,\"y\":2781.55}', 40, 'prop_cs_plant_01', 15, '[{\"chances\":100,\"minQuantity\":1,\"maxQuantity\":5,\"name\":\"opium\"}]', 5, NULL, NULL, NULL, NULL),
(3, 'Kokain', '{\"x\":1541.48,\"y\":45.05,\"z\":187.44}', 20, 'prop_plant_01a', 8, '[{\"minQuantity\":1,\"maxQuantity\":5,\"chances\":100,\"name\":\"kokain\"}]', 5, NULL, NULL, NULL, NULL),
(4, 'Cannabis', '{\"x\":321.23,\"z\":46.36,\"y\":4310.05}', 25, 'prop_weed_02', 20, '[{\"maxQuantity\":5,\"name\":\"cannabis\",\"chances\":25,\"minQuantity\":1}]', 7, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Misuse of a horn', 30, 0),
(2, 'Illegally Crossing a continuous Line', 40, 0),
(3, 'Driving on the wrong side of the road', 250, 0),
(4, 'Illegal U-Turn', 250, 0),
(5, 'Illegally Driving Off-road', 170, 0),
(6, 'Refusing a Lawful Command', 30, 0),
(7, 'Illegally Stopping a Vehicle', 150, 0),
(8, 'Illegal Parking', 70, 0),
(9, 'Failing to Yield to the right', 70, 0),
(10, 'Failure to comply with Vehicle Information', 90, 0),
(11, 'Failing to stop at a Stop Sign ', 105, 0),
(12, 'Failing to stop at a Red Light', 130, 0),
(13, 'Illegal Passing', 100, 0),
(14, 'Driving an illegal Vehicle', 100, 0),
(15, 'Driving without a License', 1500, 0),
(16, 'Hit and Run', 800, 0),
(17, 'Exceeding Speeds Over < 5 mph', 90, 0),
(18, 'Exceeding Speeds Over 5-15 mph', 120, 0),
(19, 'Exceeding Speeds Over 15-30 mph', 180, 0),
(20, 'Exceeding Speeds Over > 30 mph', 300, 0),
(21, 'Impeding traffic flow', 110, 1),
(22, 'Public Intoxication', 90, 1),
(23, 'Disorderly conduct', 90, 1),
(24, 'Obstruction of Justice', 130, 1),
(25, 'Insults towards Civilans', 75, 1),
(26, 'Disrespecting of an LEO', 110, 1),
(27, 'Verbal Threat towards a Civilan', 90, 1),
(28, 'Verbal Threat towards an LEO', 150, 1),
(29, 'Providing False Information', 250, 1),
(30, 'Attempt of Corruption', 1500, 1),
(31, 'Brandishing a weapon in city Limits', 120, 2),
(32, 'Brandishing a Lethal Weapon in city Limits', 300, 2),
(33, 'No Firearms License', 600, 2),
(34, 'Possession of an Illegal Weapon', 700, 2),
(35, 'Possession of Burglary Tools', 300, 2),
(36, 'Grand Theft Auto', 1800, 2),
(37, 'Intent to Sell/Distrube of an illegal Substance', 1500, 2),
(38, 'Frabrication of an Illegal Substance', 1500, 2),
(39, 'Possession of an Illegal Substance ', 650, 2),
(40, 'Kidnapping of a Civilan', 1500, 2),
(41, 'Kidnapping of an LEO', 2000, 2),
(42, 'Robbery', 650, 2),
(43, 'Armed Robbery of a Store', 650, 2),
(44, 'Armed Robbery of a Bank', 1500, 2),
(45, 'Assault on a Civilian', 2000, 3),
(46, 'Assault of an LEO', 2500, 3),
(47, 'Attempt of Murder of a Civilian', 3000, 3),
(48, 'Attempt of Murder of an LEO', 5000, 3),
(49, 'Murder of a Civilian', 10000, 3),
(50, 'Murder of an LEO', 30000, 3),
(51, 'Involuntary manslaughter', 1800, 3),
(52, 'Fraud', 2000, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `harvestable_items`
--

CREATE TABLE `harvestable_items` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time_to_harvest` int(11) NOT NULL,
  `min_quantity` int(11) NOT NULL,
  `max_quantity` int(11) NOT NULL,
  `icon_type` int(11) NOT NULL,
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `scale` longtext NOT NULL,
  `bounce` int(11) NOT NULL DEFAULT 0,
  `follow_camera` int(11) NOT NULL DEFAULT 0,
  `rotate` int(11) NOT NULL DEFAULT 0,
  `color` varchar(100) NOT NULL,
  `opacity` int(11) NOT NULL DEFAULT 0,
  `blip_name` varchar(50) DEFAULT NULL,
  `blip_sprite` int(11) DEFAULT NULL,
  `blip_color` int(11) DEFAULT NULL,
  `blip_scale` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `harvestable_items`
--

INSERT INTO `harvestable_items` (`id`, `name`, `time_to_harvest`, `min_quantity`, `max_quantity`, `icon_type`, `coords`, `scale`, `bounce`, `follow_camera`, `rotate`, `color`, `opacity`, `blip_name`, `blip_sprite`, `blip_color`, `blip_scale`) VALUES
(1, 'codeine', 10, 1, 3, 1, '{\"y\":5594.27,\"x\":2193.94,\"z\":52.76}', '{\"y\":2,\"x\":2,\"z\":3}', 0, 0, 1, '{\"r\":226,\"g\":2,\"b\":242}', 104, NULL, NULL, NULL, NULL),
(2, 'liquid_sulfur', 3, 2, 5, 1, '{\"x\":421.98,\"y\":6465.9,\"z\":27.8}', '{\"x\":2,\"y\":2,\"z\":0.5}', 0, 0, 0, '{\"g\":246,\"b\":9,\"r\":242}', 104, NULL, NULL, NULL, NULL),
(3, 'ammonium_nitrate', 4, 3, 6, 1, '{\"x\":430.76,\"y\":6475.24,\"z\":27.79}', '{\"x\":2,\"y\":2,\"z\":0.5}', 0, 0, 0, '{\"g\":151,\"b\":1,\"r\":239}', 105, NULL, NULL, NULL, NULL),
(4, 'sodium_hydroxide', 3, 3, 6, 1, '{\"x\":3559.24,\"y\":3674.71,\"z\":27.12}', '{\"x\":2,\"y\":2,\"z\":0.5}', 0, 0, 0, '{\"g\":219,\"b\":160,\"r\":10}', 128, NULL, NULL, NULL, NULL),
(5, 'pseudoefedrine', 3, 3, 6, 1, '{\"x\":249.41,\"y\":-1374.78,\"z\":38.53}', '{\"x\":2,\"y\":2,\"z\":0.5}', 0, 0, 0, '{\"g\":70,\"b\":235,\"r\":0}', 95, NULL, NULL, NULL, NULL),
(6, 'carbon', 5, 5, 7, 1, '{\"x\":1127.9,\"y\":-2001.62,\"z\":34.44}', '{\"x\":2,\"y\":2,\"z\":0.5}', 0, 0, 0, '{\"g\":102,\"b\":102,\"r\":107}', 99, NULL, NULL, NULL, NULL),
(7, 'hydrogen', 3, 3, 7, 1, '{\"x\":1553.36,\"y\":837.88,\"z\":77.52}', '{\"x\":2,\"y\":2,\"z\":0.5}', 0, 0, 0, '{\"g\":231,\"b\":253,\"r\":145}', 128, NULL, NULL, NULL, NULL),
(8, 'nitrogen', 4, 3, 6, 1, '{\"x\":283.52,\"y\":-1336.08,\"z\":23.53}', '{\"x\":2,\"y\":2,\"z\":0.5}', 0, 0, 0, '{\"g\":102,\"b\":65,\"r\":251}', 128, NULL, NULL, NULL, NULL),
(9, 'oxygen', 4, 4, 8, 1, '{\"x\":280.16,\"y\":-1333.24,\"z\":23.52}', '{\"x\":2,\"y\":2,\"z\":0.5}', 0, 0, 0, '{\"g\":251,\"b\":255,\"r\":15}', 59, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) NOT NULL,
  `identifier` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `inventories`
--

INSERT INTO `inventories` (`id`, `identifier`, `type`, `data`) VALUES
(1, 'EGCY0679', 'trunk', '[{\"name\":\"boxbig\",\"count\":15,\"type\":\"item_standard\"}]'),
(2, 'EGCY0679', 'glovebox', '[]'),
(3, 'FRAB4580', 'glovebox', '[]'),
(4, 'BXCL8608', 'glovebox', '[]');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  `desc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `desc`) VALUES
('alive_chicken', 'Living chicken', 1, 0, 1, NULL),
('ammonium_nitrate', 'Ammonium nitrate', 1, 0, 1, NULL),
('bandage', 'Bandage', 2, 0, 1, NULL),
('beer', 'Beer', 1, 0, 1, NULL),
('blowpipe', 'Blowtorch', 2, 0, 1, NULL),
('blue_phone', 'Handy', 1, 0, 1, NULL),
('bolt', 'Simple bolt', 1, 0, 1, NULL),
('boxbig', 'Große Munitionsbox (100)', 15, 0, 1, NULL),
('bread', 'Bread', 1, 0, 1, NULL),
('bumper', 'Bumper', 1, 0, 1, NULL),
('burger', 'Burger', 2, 0, 1, NULL),
('cannabis', 'Cannabis', 3, 0, 1, NULL),
('carbon', 'Carbon', 1, 0, 1, NULL),
('carokit', 'Body Kit', 3, 0, 1, NULL),
('carotool', 'Tools', 2, 0, 1, NULL),
('clip', 'Kleine Munitionsbox', 5, 0, 1, NULL),
('clip_extended', 'Erweitertes Magazin', 1, 0, 1, NULL),
('clothe', 'Cloth', 1, 0, 1, NULL),
('cocacola', 'Cocacola', 1, 0, 1, NULL),
('codeine', 'Codeine', 1, 0, 1, NULL),
('container_key', 'container_key', 1, 0, 1, NULL),
('copper', 'Copper', 1, 0, 1, NULL),
('covering', 'Covering', 1, 0, 1, NULL),
('cutted_wood', 'Cut wood', 1, 0, 1, NULL),
('diamond', 'Diamond', 1, 0, 1, NULL),
('diamonds_box', 'Diamonds box', 100, 0, 1, NULL),
('doener', 'Doener', 1, 0, 1, NULL),
('drill', 'Drill', 100, 0, 1, NULL),
('drink_sprite', 'Sprite', 1, 0, 1, NULL),
('drug_ecstasy', 'Ecstasy', 1, 0, 1, NULL),
('drug_lean', 'Lean', 1, 0, 1, NULL),
('drug_lsd', 'LSD', 1, 0, 1, NULL),
('drug_meth', 'Meth', 1, 0, 1, NULL),
('Eistee', 'Eistee', 1, 0, 1, ''),
('enginepart', 'Engine part', 1, 0, 1, NULL),
('espresso', 'Espresso', 1, 0, 1, NULL),
('essence', 'Gas', 1, 0, 1, NULL),
('exhaust', 'Exhaust', 1, 0, 1, NULL),
('fabric', 'Fabric', 1, 0, 1, NULL),
('filter', 'Filter', 1, 0, 1, NULL),
('fischplatte', 'Fischplatte', 1, 0, 1, NULL),
('fish', 'Fish', 1, 0, 1, NULL),
('fixkit', 'Repair Kit', 3, 0, 1, NULL),
('fixtool', 'Repair Tools', 2, 0, 1, NULL),
('flashlight', 'Waffenlampe', 1, 0, 1, NULL),
('gas_mask', 'Gas mask', 100, 0, 1, NULL),
('gazbottle', 'Gas Bottle', 2, 0, 1, NULL),
('gold', 'Gold', 1, 0, 1, NULL),
('gold_ingot', 'Gold ingot', 100, 0, 1, NULL),
('gps', 'GPS Tracker', 1, 0, 1, NULL),
('green_gelato_cannabis', 'Green Gelato Cannabis', 1, 0, 1, NULL),
('green_phone', 'Green Phone', 1, 0, 1, NULL),
('grip', 'Griff', 1, 0, 1, NULL),
('hacking_computer', 'Hacking computer', 100, 0, 1, NULL),
('handcuffs', 'Seile', 1, 0, 1, NULL),
('hydrogen', 'Hydrogen', 1, 0, 1, NULL),
('ice', 'Ice', 1, 0, 1, NULL),
('iron', 'Iron', 1, 0, 1, NULL),
('jolly_ranchers', 'Jolly Ranchers', 1, 0, 1, NULL),
('kokain', 'Kokainblatt', 1, 0, 1, NULL),
('kokainpackchen', 'Kokain', 1, 0, 1, NULL),
('liquid_sulfur', 'Liquid Sulfur', 1, 0, 1, NULL),
('lockpick', 'Lockpick', 1, 0, 1, NULL),
('marijuana', 'Marijuana', 2, 0, 1, NULL),
('medikit', 'Medikit', 2, 0, 1, NULL),
('mirror', 'Exterior mirror', 1, 0, 1, NULL),
('muriatic_acid', 'Muriatic Acid', 1, 0, 1, NULL),
('nitrogen', 'Nitrogen', 1, 0, 1, NULL),
('opium', 'Opium', 1, 0, 1, NULL),
('orange', 'Orange', 1, 0, 1, NULL),
('orangensaft', 'Orangensaft', 1, 0, 1, NULL),
('oxygen', 'Oxygen', 1, 0, 1, NULL),
('packaged_chicken', 'Chicken fillet', 1, 0, 1, NULL),
('packaged_plank', 'Packaged wood', 1, 0, 1, NULL),
('painting', 'Painting', 100, 0, 1, NULL),
('petrol', 'Oil', 1, 0, 1, NULL),
('petrol_raffin', 'Processed oil', 1, 0, 1, NULL),
('phone', 'phone', 1, 0, 1, NULL),
('pseudoefedrine', 'Pseudoefedrine', 1, 0, 1, NULL),
('purple_phone', 'Phone', 1, 0, 1, NULL),
('radio', 'Radio', 1, 0, 1, NULL),
('raki', 'Raki', 1, 0, 1, NULL),
('red_phone', 'Handy', 1, 0, 1, NULL),
('red_sulfur', 'Red Sulfur', 1, 0, 1, NULL),
('repairkit', 'Repair Kit', 1, 0, 1, NULL),
('rotwein', 'Rotwein', 1, 0, 1, NULL),
('slaughtered_chicken', 'Slaughtered chicken', 1, 0, 1, NULL),
('sodium_hydroxide', 'Sodium hydroxide', 1, 0, 1, NULL),
('spark_plug', 'Spark plug', 1, 0, 1, NULL),
('sponge', 'Sponge', 1, 0, 1, NULL),
('stone', 'Stone', 1, 0, 1, NULL),
('suppressor', 'Schalldämpfer', 1, 0, 1, NULL),
('Tabakblatt', 'Tabakblatt', 1, 0, 1, NULL),
('thermal_charge', 'Thermal charge', 100, 0, 1, NULL),
('Trauben', 'Trauben', 1, 0, 1, NULL),
('vbelt', 'V-belt', 1, 0, 1, NULL),
('vehicle_alarm_1', 'Vehicle alarm level 1', 1, 0, 1, NULL),
('vehicle_alarm_2', 'Vehicle alarm level 2', 1, 0, 1, NULL),
('vehicle_alarm_3', 'Vehicle alarm level 3', 1, 0, 1, NULL),
('vehicle_alarm_4', 'Vehicle alarm level 4', 1, 0, 1, NULL),
('vehicle_transfer_contract', 'Kaufvertag', 1, 0, 1, NULL),
('washed_stone', 'Washed stone', 1, 0, 1, NULL),
('water', 'Water', 1, 0, 1, NULL),
('weapon_knuckle', 'Schlagring', 1, 0, 1, NULL),
('weapon_machete', 'Machete', 1, 0, 1, NULL),
('weapon_switchblade', 'Klappmesser', 1, 0, 1, NULL),
('wood', 'Wood', 1, 0, 1, NULL),
('wool', 'Wool', 1, 0, 1, NULL),
('zigarette', 'Zigarette', 1, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  `enable_billing` int(1) DEFAULT 0,
  `can_rob` int(1) DEFAULT 0,
  `can_handcuff` int(1) DEFAULT 0,
  `can_lockpick_cars` int(1) DEFAULT 0,
  `can_wash_vehicles` int(1) DEFAULT 0,
  `can_repair_vehicles` int(1) DEFAULT 0,
  `can_impound_vehicles` int(1) DEFAULT 0,
  `can_check_identity` int(1) DEFAULT 0,
  `can_check_vehicle_owner` int(1) DEFAULT 0,
  `can_check_driving_license` int(1) DEFAULT 0,
  `can_check_weapon_license` int(1) DEFAULT 0,
  `can_heal` int(1) DEFAULT 0,
  `can_revive` int(1) DEFAULT 0,
  `actions_menu_enabled` int(1) DEFAULT 1,
  `placeable_objects` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `legal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`, `enable_billing`, `can_rob`, `can_handcuff`, `can_lockpick_cars`, `can_wash_vehicles`, `can_repair_vehicles`, `can_impound_vehicles`, `can_check_identity`, `can_check_vehicle_owner`, `can_check_driving_license`, `can_check_weapon_license`, `can_heal`, `can_revive`, `actions_menu_enabled`, `placeable_objects`, `legal`) VALUES
('adac', 'ADAC ', 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, '[]', NULL),
('banker', 'Banker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1),
('bundeskrankenhaus', 'Bundeskrankenhaus', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '[]', 1),
('bundeskrankenhaus___off_duty', 'Bundeskrankenhaus - Off duty', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '[]', 1),
('cardealer', 'Cardealer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1),
('fisherman', 'Fisherman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1),
('fueler', 'Fueler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1),
('lumberjack', 'Lumberjack', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1),
('mechanic', 'Blond´s Tuning Garage', 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, '[]', NULL),
('miner', 'Miner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1),
('off_adac', 'ADAC - off Duty', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL),
('off_mechanic', 'Blond´s Tuning Garage - off Duty', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '[]', NULL),
('off_polizei', 'Polizei - Off duty', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '[]', 1),
('off_reporter', 'Reporter - off Duty', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL),
('polizei', 'Polizei', 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, '[]', 1),
('reporter', 'Reporter', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1),
('taxi', 'Taxi', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1),
('trucker', 'LS Logistics', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1),
('unemployed', 'Unemployed', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs_armories`
--

CREATE TABLE `jobs_armories` (
  `id` int(11) NOT NULL,
  `weapon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `components` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ammo` int(10) UNSIGNED NOT NULL,
  `tint` int(11) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `identifier` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `jobs_armories`
--

INSERT INTO `jobs_armories` (`id`, `weapon`, `components`, `ammo`, `tint`, `marker_id`, `identifier`) VALUES
(1, 'WEAPON_PISTOL', '[]', 60, 0, 18, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs_data`
--

CREATE TABLE `jobs_data` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coords` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `grades_type` varchar(20) DEFAULT NULL,
  `specific_grades` varchar(255) DEFAULT NULL,
  `min_grade` smallint(6) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `blip_id` int(11) DEFAULT NULL,
  `blip_color` int(11) DEFAULT 0,
  `blip_scale` float DEFAULT 1,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `marker_type` int(11) DEFAULT 1,
  `marker_scale_x` float DEFAULT 1.5,
  `marker_scale_y` float DEFAULT 1.5,
  `marker_scale_z` float DEFAULT 0.5,
  `marker_color_red` int(3) DEFAULT 150,
  `marker_color_green` int(3) DEFAULT 150,
  `marker_color_blue` int(3) DEFAULT 0,
  `marker_color_alpha` int(3) DEFAULT 50,
  `ped` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ped_heading` float DEFAULT NULL,
  `object` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `object_pitch` float DEFAULT NULL,
  `object_roll` float DEFAULT NULL,
  `object_yaw` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `jobs_data`
--

INSERT INTO `jobs_data` (`id`, `job_name`, `type`, `coords`, `grades_type`, `specific_grades`, `min_grade`, `data`, `blip_id`, `blip_color`, `blip_scale`, `label`, `marker_type`, `marker_scale_x`, `marker_scale_y`, `marker_scale_z`, `marker_color_red`, `marker_color_green`, `marker_color_blue`, `marker_color_alpha`, `ped`, `ped_heading`, `object`, `object_pitch`, `object_roll`, `object_yaw`) VALUES
(9, 'mechanic', 'stash', '{\"z\":\"24.00\",\"y\":\"-939.10\",\"x\":\"-575.90\"}', 'specificGrades', '{\"2\":true,\"1\":true,\"4\":true,\"3\":true,\"7\":true,\"9\":true,\"12\":true,\"11\":true,\"6\":true,\"5\":true,\"8\":true,\"10\":true}', NULL, '{\"sponge\":1204}', NULL, NULL, NULL, 'Lager', 3, 0.8, 0.8, 1, 55, 255, 0, 90, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'mechanic', 'duty', '{\"z\":\"24.00\",\"y\":\"-916.94\",\"x\":\"-601.28\"}', 'minimumGrade', NULL, 0, '[]', NULL, NULL, NULL, 'Tschöööö', 44, 0.8, 0.8, 0.8, 21, 24, 55, 215, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'off_mechanic', 'duty', '{\"z\":\"24.00\",\"y\":\"-917.04\",\"x\":\"-603.92\"}', 'minimumGrade', NULL, 0, '[]', NULL, NULL, NULL, 'Moin', 29, 0.8, 0.8, 0.8, 36, 47, 82, 222, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'mechanic', 'wardrobe', '{\"z\":\"24.00\",\"y\":\"-913.92\",\"x\":\"-602.12\"}', 'minimumGrade', NULL, 0, '[]', NULL, NULL, NULL, 'Standart', 20, 0.8, 0.8, 0.9, 0, 255, 110, 207, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'mechanic', 'shop', '{\"z\":\"24.00\",\"y\":\"-939.10\",\"x\":\"-572.48\"}', 'minimumGrade', NULL, 0, '{\"itemsOnSale\":{\"WEAPON_STUNGUN\":{\"blackMoney\":false,\"price\":100},\"rotwein\":{\"blackMoney\":false,\"price\":1},\"fixkit\":{\"blackMoney\":false,\"price\":1},\"fischplatte\":{\"blackMoney\":false,\"price\":1},\"cocacola\":{\"blackMoney\":false,\"price\":1}}}', NULL, NULL, NULL, 'Standart', 5, 0.8, 0.8, 0.8, 0, 255, 17, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'polizei', 'boss', '{\"x\":\"471.98\",\"z\":\"30.30\",\"y\":\"-1005.48\"}', 'specificGrades', '{\"12\":true,\"11\":true}', NULL, '{\"canWithdraw\":false,\"canGrades\":true,\"canWashMoney\":false,\"canEmployees\":true,\"canDeposit\":true}', NULL, NULL, NULL, 'Polizei Bossmenu', 20, 0.8, 0.8, 1, 15, 215, 211, 214, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'polizei', 'shop', '{\"x\":\"484.70\",\"z\":\"24.74\",\"y\":\"-1003.72\"}', 'minimumGrade', NULL, 0, '{\"itemsOnSale\":{\"WEAPON_PISTOL\":{\"price\":15000,\"blackMoney\":false}}}', NULL, NULL, NULL, 'Waffenkammer', 1, 2, 2, 1.5, 255, 255, 0, 1, 'cs_casey', 8.4, NULL, NULL, NULL, NULL),
(22, 'bundeskrankenhaus', 'duty', '{\"x\":\"-1819.68\",\"z\":\"48.46\",\"y\":\"-350.80\"}', 'minimumGrade', NULL, 0, '[]', NULL, NULL, NULL, 'Im dienst', 1, 1.5, 1.5, 0.5, 211, 114, 3, 78, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'off_bundeskrankenhaus', 'duty', '{\"x\":\"-1819.68\",\"z\":\"48.46\",\"y\":\"-350.80\"}', 'minimumGrade', NULL, 0, NULL, NULL, 0, 1, 'Dienst antritt', 1, 1.5, 1.5, 0.5, 150, 150, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'bundeskrankenhaus___off_duty', 'duty', '{\"x\":\"-1820.96\",\"z\":\"48.46\",\"y\":\"-352.48\"}', 'minimumGrade', NULL, 0, '[]', NULL, NULL, NULL, 'aus dienst', 1, 1.5, 1.5, 0.5, 199, 96, 0, 80, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'off_bundeskrankenhaus', 'duty', '{\"x\":\"-1821.02\",\"z\":\"48.46\",\"y\":\"-352.00\"}', 'minimumGrade', NULL, 0, NULL, NULL, 0, 1, 'Aus dem Dienst', 1, 1.5, 1.5, 0.5, 150, 150, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'bundeskrankenhaus', 'job_outfit', '{\"x\":\"-1813.75\",\"z\":\"48.46\",\"y\":\"-354.06\"}', 'minimumGrade', NULL, 0, '{\"outfits\":[{\"helmet_1\":-1,\"bags_1\":0,\"pants_1\":135,\"decals_1\":0,\"torso_2\":0,\"mask_1\":0,\"decals_2\":0,\"bproof_2\":0,\"pants_2\":0,\"tshirt_1\":15,\"helmet_2\":0,\"shoes_2\":2,\"label\":\"Schwarzes T-Shirt\",\"bproof_1\":0,\"arms\":34,\"mask_2\":0,\"chain_1\":0,\"torso_1\":622,\"tshirt_2\":0,\"glasses_2\":7,\"arms_2\":0,\"glasses_1\":5,\"shoes_1\":86,\"chain_2\":0,\"bags_2\":0},{\"helmet_1\":-1,\"bags_1\":0,\"pants_1\":135,\"decals_1\":0,\"torso_2\":1,\"mask_1\":0,\"decals_2\":0,\"bproof_2\":0,\"pants_2\":0,\"tshirt_1\":15,\"helmet_2\":0,\"shoes_2\":2,\"label\":\"Weißes T-Shirt\",\"bproof_1\":0,\"arms\":34,\"mask_2\":0,\"chain_1\":0,\"torso_1\":622,\"tshirt_2\":0,\"glasses_2\":7,\"arms_2\":0,\"glasses_1\":5,\"shoes_1\":86,\"chain_2\":0,\"bags_2\":0},{\"helmet_1\":-1,\"bags_1\":0,\"pants_1\":135,\"decals_1\":0,\"torso_2\":0,\"mask_1\":0,\"decals_2\":0,\"bproof_2\":0,\"pants_2\":0,\"tshirt_1\":10,\"helmet_2\":0,\"shoes_2\":2,\"label\":\"Rettungsdienst\",\"bproof_1\":0,\"arms\":14,\"mask_2\":0,\"chain_1\":0,\"torso_1\":623,\"tshirt_2\":0,\"glasses_2\":7,\"arms_2\":0,\"glasses_1\":5,\"shoes_1\":86,\"chain_2\":0,\"bags_2\":0},{\"helmet_1\":-1,\"bags_1\":0,\"pants_1\":135,\"decals_1\":0,\"torso_2\":1,\"mask_1\":0,\"decals_2\":0,\"bproof_2\":0,\"pants_2\":0,\"tshirt_1\":10,\"helmet_2\":0,\"shoes_2\":2,\"label\":\"Notarzt\",\"bproof_1\":0,\"arms\":14,\"mask_2\":0,\"chain_1\":0,\"torso_1\":623,\"tshirt_2\":0,\"glasses_2\":7,\"arms_2\":0,\"glasses_1\":5,\"shoes_1\":86,\"chain_2\":0,\"bags_2\":0}]}', NULL, NULL, NULL, 'Umkleidekabine', 1, 1.5, 1.5, 0.5, 255, 255, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'bundeskrankenhaus', 'shop', '{\"x\":\"-1830.32\",\"z\":\"48.40\",\"y\":\"-380.96\"}', 'minimumGrade', NULL, 0, '{\"itemsOnSale\":{\"bandage\":{\"blackMoney\":false,\"price\":1},\"medikit\":{\"blackMoney\":false,\"price\":1}}}', NULL, NULL, NULL, 'Medikamente', 1, 2, 2, 1.5, 255, 255, 0, 1, 'a_m_m_tennis_01', 55.89, NULL, NULL, NULL, NULL),
(29, 'bundeskrankenhaus', 'boss', '{\"x\":\"-1816.42\",\"z\":\"52.78\",\"y\":\"-349.30\"}', 'specificGrades', '{\"3\":true}', NULL, '{\"canGrades\":true,\"canDeposit\":true,\"canWithdraw\":true,\"canWashMoney\":false,\"canEmployees\":false}', NULL, NULL, NULL, 'Boss Menü', 1, 1.5, 1.5, 0.5, 255, 255, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'bundeskrankenhaus', 'garage_buyable', '{\"x\":\"-1888.60\",\"z\":\"48.42\",\"y\":\"-343.32\"}', 'minimumGrade', NULL, 0, '{\"vehicles\":{\"ambulance\":1,\"ms_m5\":1,\"ms_ram19\":1},\"spawnPoints\":[{\"heading\":318.45,\"coords\":{\"x\":-1891,\"z\":48.26,\"y\":-340.55},\"radius\":5},{\"heading\":315.94,\"coords\":{\"x\":-1894.41,\"z\":48.25,\"y\":-338.13},\"radius\":5},{\"heading\":314.52,\"coords\":{\"x\":-1897.14,\"z\":48.23,\"y\":-335.75},\"radius\":5}]}', NULL, NULL, NULL, 'Garage', 1, 2.5, 2.5, 1.5, 255, 255, 0, 1, 'csb_prolsec', 57.77, NULL, NULL, NULL, NULL),
(32, 'polizei', 'garage_buyable', '{\"y\":\"-979.60\",\"z\":\"24.78\",\"x\":\"463.02\"}', 'minimumGrade', NULL, 0, '{\"vehicles\":{\"kripoaudis5\":1,\"polmbv250\":1,\"polmotorrad\":1},\"spawnPoints\":[{\"radius\":5,\"heading\":5.85,\"coords\":{\"y\":-988.43,\"z\":24.73,\"x\":459.99}},{\"radius\":5,\"heading\":0.63,\"coords\":{\"y\":-979.84,\"z\":24.73,\"x\":459.5}}]}', NULL, NULL, NULL, 'Polizei Garage', 1, 1.5, 1.5, 1.5, 255, 255, 0, 1, 's_m_y_cop_01', 103.91, NULL, NULL, NULL, NULL),
(33, 'polizei', 'garage_buyable', '{\"z\":\"24.70\",\"x\":\"461.32\",\"y\":\"-985.66\"}', 'specificGrades', '{\"4\":true,\"3\":true}', NULL, '{\"spawnPoints\":[{\"heading\":269.69,\"radius\":5,\"coords\":{\"z\":24.7,\"x\":446.04,\"y\":-991.06}},{\"heading\":266.86,\"radius\":5,\"coords\":{\"z\":24.7,\"x\":445.69,\"y\":-986.35}}],\"vehicles\":{\"kripoe63\":1,\"kripoaudis5\":1}}', NULL, NULL, NULL, 'KRIPO GARAGE SEK', 1, 1.5, 1.5, 0.5, 255, 136, 0, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'mechanic', 'garage_owned', '{\"x\":\"-674.18\",\"y\":\"900.16\",\"z\":\"228.90\"}', 'minimumGrade', NULL, 12, '{\"spawnPoints\":[{\"coords\":{\"x\":-677.36,\"y\":901.97,\"z\":229.58},\"heading\":330.56,\"radius\":2}]}', NULL, NULL, NULL, 'Blond´s Private Garage', 31, 0.8, 0.8, 1, 35, 38, 82, 186, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'adac', 'wardrobe', '{\"x\":\"-341.44\",\"y\":\"-162.12\",\"z\":\"43.90\"}', 'minimumGrade', NULL, 0, '[]', NULL, NULL, NULL, 'Umkleide', 3, 0.8, 0.8, 1, 255, 255, 0, 178, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'adac', 'garage_buyable', '{\"x\":\"-377.56\",\"y\":\"-103.10\",\"z\":\"38.00\"}', 'minimumGrade', NULL, 0, '{\"spawnPoints\":[{\"coords\":{\"x\":-380.79,\"y\":-114.66,\"z\":37.69},\"heading\":192.21,\"radius\":5}],\"vehicles\":{\"adacskoda\":100,\"adacxklasse\":100,\"adacvolvo\":100}}', NULL, NULL, NULL, 'Standart', 1, 1.5, 1.5, 0.5, 255, 255, 0, 1, 's_m_y_marine_01', 153.31, NULL, NULL, NULL, NULL),
(40, 'adac', 'boss', '{\"x\":\"-339.52\",\"y\":\"-157.32\",\"z\":\"43.90\"}', 'minimumGrade', NULL, 5, '{\"canWithdraw\":true,\"canWashMoney\":false,\"canGrades\":true,\"canDeposit\":true,\"canEmployees\":true}', NULL, NULL, NULL, 'boss -menü', 2, 0.8, 0.8, 1, 255, 255, 0, 255, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'mechanic', 'boss', '{\"z\":\"24.00\",\"y\":\"-920.86\",\"x\":\"-606.82\"}', 'minimumGrade', NULL, 12, '{\"canDeposit\":true,\"canGrades\":true,\"canEmployees\":true,\"canWashMoney\":false,\"canWithdraw\":true}', NULL, NULL, NULL, 'Boss Menü', 31, 0.8, 0.8, 1, 21, 44, 66, 217, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'mechanic', 'garage_buyable', '{\"z\":\"22.80\",\"y\":\"-942.00\",\"x\":\"-552.88\"}', 'minimumGrade', NULL, 5, '{\"vehicles\":{\"caddyk\":5000,\"sentinel3\":1000},\"spawnPoints\":[{\"coords\":{\"z\":22.84,\"y\":-939.86,\"x\":-556.12},\"radius\":5,\"heading\":329.77}]}', NULL, NULL, NULL, 'Firmenwagen', 1, 1.5, 1.5, 0.5, 28, 82, 89, 1, 'hc_driver', 50.26, NULL, NULL, NULL, NULL),
(63, 'mechanic', 'safe', '{\"z\":\"28.00\",\"y\":\"-914.16\",\"x\":\"-595.74\"}', 'minimumGrade', NULL, 12, NULL, NULL, NULL, NULL, 'Standart', 29, 0.8, 0.8, 1, 165, 217, 69, 222, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'mechanic', 'teleport', '{\"z\":\"22.88\",\"y\":\"-920.62\",\"x\":\"-561.50\"}', 'minimumGrade', NULL, 2, '{\"teleportCoords\":{\"z\":35.83,\"y\":-927.79,\"x\":-568.92}}', NULL, NULL, NULL, 'Zum Heli Pad', 25, 1.5, 1.5, 0.5, 42, 75, 38, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'mechanic', 'teleport', '{\"z\":\"35.82\",\"y\":\"-927.78\",\"x\":\"-568.92\"}', 'minimumGrade', NULL, 2, '{\"teleportCoords\":{\"z\":22.87,\"y\":-920.98,\"x\":-562.34}}', NULL, NULL, NULL, 'Zum Hof', 25, 1.5, 1.5, 0.5, 31, 66, 39, 227, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'polizei', 'duty', '{\"x\":\"447.02\",\"z\":\"31.00\",\"y\":\"-986.90\"}', 'minimumGrade', NULL, 0, '[]', NULL, NULL, NULL, 'Tschööö', 44, 0.8, 0.8, 1, 2, 43, 126, 236, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'off_polizei', 'duty', '{\"x\":\"447.14\",\"z\":\"31.00\",\"y\":\"-981.80\"}', 'minimumGrade', NULL, 0, '[]', NULL, NULL, NULL, 'Moin', 29, 0.7, 0.7, 1, 6, 44, 198, 239, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'polizei', 'shop', '{\"x\":\"459.62\",\"z\":\"29.70\",\"y\":\"-975.38\"}', 'specificGrades', '{\"10\":true,\"9\":true,\"8\":true,\"11\":true,\"12\":true}', NULL, '{\"itemsOnSale\":{\"WEAPON_SPECIALCARBINE_MK2\":{\"price\":1000,\"blackMoney\":false},\"WEAPON_MARKSMANRIFLE_MK2\":{\"price\":1000,\"blackMoney\":false}}}', NULL, NULL, NULL, 'SEK Laden', 1, 1.4, 1.4, 1.4, 255, 255, 0, 1, 's_m_y_swat_01', 216.93, NULL, NULL, NULL, NULL),
(71, 'polizei', 'wardrobe', '{\"x\":\"471.14\",\"z\":\"26.00\",\"y\":\"-989.62\"}', 'minimumGrade', NULL, 0, '[]', NULL, NULL, NULL, 'Private Umkleide', 22, 0.8, 0.8, 1, 4, 0, 255, 243, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'public_marker', 'weapon_upgrader', '{\"y\":\"-1623.08\",\"x\":\"-612.94\",\"z\":\"32.00\"}', 'minimumGrade', NULL, 0, '{\"tintsPrices\":{\"1\":50000,\"0\":20000,\"7\":50000,\"6\":50000,\"5\":50000,\"4\":50000,\"3\":50000,\"2\":70000},\"componentsPrices\":{\"scope\":\"150000\",\"clip_box\":\"50000\",\"clip_drum\":\"350000\",\"suppressor\":\"150000\",\"luxary_finish\":\"50000\",\"flashlight\":\"100000\",\"clip_extended\":\"250000\",\"grip\":\"100000\",\"scope_advanced\":\"200000\"}}', NULL, NULL, NULL, 'Standart', 1, 1.5, 1.5, 0.5, 255, 255, 0, 1, 'g_m_m_chicold_01', 166.71, NULL, NULL, NULL, NULL),
(85, 'polizei', 'job_outfit', '{\"x\":\"473.48\",\"z\":\"26.00\",\"y\":\"-989.60\"}', 'minimumGrade', NULL, 0, '{\"outfits\":[]}', NULL, NULL, NULL, 'Polizei Uniformen', 22, 0.8, 0.8, 1, 214, 104, 0, 255, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'public_marker', 'harvest', '{\"y\":\"909.24\",\"z\":\"230.80\",\"x\":\"-672.96\"}', 'minimumGrade', NULL, 0, NULL, NULL, 0, 1, 'Standart', 1, 1.5, 1.5, 0.5, 150, 150, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'public_marker', 'harvest', '{\"y\":\"6236.48\",\"z\":\"30.08\",\"x\":\"-65.18\"}', 'minimumGrade', NULL, 0, '{\"disappearAfterUse\":false,\"harvestableItems\":[{\"minQuantity\":2,\"time\":10,\"name\":\"alive_chicken\",\"maxQuantity\":5,\"chances\":50}],\"minimumAccountName\":\"\",\"requiresMinimumAccountMoney\":false,\"animations\":[{\"type\":\"animation\",\"animDuration\":15,\"animName\":\"pickup_low\",\"animDict\":\"random@mugging4\"}]}', 89, 1, 0.8, 'Chickenfarm', 1, 3, 3, 6, 255, 255, 0, 20, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'public_marker', 'process', '{\"y\":\"6229.22\",\"z\":\"30.08\",\"x\":\"-77.94\"}', 'minimumGrade', NULL, 0, '{\"itemToRemoveName\":\"alive_chicken\",\"itemToAddQuantity\":5,\"itemToAddName\":\"slaughtered_chicken\",\"minimumAccountName\":\"\",\"requiresMinimumAccountMoney\":false,\"itemToRemoveQuantity\":5,\"timeToProcess\":6,\"animations\":[{\"type\":\"scenario\",\"scenarioDuration\":6,\"scenarioName\":\"PROP_HUMAN_BUM_BIN\"}]}', NULL, NULL, NULL, 'Chickenfarm verarbeiter', 1, 3, 3, 6, 255, 255, 0, 32, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'public_marker', 'process', '{\"y\":\"6208.66\",\"z\":\"30.04\",\"x\":\"-101.72\"}', 'minimumGrade', NULL, 0, '{\"itemToRemoveName\":\"slaughtered_chicken\",\"itemToAddQuantity\":5,\"itemToAddName\":\"packaged_chicken\",\"minimumAccountName\":\"\",\"requiresMinimumAccountMoney\":false,\"itemToRemoveQuantity\":5,\"timeToProcess\":6,\"animations\":[]}', NULL, NULL, NULL, 'Chicken Fillet', 1, 1.5, 1.5, 0.5, 255, 255, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'public_marker', 'process', '{\"y\":\"6206.52\",\"z\":\"30.04\",\"x\":\"-103.96\"}', 'minimumGrade', NULL, 0, '{\"itemToRemoveName\":\"slaughtered_chicken\",\"itemToAddQuantity\":5,\"itemToAddName\":\"packaged_chicken\",\"minimumAccountName\":\"\",\"requiresMinimumAccountMoney\":false,\"itemToRemoveQuantity\":5,\"timeToProcess\":6,\"animations\":[]}', NULL, NULL, NULL, 'Chicken Fillet 2', 1, 1.5, 1.5, 0.5, 255, 255, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'public_marker', 'market', '{\"y\":\"-1480.64\",\"z\":\"32.00\",\"x\":\"996.90\"}', 'minimumGrade', NULL, 0, '{\"percentageForSociety\":50,\"items\":{\"packaged_chicken\":{\"sellTime\":15,\"minPrice\":500,\"maxPrice\":0,\"blackMoney\":false}}}', NULL, NULL, NULL, 'Chicken ankäufer', 22, 0.8, 0.8, 0.9, 194, 123, 0, 255, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'public_marker', 'market', '{\"y\":\"3298.88\",\"z\":\"40.96\",\"x\":\"1759.52\"}', 'minimumGrade', NULL, 0, NULL, NULL, 0, 1, 'Dealer', 1, 1.5, 1.5, 0.5, 150, 150, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'public_marker', 'market', '{\"y\":\"5566.62\",\"z\":\"780.18\",\"x\":\"452.06\"}', 'minimumGrade', NULL, 0, '{\"percentageForSociety\":50,\"items\":{\"cannabis\":{\"maxPrice\":750,\"blackMoney\":true,\"sellTime\":15,\"minPrice\":250}}}', NULL, NULL, NULL, 'Drogendealer', 1, 1.5, 1.5, 0.5, 255, 255, 0, 1, 'a_m_m_hasjew_01', 270.04, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs_garages`
--

CREATE TABLE `jobs_garages` (
  `vehicle_id` int(11) NOT NULL,
  `identifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `marker_id` int(11) NOT NULL,
  `vehicle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `vehicle_props` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `jobs_garages`
--

INSERT INTO `jobs_garages` (`vehicle_id`, `identifier`, `marker_id`, `vehicle`, `vehicle_props`, `plate`) VALUES
(1, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 5, 'adacskoda', '{\"modArmor\":-1,\"plate\":\"CC153ZO\",\"modExhaust\":-1,\"modLivery\":-1,\"modHood\":-1,\"modTrimA\":-1,\"dshcolor\":0,\"tyreSmokeColor\":[255,255,255],\"modSmokeEnabled\":false,\"ColorType\":[-1,-1],\"drift\":false,\"xenonColor\":255,\"modOrnaments\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"modRoof\":-1,\"modSpoilers\":-1,\"windowTint\":-1,\"neonColor\":[255,0,255],\"modHorns\":-1,\"modAerials\":-1,\"fuelLevel\":65.1,\"modAirFilter\":-1,\"modFrame\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTyresBurst\":1,\"color2\":1,\"bodyHealth\":1000.0,\"modEngineBlock\":-1,\"extras\":{\"1\":true,\"2\":false},\"modStruts\":-1,\"modWheelVariat\":false,\"modPlateHolder\":-1,\"modEngine\":-1,\"modBrakes\":-1,\"dirtLevel\":1.0,\"modRightFender\":-1,\"modFrontWheels\":-1,\"color1\":1,\"color3\":[15,15,15],\"modDial\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"modTransmission\":-1,\"plateIndex\":3,\"color4\":[15,15,15],\"modRearBumper\":-1,\"modGrille\":-1,\"modSuspension\":-1,\"wheels\":5,\"modHydrolic\":-1,\"modSeats\":-1,\"intcolor\":0,\"engineHealth\":1000.0,\"pearlescentColor\":3,\"modTank\":-1,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"neonEnabled\":[false,false,false,false],\"modShifterLeavers\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"modVanityPlate\":-1,\"paintType\":[7,7],\"model\":1169240546,\"modFrontBumper\":-1,\"modLivery2\":-1,\"modTrimB\":-1,\"wheelColor\":156}', 'CC153ZO'),
(2, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 5, 'adacvolvo', '{}', 'FA783PS'),
(3, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 6, 'adacrental', '{\"modArmor\":-1,\"plate\":\"WR369EX\",\"modExhaust\":-1,\"modLivery\":0,\"modHood\":-1,\"modTrimA\":-1,\"dshcolor\":0,\"tyreSmokeColor\":[255,255,255],\"modSmokeEnabled\":false,\"ColorType\":[0,0],\"drift\":false,\"xenonColor\":255,\"modOrnaments\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"modRoof\":-1,\"modSpoilers\":-1,\"windowTint\":-1,\"neonColor\":[255,0,255],\"modHorns\":-1,\"modAerials\":-1,\"fuelLevel\":24.8,\"modAirFilter\":-1,\"modFrame\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTyresBurst\":1,\"color2\":106,\"bodyHealth\":1000.0,\"modEngineBlock\":-1,\"extras\":{\"12\":true},\"modStruts\":-1,\"modWheelVariat\":false,\"modPlateHolder\":-1,\"modEngine\":-1,\"modBrakes\":-1,\"dirtLevel\":6.0,\"modRightFender\":-1,\"modFrontWheels\":-1,\"color1\":112,\"color3\":[179,185,201],\"modRearBumper\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"model\":127944158,\"modWindows\":-1,\"modTransmission\":-1,\"pearlescentColor\":5,\"paintType\":[0,0],\"modSteeringWheel\":-1,\"modGrille\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"modDashboard\":-1,\"plateIndex\":0,\"intcolor\":0,\"modLivery2\":-1,\"engineHealth\":1000.0,\"modTank\":-1,\"modFrontBumper\":-1,\"modDoorSpeaker\":-1,\"neonEnabled\":[false,false,false,false],\"modShifterLeavers\":-1,\"modArchCover\":-1,\"modAPlate\":-1,\"modHydrolic\":-1,\"color4\":[153,141,115],\"modSeats\":-1,\"modSuspension\":-1,\"wheels\":0,\"modTrimB\":-1,\"wheelColor\":39}', 'WR369EX'),
(4, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 6, 'adacskoda', '{\"modArmor\":-1,\"plate\":\"IU186KW\",\"modExhaust\":-1,\"modLivery\":-1,\"modHood\":-1,\"modTrimA\":-1,\"dshcolor\":0,\"tyreSmokeColor\":[255,255,255],\"modSmokeEnabled\":false,\"ColorType\":[-1,-1],\"drift\":false,\"xenonColor\":255,\"modOrnaments\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"modRoof\":-1,\"modSpoilers\":-1,\"windowTint\":-1,\"neonColor\":[255,0,255],\"modHorns\":-1,\"modAerials\":-1,\"fuelLevel\":53.7,\"modAirFilter\":-1,\"modFrame\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTyresBurst\":1,\"color2\":1,\"bodyHealth\":1000.0,\"modEngineBlock\":-1,\"extras\":{\"1\":true,\"2\":false},\"modStruts\":-1,\"modWheelVariat\":false,\"modPlateHolder\":-1,\"modEngine\":-1,\"modBrakes\":-1,\"dirtLevel\":6.0,\"modRightFender\":-1,\"modFrontWheels\":-1,\"color1\":1,\"color3\":[15,15,15],\"modRearBumper\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"model\":1169240546,\"modWindows\":-1,\"modTransmission\":-1,\"pearlescentColor\":3,\"paintType\":[7,7],\"modSteeringWheel\":-1,\"modGrille\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"modDashboard\":-1,\"plateIndex\":3,\"intcolor\":0,\"modLivery2\":-1,\"engineHealth\":1000.0,\"modTank\":-1,\"modFrontBumper\":-1,\"modDoorSpeaker\":-1,\"neonEnabled\":[false,false,false,false],\"modShifterLeavers\":-1,\"modArchCover\":-1,\"modAPlate\":-1,\"modHydrolic\":-1,\"color4\":[15,15,15],\"modSeats\":-1,\"modSuspension\":-1,\"wheels\":5,\"modTrimB\":-1,\"wheelColor\":156}', 'IU186KW'),
(5, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 6, 'adacvolvo', '{}', 'QD991WZ'),
(6, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 6, 'adacxklasse', '{}', 'CD174HA'),
(7, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 6, 'adacmblkw', '{}', 'GZ587OB'),
(8, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 31, 'ms_m5', '{\"modDashboard\":-1,\"plate\":\"LA375MT\",\"modTurbo\":false,\"modSpoilers\":-1,\"modRearBumper\":-1,\"fuelLevel\":36.8,\"modDial\":-1,\"modBackWheels\":-1,\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modXenon\":false,\"wheels\":1,\"modSmokeEnabled\":false,\"color2\":0,\"modSteeringWheel\":-1,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"bodyHealth\":1000.0,\"modPlateHolder\":-1,\"modTransmission\":-1,\"modHood\":-1,\"modWindows\":-1,\"windowTint\":-1,\"modLivery2\":-1,\"modEngine\":-1,\"color1\":147,\"dirtLevel\":2.0,\"modArchCover\":-1,\"modWheelVariat\":false,\"modRoof\":-1,\"modAerials\":-1,\"ColorType\":[-1,-1],\"model\":-467928806,\"plateIndex\":4,\"modAPlate\":-1,\"extras\":{\"1\":true},\"modBrakes\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modStruts\":-1,\"modHorns\":-1,\"wheelColor\":0,\"modTrimB\":-1,\"modLivery\":0,\"modGrille\":-1,\"color4\":[8,8,8],\"paintType\":[7,7],\"modTank\":-1,\"modHydrolic\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"xenonColor\":255,\"intcolor\":0,\"modOrnaments\":-1,\"engineHealth\":1000.0,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"drift\":false,\"modAirFilter\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"modFender\":-1,\"modTrimA\":-1,\"modTrunk\":-1,\"modSideSkirt\":-1,\"modTyresBurst\":1,\"color3\":[8,8,8],\"dshcolor\":0,\"pearlescentColor\":0,\"modFrame\":-1,\"modArmor\":-1}', 'LA375MT'),
(9, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 31, 'ambulance1', '{}', 'ML563FU'),
(10, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 31, 'ambulance', '{\"modDashboard\":-1,\"plate\":\"HO936RG\",\"modTurbo\":false,\"modSpoilers\":-1,\"modRearBumper\":-1,\"fuelLevel\":76.0,\"modDial\":-1,\"modBackWheels\":-1,\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modXenon\":false,\"wheels\":0,\"modSmokeEnabled\":false,\"color2\":28,\"modSteeringWheel\":-1,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"bodyHealth\":1000.0,\"modPlateHolder\":-1,\"modTransmission\":-1,\"modHood\":-1,\"modWindows\":-1,\"windowTint\":-1,\"modLivery2\":-1,\"modEngine\":-1,\"color1\":112,\"dirtLevel\":0.0,\"modArchCover\":-1,\"modWheelVariat\":false,\"modRoof\":-1,\"modAerials\":-1,\"ColorType\":[-1,-1],\"model\":1171614426,\"plateIndex\":4,\"modAPlate\":-1,\"extras\":{\"1\":true},\"modBrakes\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modStruts\":-1,\"modHorns\":-1,\"wheelColor\":156,\"modTrimB\":-1,\"modLivery\":0,\"modGrille\":-1,\"color4\":[138,11,0],\"paintType\":[7,7],\"modTank\":-1,\"modHydrolic\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"xenonColor\":255,\"intcolor\":0,\"modOrnaments\":-1,\"engineHealth\":1000.0,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"drift\":false,\"modAirFilter\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"modFender\":-1,\"modTrimA\":-1,\"modTrunk\":-1,\"modSideSkirt\":-1,\"modTyresBurst\":1,\"color3\":[179,185,201],\"dshcolor\":0,\"pearlescentColor\":112,\"modFrame\":-1,\"modArmor\":-1}', 'HO936RG'),
(11, '94aa00d10f636f0acd4f8b7446724e62aae88114', 31, 'ms_m5', '{}', 'LY995VF'),
(12, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 31, 'ms_ram19', '{\"modDashboard\":-1,\"plate\":\"BC787BX\",\"modTurbo\":false,\"modSpoilers\":-1,\"modRearBumper\":-1,\"fuelLevel\":67.6,\"modDial\":-1,\"modBackWheels\":-1,\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modXenon\":false,\"wheels\":1,\"modSmokeEnabled\":false,\"color2\":0,\"modSteeringWheel\":-1,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"bodyHealth\":1000.0,\"modPlateHolder\":-1,\"modTransmission\":-1,\"modHood\":-1,\"modWindows\":-1,\"windowTint\":-1,\"modLivery2\":-1,\"modEngine\":-1,\"color1\":2,\"dirtLevel\":0.0,\"modArchCover\":-1,\"modWheelVariat\":false,\"modRoof\":-1,\"modAerials\":-1,\"ColorType\":[-1,-1],\"model\":1528290163,\"plateIndex\":4,\"modAPlate\":-1,\"extras\":{\"7\":true,\"2\":true,\"1\":true,\"4\":true,\"3\":true,\"6\":true,\"5\":true},\"modBrakes\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modStruts\":-1,\"modHorns\":-1,\"wheelColor\":156,\"modTrimB\":-1,\"modLivery\":1,\"modGrille\":-1,\"color4\":[8,8,8],\"paintType\":[7,7],\"modTank\":-1,\"modHydrolic\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"xenonColor\":255,\"intcolor\":0,\"modOrnaments\":-1,\"engineHealth\":1000.0,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"drift\":false,\"modAirFilter\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"modFender\":-1,\"modTrimA\":-1,\"modTrunk\":-1,\"modSideSkirt\":-1,\"modTyresBurst\":1,\"color3\":[28,30,33],\"dshcolor\":0,\"pearlescentColor\":134,\"modFrame\":-1,\"modArmor\":-1}', 'BC787BX'),
(13, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 39, 'adacxklasse', '{\"drift\":false,\"fuelLevel\":31.5,\"modTurbo\":false,\"dirtLevel\":7.0,\"modRightFender\":-1,\"modSteeringWheel\":-1,\"plateIndex\":0,\"modEngine\":-1,\"modFender\":-1,\"modLivery\":-1,\"modHydrolic\":-1,\"modDashboard\":-1,\"ColorType\":[-1,-1],\"modFrontBumper\":-1,\"modTrimB\":-1,\"modArmor\":-1,\"color3\":[28,30,33],\"modFrontWheels\":-1,\"modTank\":-1,\"paintType\":[7,7],\"modEngineBlock\":-1,\"wheelColor\":156,\"modBackWheels\":-1,\"modBrakes\":-1,\"modOrnaments\":-1,\"color4\":[28,30,33],\"modSideSkirt\":-1,\"modTyresBurst\":1,\"modExhaust\":-1,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":3,\"modAPlate\":-1,\"modHood\":-1,\"modSuspension\":-1,\"modDial\":-1,\"intcolor\":0,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":-1,\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modRoof\":-1,\"modTransmission\":-1,\"model\":836291936,\"dshcolor\":0,\"modStruts\":-1,\"plate\":\"YP975OW\",\"modSmokeEnabled\":false,\"modAerials\":-1,\"pearlescentColor\":134,\"modPlateHolder\":-1,\"modTrunk\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"neonColor\":[255,0,255],\"modFrame\":-1,\"color2\":2,\"bodyHealth\":1000.0,\"modRearBumper\":-1,\"modWheelVariat\":false,\"modVanityPlate\":-1,\"engineHealth\":1000.0,\"extras\":{\"4\":false,\"5\":false,\"11\":true,\"12\":false,\"8\":false,\"1\":false,\"6\":false,\"7\":false},\"modShifterLeavers\":-1,\"xenonColor\":255,\"modLivery2\":-1,\"modSpoilers\":-1,\"modWindows\":-1,\"windowTint\":-1,\"color1\":2}', 'YP975OW'),
(14, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 39, 'adacxklasse', '{}', 'RK835WE'),
(15, '94aa00d10f636f0acd4f8b7446724e62aae88114', 39, 'adacxklasse', '{\"extras\":{\"4\":false,\"11\":true,\"12\":false,\"1\":true,\"8\":false,\"7\":false,\"6\":false,\"5\":false},\"modEngine\":-1,\"modSpoilers\":-1,\"plateIndex\":3,\"color3\":[28,30,33],\"modSeats\":-1,\"modEngineBlock\":-1,\"color1\":2,\"modTyresBurst\":1,\"modTransmission\":-1,\"modHorns\":-1,\"modTank\":-1,\"modOrnaments\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"modBrakes\":-1,\"modSmokeEnabled\":false,\"pearlescentColor\":134,\"model\":836291936,\"bodyHealth\":1000.0,\"ColorType\":[-1,-1],\"modSpeakers\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"modLivery2\":-1,\"modRightFender\":-1,\"modDashboard\":-1,\"modBackWheels\":-1,\"modDial\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modXenon\":false,\"color4\":[28,30,33],\"modRoof\":-1,\"wheelColor\":156,\"xenonColor\":255,\"modAerials\":-1,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"modLivery\":-1,\"engineHealth\":1000.0,\"modGrille\":-1,\"modTrunk\":-1,\"color2\":2,\"modAPlate\":-1,\"modExhaust\":-1,\"dirtLevel\":5.0,\"modFrontWheels\":-1,\"dshcolor\":0,\"intcolor\":0,\"modTurbo\":false,\"modHood\":-1,\"paintType\":[7,7],\"fuelLevel\":40.9,\"modPlateHolder\":-1,\"wheels\":3,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"modWheelVariat\":false,\"drift\":false,\"modTrimB\":-1,\"modWindows\":-1,\"plate\":\"IP865HJ\",\"modShifterLeavers\":-1,\"modFrontBumper\":-1}', 'IP865HJ'),
(16, '94aa00d10f636f0acd4f8b7446724e62aae88114', 39, 'adacvolvo', '{\"extras\":{\"4\":false,\"6\":false,\"1\":false},\"modEngine\":-1,\"modSpoilers\":-1,\"plateIndex\":4,\"color3\":[255,255,255],\"modSeats\":-1,\"modEngineBlock\":-1,\"color1\":134,\"modTyresBurst\":1,\"modTransmission\":-1,\"modHorns\":-1,\"modTank\":-1,\"modOrnaments\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"modBrakes\":-1,\"modSmokeEnabled\":false,\"pearlescentColor\":156,\"model\":-382087046,\"bodyHealth\":1000.0,\"ColorType\":[-1,-1],\"modSpeakers\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"modLivery2\":-1,\"modRightFender\":-1,\"modDashboard\":-1,\"modBackWheels\":-1,\"modDial\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modXenon\":false,\"color4\":[255,255,255],\"modRoof\":-1,\"wheelColor\":156,\"xenonColor\":255,\"modAerials\":-1,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"modLivery\":0,\"engineHealth\":1000.0,\"modGrille\":-1,\"modTrunk\":-1,\"color2\":134,\"modAPlate\":-1,\"modExhaust\":-1,\"dirtLevel\":1.1,\"modFrontWheels\":-1,\"dshcolor\":0,\"intcolor\":0,\"modTurbo\":false,\"modHood\":-1,\"paintType\":[7,7],\"fuelLevel\":25.1,\"modPlateHolder\":-1,\"wheels\":0,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"modWheelVariat\":false,\"drift\":false,\"modTrimB\":-1,\"modWindows\":-1,\"plate\":\"LH558YJ\",\"modShifterLeavers\":-1,\"modFrontBumper\":-1}', 'LH558YJ'),
(17, '94aa00d10f636f0acd4f8b7446724e62aae88114', 39, 'adacskoda', '{}', 'CB556GW'),
(18, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 44, 'caddyk', '{\"modTank\":-1,\"wheelColor\":11,\"modRearBumper\":-1,\"plate\":\"IG758LK\",\"windowTint\":3,\"drift\":false,\"modEngine\":3,\"tyreSmokeColor\":[255,18,105],\"intcolor\":0,\"neonEnabled\":[1,1,1,1],\"fuelLevel\":64.9,\"modSteeringWheel\":-1,\"modLivery2\":-1,\"dirtLevel\":9.4,\"modFrame\":-1,\"modShifterLeavers\":-1,\"modTransmission\":2,\"modDial\":-1,\"modSmokeEnabled\":1,\"modTrimA\":-1,\"modSideSkirt\":1,\"modLivery\":5,\"modSeats\":-1,\"modPlateHolder\":-1,\"modVanityPlate\":-1,\"modHood\":0,\"ColorType\":[-1,-1],\"modTurbo\":1,\"modFrontWheels\":-1,\"modAerials\":-1,\"bodyHealth\":812.7,\"plateIndex\":4,\"model\":2102924321,\"modDoorSpeaker\":-1,\"color4\":[8,8,8],\"dshcolor\":0,\"modXenon\":1,\"modTrunk\":-1,\"modHydrolic\":-1,\"modBrakes\":-1,\"color3\":[0,0,0],\"modSpoilers\":-1,\"color1\":163,\"modRoof\":-1,\"modTyresBurst\":1,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modEngineBlock\":-1,\"paintType\":[7,7],\"pearlescentColor\":0,\"modHorns\":1,\"color2\":0,\"extras\":[],\"modWheelVariat\":false,\"modSuspension\":3,\"modRightFender\":-1,\"modStruts\":-1,\"neonColor\":[255,0,255],\"modFender\":0,\"modArmor\":4,\"modArchCover\":-1,\"xenonColor\":12,\"modExhaust\":1,\"wheels\":0,\"engineHealth\":993.0,\"modAirFilter\":-1,\"modWindows\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modSpeakers\":-1}', 'IG758LK'),
(19, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 32, 'polmbv250', '{}', 'NK424FR'),
(20, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 32, 'kripoaudis5', '{}', 'EP647FT'),
(21, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 32, 'polmbv250', '{}', 'RS178SK'),
(22, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 32, 'kripoaudis5', '{}', 'KS927WH'),
(23, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 32, 'polmotorrad', '{}', 'BM947QP'),
(24, '170c0781bf3db9b54847ee453224dfab755ad36c', 32, 'polmotorrad', '{\"modStruts\":-1,\"modHood\":-1,\"modExhaust\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"intcolor\":164,\"xenonColor\":255,\"pearlescentColor\":0,\"neonColor\":[255,0,255],\"color1\":192,\"paintType\":[0,0],\"modEngineBlock\":-1,\"bodyHealth\":1000.0,\"modAerials\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"dirtLevel\":5.0,\"plate\":\"SL480ZO\",\"model\":1535035502,\"modBrakes\":-1,\"modFrontBumper\":-1,\"fuelLevel\":62.9,\"drift\":false,\"modLivery2\":-1,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"modTurbo\":false,\"color4\":[0,0,0],\"modVanityPlate\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"modRearBumper\":-1,\"color2\":240,\"modWindows\":-1,\"modShifterLeavers\":-1,\"modSuspension\":-1,\"modDial\":-1,\"color3\":[0,0,0],\"modTrunk\":-1,\"modFender\":-1,\"modTrimB\":-1,\"dshcolor\":32,\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modSideSkirt\":-1,\"modEngine\":-1,\"wheels\":6,\"modTransmission\":-1,\"modTyresBurst\":1,\"modHorns\":-1,\"modGrille\":-1,\"modXenon\":false,\"modRoof\":-1,\"modSeats\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modArmor\":-1,\"wheelColor\":16,\"modSmokeEnabled\":false,\"engineHealth\":1000.0,\"modBackWheels\":-1,\"modAirFilter\":-1,\"modTank\":-1,\"ColorType\":[0,0],\"extras\":{\"1\":false,\"2\":true,\"4\":true,\"5\":false,\"6\":true,\"7\":false,\"9\":false},\"modDoorSpeaker\":-1,\"modLivery\":-1,\"plateIndex\":4,\"modWheelVariat\":false}', 'SL480ZO'),
(25, '170c0781bf3db9b54847ee453224dfab755ad36c', 32, 'kripoaudis5', '{\"modStruts\":-1,\"modHood\":-1,\"modExhaust\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"intcolor\":0,\"xenonColor\":255,\"pearlescentColor\":3,\"neonColor\":[255,0,255],\"color1\":1,\"paintType\":[7,7],\"modEngineBlock\":-1,\"bodyHealth\":1000.0,\"modAerials\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"dirtLevel\":5.0,\"plate\":\"YJ017KN\",\"model\":2016315385,\"modBrakes\":-1,\"modFrontBumper\":-1,\"fuelLevel\":27.8,\"drift\":false,\"modLivery2\":-1,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"modTurbo\":false,\"color4\":[15,15,15],\"modVanityPlate\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"modRearBumper\":-1,\"color2\":1,\"modWindows\":-1,\"modShifterLeavers\":-1,\"modSuspension\":-1,\"modDial\":-1,\"color3\":[15,15,15],\"modTrunk\":-1,\"modFender\":-1,\"modTrimB\":-1,\"dshcolor\":0,\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modSideSkirt\":-1,\"modEngine\":-1,\"wheels\":5,\"modTransmission\":-1,\"modTyresBurst\":1,\"modHorns\":-1,\"modGrille\":-1,\"modXenon\":false,\"modRoof\":-1,\"modSeats\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modArmor\":-1,\"wheelColor\":156,\"modSmokeEnabled\":false,\"engineHealth\":1000.0,\"modBackWheels\":-1,\"modAirFilter\":-1,\"modTank\":-1,\"ColorType\":[-1,-1],\"extras\":{\"10\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":true,\"6\":false,\"7\":false,\"8\":false},\"modDoorSpeaker\":-1,\"modLivery\":-1,\"plateIndex\":3,\"modWheelVariat\":false}', 'YJ017KN'),
(26, '170c0781bf3db9b54847ee453224dfab755ad36c', 32, 'polmbv250', '{}', 'XW925RZ'),
(27, '170c0781bf3db9b54847ee453224dfab755ad36c', 32, 'polmbv250', '{\"modStruts\":-1,\"modHood\":-1,\"modExhaust\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"intcolor\":0,\"xenonColor\":255,\"pearlescentColor\":3,\"neonColor\":[255,0,255],\"color1\":1,\"paintType\":[7,7],\"modEngineBlock\":-1,\"bodyHealth\":999.7,\"modAerials\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"dirtLevel\":12.0,\"plate\":\"DG463IN\",\"model\":-428465089,\"modBrakes\":-1,\"modFrontBumper\":-1,\"fuelLevel\":76.8,\"drift\":false,\"modLivery2\":-1,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"modTurbo\":false,\"color4\":[15,15,15],\"modVanityPlate\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"modRearBumper\":-1,\"color2\":1,\"modWindows\":-1,\"modShifterLeavers\":-1,\"modSuspension\":-1,\"modDial\":-1,\"color3\":[15,15,15],\"modTrunk\":-1,\"modFender\":-1,\"modTrimB\":-1,\"dshcolor\":0,\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modSideSkirt\":-1,\"modEngine\":-1,\"wheels\":5,\"modTransmission\":-1,\"modTyresBurst\":1,\"modHorns\":-1,\"modGrille\":-1,\"modXenon\":false,\"modRoof\":-1,\"modSeats\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modArmor\":-1,\"wheelColor\":156,\"modSmokeEnabled\":false,\"engineHealth\":1000.0,\"modBackWheels\":-1,\"modAirFilter\":-1,\"modTank\":-1,\"ColorType\":[-1,-1],\"extras\":{\"1\":true,\"2\":true,\"4\":false,\"12\":false,\"11\":false,\"7\":false,\"8\":false},\"modDoorSpeaker\":-1,\"modLivery\":-1,\"plateIndex\":3,\"modWheelVariat\":false}', 'DG463IN');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs_shops`
--

CREATE TABLE `jobs_shops` (
  `id` int(11) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `item_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs_wardrobes`
--

CREATE TABLE `jobs_wardrobes` (
  `id` int(11) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  `label` varchar(50) NOT NULL,
  `outfit` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `jobs_wardrobes`
--

INSERT INTO `jobs_wardrobes` (`id`, `identifier`, `label`, `outfit`) VALUES
(1, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Fresh', '{\"pants_2\":1,\"chain_1\":0,\"torso_2\":8,\"beard_1\":8,\"bags_1\":0,\"lipstick_2\":0,\"tshirt_1\":15,\"ears_2\":4,\"torso_1\":53,\"eyebrows_3\":3,\"shoes_2\":13,\"tshirt_2\":0,\"age_1\":0,\"lipstick_4\":0,\"makeup_4\":0,\"makeup_1\":0,\"makeup_3\":0,\"hair_color_2\":29,\"sex\":0,\"chain_2\":0,\"face\":19,\"hair_color_1\":29,\"hair_1\":3,\"beard_3\":0,\"glasses_1\":7,\"ears_1\":14,\"pants_1\":46,\"bproof_1\":0,\"mask_1\":0,\"age_2\":1,\"lipstick_3\":0,\"decals_1\":0,\"eyebrows_4\":9,\"glasses_2\":4,\"helmet_2\":2,\"arms\":1,\"mask_2\":0,\"skin\":4,\"beard_2\":10,\"hair_2\":0,\"lipstick_1\":0,\"eyebrows_2\":10,\"shoes_1\":7,\"bproof_2\":0,\"decals_2\":0,\"makeup_2\":0,\"beard_4\":0,\"helmet_1\":147,\"bags_2\":0,\"eyebrows_1\":0}'),
(2, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Tuner Chef', '{\"hair_color_2\":29,\"helmet_2\":2,\"hair_color_1\":29,\"decals_1\":0,\"beard_4\":0,\"bproof_2\":0,\"hair_1\":3,\"face\":19,\"shoes_2\":6,\"bproof_1\":0,\"lipstick_1\":0,\"lipstick_4\":0,\"torso_1\":595,\"mask_1\":0,\"glasses_2\":4,\"skin\":4,\"ears_1\":14,\"ears_2\":4,\"arms\":1,\"makeup_2\":0,\"beard_2\":10,\"beard_1\":8,\"helmet_1\":147,\"sex\":0,\"torso_2\":10,\"makeup_3\":0,\"makeup_4\":0,\"makeup_1\":0,\"lipstick_3\":0,\"eyebrows_4\":9,\"mask_2\":0,\"beard_3\":0,\"bags_1\":0,\"decals_2\":0,\"pants_2\":22,\"tshirt_1\":170,\"arms2\":0,\"eyebrows_2\":10,\"pants_1\":132,\"bags_2\":0,\"age_1\":0,\"hair_2\":0,\"chain_1\":0,\"eyebrows_3\":3,\"tshirt_2\":4,\"age_2\":1,\"lipstick_2\":0,\"glasses_1\":7,\"shoes_1\":62,\"chain_2\":0,\"eyebrows_1\":0}'),
(3, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Chef Bürotag', '{\"hair_color_2\":29,\"helmet_2\":1,\"hair_color_1\":29,\"decals_1\":0,\"beard_4\":0,\"bproof_2\":0,\"hair_1\":3,\"face\":19,\"shoes_2\":3,\"bproof_1\":0,\"lipstick_1\":0,\"lipstick_4\":0,\"torso_1\":381,\"mask_1\":0,\"glasses_2\":4,\"skin\":4,\"ears_1\":14,\"ears_2\":4,\"arms\":4,\"makeup_2\":0,\"beard_2\":10,\"beard_1\":8,\"helmet_1\":147,\"sex\":0,\"torso_2\":0,\"makeup_3\":0,\"makeup_4\":0,\"makeup_1\":0,\"lipstick_3\":0,\"eyebrows_4\":9,\"mask_2\":0,\"beard_3\":0,\"bags_1\":0,\"decals_2\":0,\"pants_2\":4,\"tshirt_1\":150,\"arms2\":0,\"eyebrows_2\":10,\"pants_1\":233,\"bags_2\":0,\"age_1\":0,\"hair_2\":0,\"chain_1\":0,\"eyebrows_3\":3,\"tshirt_2\":4,\"age_2\":1,\"lipstick_2\":0,\"glasses_1\":7,\"shoes_1\":62,\"chain_2\":0,\"eyebrows_1\":0}'),
(4, '94aa00d10f636f0acd4f8b7446724e62aae88114', 'boss', '{\"hair_1\":75,\"lipstick_4\":0,\"torso_2\":0,\"mask_2\":0,\"eyebrows_3\":0,\"age_1\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"shoes_2\":0,\"lipstick_3\":0,\"hair_color_2\":15,\"decals_1\":0,\"glasses_1\":5,\"ears_1\":-1,\"pants_1\":10,\"arms\":4,\"decals_2\":0,\"bproof_2\":0,\"helmet_2\":0,\"chain_2\":0,\"beard_2\":10,\"sex\":0,\"beard_3\":0,\"skin\":0,\"eyebrows_2\":10,\"tshirt_2\":0,\"face\":0,\"tshirt_1\":15,\"pants_2\":0,\"makeup_1\":0,\"arms2\":1,\"helmet_1\":-1,\"beard_1\":14,\"chain_1\":0,\"bags_1\":0,\"lipstick_1\":0,\"ears_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"torso_1\":101,\"makeup_4\":0,\"beard_4\":0,\"makeup_2\":0,\"eyebrows_1\":31,\"age_2\":0,\"shoes_1\":10,\"makeup_3\":0,\"mask_1\":0,\"bags_2\":0,\"hair_color_1\":15,\"glasses_2\":7}'),
(5, '94aa00d10f636f0acd4f8b7446724e62aae88114', 'adac-T- shirt', '{\"hair_1\":75,\"lipstick_4\":0,\"torso_2\":0,\"mask_2\":0,\"eyebrows_3\":0,\"age_1\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"shoes_2\":2,\"lipstick_3\":0,\"hair_color_2\":15,\"decals_1\":0,\"glasses_1\":5,\"ears_1\":-1,\"pants_1\":83,\"arms\":0,\"decals_2\":0,\"bproof_2\":0,\"helmet_2\":0,\"chain_2\":0,\"beard_2\":10,\"sex\":0,\"beard_3\":0,\"skin\":0,\"eyebrows_2\":10,\"tshirt_2\":0,\"face\":0,\"tshirt_1\":61,\"pants_2\":0,\"makeup_1\":0,\"arms2\":1,\"helmet_1\":-1,\"beard_1\":14,\"chain_1\":0,\"bags_1\":0,\"lipstick_1\":0,\"ears_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"torso_1\":105,\"makeup_4\":0,\"beard_4\":0,\"makeup_2\":0,\"eyebrows_1\":31,\"age_2\":0,\"shoes_1\":20,\"makeup_3\":0,\"mask_1\":0,\"bags_2\":0,\"hair_color_1\":15,\"glasses_2\":7}'),
(6, '94aa00d10f636f0acd4f8b7446724e62aae88114', 'adac-jacke', '{\"hair_1\":75,\"lipstick_4\":0,\"torso_2\":0,\"mask_2\":0,\"eyebrows_3\":0,\"age_1\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"shoes_2\":2,\"lipstick_3\":0,\"hair_color_2\":15,\"decals_1\":0,\"glasses_1\":5,\"ears_1\":-1,\"pants_1\":83,\"arms\":14,\"decals_2\":0,\"bproof_2\":0,\"helmet_2\":0,\"chain_2\":0,\"beard_2\":10,\"sex\":0,\"beard_3\":0,\"skin\":0,\"eyebrows_2\":10,\"tshirt_2\":0,\"face\":0,\"tshirt_1\":77,\"pants_2\":0,\"makeup_1\":0,\"arms2\":1,\"helmet_1\":-1,\"beard_1\":14,\"chain_1\":0,\"bags_1\":0,\"lipstick_1\":0,\"ears_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"torso_1\":122,\"makeup_4\":0,\"beard_4\":0,\"makeup_2\":0,\"eyebrows_1\":31,\"age_2\":0,\"shoes_1\":20,\"makeup_3\":0,\"mask_1\":0,\"bags_2\":0,\"hair_color_1\":15,\"glasses_2\":7}'),
(7, '94aa00d10f636f0acd4f8b7446724e62aae88114', 'adac- luftrettung', '{\"hair_1\":75,\"lipstick_4\":0,\"torso_2\":0,\"mask_2\":0,\"eyebrows_3\":0,\"age_1\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"shoes_2\":2,\"lipstick_3\":0,\"hair_color_2\":15,\"decals_1\":0,\"glasses_1\":5,\"ears_1\":-1,\"pants_1\":83,\"arms\":16,\"decals_2\":0,\"bproof_2\":0,\"helmet_2\":0,\"chain_2\":0,\"beard_2\":10,\"sex\":0,\"beard_3\":0,\"skin\":0,\"eyebrows_2\":10,\"tshirt_2\":0,\"face\":0,\"tshirt_1\":59,\"pants_2\":0,\"makeup_1\":0,\"arms2\":1,\"helmet_1\":-1,\"beard_1\":14,\"chain_1\":0,\"bags_1\":0,\"lipstick_1\":0,\"ears_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"torso_1\":181,\"makeup_4\":0,\"beard_4\":0,\"makeup_2\":0,\"eyebrows_1\":31,\"age_2\":0,\"shoes_1\":20,\"makeup_3\":0,\"mask_1\":0,\"bags_2\":0,\"hair_color_1\":15,\"glasses_2\":7}'),
(8, '170c0781bf3db9b54847ee453224dfab755ad36c', 'Streetoutfit', '{\"hair_color_2\":15,\"bags_1\":0,\"ears_1\":-1,\"moles_1\":0,\"blush_3\":0,\"chain_2\":0,\"watches_2\":0,\"bodyb_2\":0,\"beard_3\":0,\"bproof_2\":0,\"age_2\":0,\"complexion_2\":0,\"pants_1\":81,\"age_1\":0,\"pants_2\":0,\"makeup_3\":0,\"eyebrows_1\":0,\"hair_1\":50,\"blemishes_1\":0,\"bodyb_1\":0,\"bags_2\":0,\"lipstick_1\":0,\"beard_1\":0,\"hair_2\":0,\"chain_1\":0,\"face\":0,\"mask_2\":0,\"shoes_2\":1,\"beard_4\":0,\"helmet_2\":0,\"sun_2\":0,\"blush_2\":0,\"bracelets_2\":0,\"helmet_1\":-1,\"mask_1\":0,\"beard_2\":0,\"watches_1\":-1,\"glasses_1\":0,\"shoes_1\":20,\"lipstick_4\":0,\"ears_2\":0,\"bracelets_1\":-1,\"makeup_4\":0,\"lipstick_3\":0,\"tshirt_1\":15,\"eyebrows_2\":0,\"chest_1\":0,\"sun_1\":0,\"arms\":1,\"hair_color_1\":29,\"bproof_1\":0,\"makeup_1\":0,\"blush_1\":0,\"glasses_2\":0,\"chest_3\":0,\"skin\":4,\"lipstick_2\":0,\"moles_2\":0,\"torso_2\":1,\"complexion_1\":0,\"makeup_2\":0,\"blemishes_2\":0,\"arms_2\":0,\"decals_2\":0,\"eyebrows_4\":0,\"decals_1\":0,\"eyebrows_3\":0,\"chest_2\":0,\"tshirt_2\":0,\"eye_color\":0,\"sex\":0,\"torso_1\":617}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(11, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
(12, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(13, 'cardealer', 2, 'experienced', 'Experienced', 40, '{}', '{}'),
(14, 'cardealer', 3, 'boss', 'Boss', 0, '{}', '{}'),
(15, 'lumberjack', 0, 'employee', 'Employee', 0, '{}', '{}'),
(16, 'fisherman', 0, 'employee', 'Employee', 0, '{}', '{}'),
(17, 'fueler', 0, 'employee', 'Employee', 0, '{}', '{}'),
(18, 'reporter', 0, 'employee', 'Employee', 0, '{}', '{}'),
(20, 'miner', 0, 'employee', 'Employee', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(31, 'taxi', 0, 'recrue', 'Recruit', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(32, 'taxi', 1, 'novice', 'Cabby', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(33, 'taxi', 2, 'experimente', 'Experienced', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(34, 'taxi', 3, 'uber', 'Uber Cabby', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(35, 'taxi', 4, 'boss', 'Lead Cabby', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(36, 'banker', 0, 'advisor', 'Consultant', 10, '{}', '{}'),
(37, 'banker', 1, 'banker', 'Banker', 20, '{}', '{}'),
(38, 'banker', 2, 'business_banker', 'Investment banker', 30, '{}', '{}'),
(39, 'banker', 3, 'trader', 'Broker', 40, '{}', '{}'),
(40, 'banker', 4, 'boss', 'Boss', 0, '{}', '{}'),
(41, 'bundeskrankenhaus___off_duty', 1, 'off_praktikant', 'EMT', 0, '{}', '{}'),
(42, 'bundeskrankenhaus___off_duty', 2, 'off_rettungshelfer', 'Sr. EMT', 0, '{}', '{}'),
(43, 'bundeskrankenhaus___off_duty', 3, 'off_rettungssanitaeter', 'EMT Supervisor', 0, '{}', '{}'),
(300, 'trucker', 1, 'recruit', 'Rekrut', 5000, '', ''),
(320, 'mechanic', 12, 'chef', 'Chef', 32000, '{}', '{}'),
(321, 'off_mechanic', 1, 'off_praktikant', 'Praktikant', 0, '{}', '{}'),
(322, 'off_mechanic', 2, 'off_azubi_1_lehrjahr', 'Azubi 1.Lehrjahr', 0, '{}', '{}'),
(323, 'off_mechanic', 3, 'off_azubi_2_lehrjahr', 'Azubi 2.Lehrjahr', 0, '{}', '{}'),
(324, 'off_mechanic', 4, 'off_azubi_3_lehrjahr', 'Azubi 3.Lehrjahr', 0, '{}', '{}'),
(327, 'mechanic', 11, 'co_chef', 'Co.Chef', 30000, '{}', '{}'),
(328, 'mechanic', 10, 'management', 'Management', 26800, '{}', '{}'),
(329, 'mechanic', 9, 'perso', 'Personalleitung', 26000, '{}', '{}'),
(330, 'mechanic', 8, 'werstattleitung', 'Werstattleitung', 24000, '{}', '{}'),
(331, 'mechanic', 7, 'ausbildungsabteilung', 'Ausbildungsabteilung', 22000, '{}', '{}'),
(332, 'mechanic', 6, 'meister', 'Meister', 20000, '{}', '{}'),
(333, 'mechanic', 5, 'geselle', 'Geselle', 18000, '{}', '{}'),
(334, 'mechanic', 4, 'azubi_3_lehrjahr', 'Azubi 3.Lehrjahr', 16000, '{}', '{}'),
(335, 'mechanic', 3, 'azubi_2_lehrjahr', 'Azubi 2.Lehrjahr', 14000, '{}', '{}'),
(337, 'mechanic', 2, 'azubi_1_lehrjahr', 'Azubi 1.Lehrjahr', 12000, '{}', '{}'),
(338, 'mechanic', 1, 'praktikant', 'Praktikant', 8000, '{}', '{}'),
(339, 'off_mechanic', 5, 'off_geselle', 'Geselle', 0, '{}', '{}'),
(340, 'off_mechanic', 6, 'off_meister', 'Meister', 0, '{}', '{}'),
(341, 'off_mechanic', 7, 'off_ausbildungsabteilung', 'Ausbildungsabteilung', 0, '{}', '{}'),
(342, 'off_mechanic', 8, 'off_werstattleitung', 'Werstattleitung', 0, '{}', '{}'),
(343, 'off_mechanic', 9, 'off_personalabteilung', 'Personalabteilung', 0, '{}', '{}'),
(344, 'off_mechanic', 10, 'off_management', 'Management', 0, '{}', '{}'),
(345, 'off_mechanic', 11, 'off_co_chef', 'Co.Chef', 0, '{}', '{}'),
(346, 'off_mechanic', 12, 'off_chef', 'Chef', 0, '{}', '{}'),
(357, 'adac', 1, 'praktikant', 'Praktikant', 1, '{}', '{}'),
(358, 'adac', 2, 'lehrling', 'Lehrling', 2, '{}', '{}'),
(359, 'adac', 3, 'mitarbeiter', 'Mitarbeiter', 3, '{}', '{}'),
(360, 'adac', 4, 'ausbilder', 'Ausbilder', 4, '{}', '{}'),
(361, 'adac', 5, 'meister', 'Meister', 5, '{}', '{}'),
(362, 'adac', 6, 'stv_boss', 'Stv.Boss', 6, '{}', '{}'),
(363, 'adac', 7, 'boss', 'Boss', 50000, '{}', '{}'),
(364, 'polizei', 12, 'polizeipraesident', 'Polizeipraesident', 40000, '{}', '{}'),
(365, 'polizei', 11, 'leitender_polizeidirektor_', 'Leitender Polizeidirektor ', 38000, '{}', '{}'),
(366, 'polizei', 10, 'polizeidirektor', 'Polizeidirektor', 36000, '{}', '{}'),
(367, 'polizei', 9, 'polizeioberrat', 'Polizeioberrat', 34000, '{}', '{}'),
(368, 'polizei', 8, 'polizeirat', 'Polizeirat', 32000, '{}', '{}'),
(369, 'polizei', 7, 'erster_polizeihauptkommissar', 'Erster Polizeihauptkommissar', 30000, '{}', '{}'),
(370, 'polizei', 6, 'polizeihauptkommissar', 'Polizeihauptkommissar', 28000, '{}', '{}'),
(371, 'polizei', 5, 'polizeioberkommissar', 'Polizeioberkommissar', 26000, '{}', '{}'),
(372, 'polizei', 4, 'polizeikommissar', 'Polizeikommissar', 24000, '{}', '{}'),
(373, 'polizei', 3, 'polizeiobermeister', 'Polizeiobermeister', 22000, '{}', '{}'),
(374, 'polizei', 2, 'polizeimeister', 'Polizeimeister', 20000, '{}', '{}'),
(375, 'polizei', 1, 'polizeimeisteranwaerter', 'Polizeimeisteranwaerter', 8000, '{}', '{}'),
(400, 'bundeskrankenhaus', 1, 'praktikant', 'Praktikant', 1, '{}', '{}'),
(401, 'bundeskrankenhaus', 2, 'rettungshelfer', 'Rettungshelfer', 2, '{}', '{}'),
(402, 'bundeskrankenhaus', 3, 'rettungssanitaeter', 'Rettungssanitaeter', 3, '{}', '{}'),
(403, 'bundeskrankenhaus', 4, 'notfallsanitaeter', 'Notfallsanitaeter', 4, '{}', '{}'),
(404, 'bundeskrankenhaus', 5, 'arzt_im_praktikum', 'Arzt im Praktikum', 5, '{}', '{}'),
(405, 'bundeskrankenhaus', 6, 'arzt', 'Arzt', 6, '{}', '{}'),
(406, 'bundeskrankenhaus', 7, 'notarzt', 'Notarzt', 7, '{}', '{}'),
(407, 'bundeskrankenhaus', 8, 'leitender_notarzt', 'Leitender Notarzt', 8, '{}', '{}'),
(408, 'bundeskrankenhaus', 9, 'oberarzt', 'Oberarzt', 9, '{}', '{}'),
(409, 'bundeskrankenhaus', 10, 'chefarzt', 'Chefarzt', 10, '{}', '{}'),
(410, 'bundeskrankenhaus', 11, '2_vors___bundeskrankenhaus', '2.Vors - Bundeskrankenhaus', 11, '{}', '{}'),
(411, 'bundeskrankenhaus', 12, '1_vors___bundeskrankenhaus', '1.Vors - Bundeskrankenhaus', 12, '{}', '{}'),
(412, 'bundeskrankenhaus___off_duty', 4, 'off_notfallsanitaeter', 'off_notfallsanitaeter', 0, '{}', '{}'),
(413, 'bundeskrankenhaus___off_duty', 5, 'off_arzt_im_praktikum', 'off_arzt im Praktikum', 0, '{}', '{}'),
(414, 'bundeskrankenhaus___off_duty', 6, 'off_arzt', 'off_arzt', 0, '{}', '{}'),
(415, 'bundeskrankenhaus___off_duty', 7, 'off_notarzt', 'off_notarzt', 0, '{}', '{}'),
(416, 'bundeskrankenhaus___off_duty', 8, 'off_leitender_notarzt', 'off_leitender notarzt', 0, '{}', '{}'),
(417, 'bundeskrankenhaus___off_duty', 9, 'off_oberarzt', 'off_oberarzt', 0, '{}', '{}'),
(418, 'bundeskrankenhaus___off_duty', 10, 'off_chefarzt', 'off_chefarzt', 0, '{}', '{}'),
(419, 'bundeskrankenhaus___off_duty', 11, 'off_2_stv_bundeskrankenhaus', 'off_2.Stv-Bundeskrankenhaus', 0, '{}', '{}'),
(420, 'bundeskrankenhaus___off_duty', 12, 'off_1_vors_bundeskrankenhaus', 'off_1.Vors-Bundeskrankenhaus', 0, '{}', '{}'),
(421, 'off_adac', 1, 'off_praktikant', 'Praktikant', 0, '{}', '{}'),
(422, 'off_adac', 2, 'off_lehrling', 'Lehrling', 0, '{}', '{}'),
(423, 'off_adac', 3, 'off_mitarbeiter', 'Mitarbeiter', 0, '{}', '{}'),
(424, 'off_adac', 4, 'off_ausbilder', 'Ausbilder', 0, '{}', '{}'),
(425, 'off_adac', 5, 'off_meister', 'Meister', 0, '{}', '{}'),
(426, 'off_adac', 6, 'off_stv_boss', 'Stv.Boss', 0, '{}', '{}'),
(427, 'off_adac', 7, 'off_boss', 'Boss', 0, '{}', '{}'),
(428, 'unemployed', 0, 'unemployed', 'Unemployed', 0, '{}', '{}'),
(429, 'off_polizei', 1, 'off_polizeimeisteranwaerter', 'Polizeimeisteranwaerter', 0, '{}', '{}'),
(430, 'off_polizei', 2, 'off_polizeimeister', 'Polizeimeister', 0, '{}', '{}'),
(431, 'off_polizei', 3, 'off_polizeiobermeister', 'Polizeiobermeister', 0, '{}', '{}'),
(432, 'off_polizei', 4, 'off_polizeikommissar', 'Polizeikommissar', 0, '{}', '{}'),
(433, 'off_polizei', 5, 'off_polizeioberkommissar', 'Polizeioberkommissar', 0, '{}', '{}'),
(434, 'off_polizei', 6, 'off_polizeihauptkommissar', 'Polizeihauptkommissar', 0, '{}', '{}'),
(435, 'off_polizei', 7, 'off_erster_polizeihauptkommissar', 'Erster Polizeihauptkommissar', 0, '{}', '{}'),
(436, 'off_polizei', 8, 'off_polizeirat', 'Polizeirat', 0, '{}', '{}'),
(437, 'off_polizei', 9, 'off_polizeioberrat', 'off_Polizeioberrat', 0, '{}', '{}'),
(438, 'off_polizei', 10, 'off_polizeidirektor', 'Polizeidirektor', 0, '{}', '{}'),
(439, 'off_polizei', 11, 'off_leitender_polizeidirektor', 'Leitender Polizeidirektor', 0, '{}', '{}'),
(440, 'off_polizei', 12, 'off_polizeipraesident', 'Polizeipraesident', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `laboratories`
--

CREATE TABLE `laboratories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `allowed_recipes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `allowed_jobs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `icon_type` int(11) NOT NULL,
  `scale` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `bounce` int(11) NOT NULL DEFAULT 0,
  `follow_camera` int(11) NOT NULL DEFAULT 0,
  `rotate` int(11) NOT NULL DEFAULT 0,
  `color` varchar(50) NOT NULL DEFAULT '0',
  `opacity` int(11) NOT NULL DEFAULT 0,
  `blip_name` varchar(50) DEFAULT NULL,
  `blip_sprite` int(11) DEFAULT NULL,
  `blip_color` int(11) DEFAULT NULL,
  `blip_scale` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `laboratories`
--

INSERT INTO `laboratories` (`id`, `name`, `coords`, `allowed_recipes`, `allowed_jobs`, `icon_type`, `scale`, `bounce`, `follow_camera`, `rotate`, `color`, `opacity`, `blip_name`, `blip_sprite`, `blip_color`, `blip_scale`) VALUES
(3, 'Labor Redneck Gebäude', '{\"y\":4969.04,\"x\":2433.71,\"z\":41.35}', '{\"1\":true,\"2\":true}', 'false', 1, '{\"y\":3,\"x\":3,\"z\":1}', 0, 0, 0, '{\"r\":11,\"g\":249,\"b\":221}', 217, NULL, NULL, NULL, NULL),
(4, 'Labor Einkaufladen Sandy', '{\"y\":3605.76,\"x\":1391.94,\"z\":37.94}', '{\"1\":true,\"3\":true,\"2\":true}', 'false', 1, '{\"y\":3,\"x\":3,\"z\":1}', 0, 0, 0, '{\"r\":11,\"g\":249,\"b\":221}', 229, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('boat', 'Boat License'),
('dmv', 'Driving Permit'),
('drive', 'Drivers License'),
('drive_bike', 'Motorcycle License'),
('drive_truck', 'Commercial Drivers License'),
('weapon', 'Weapon License'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `myfuel_balance`
--

CREATE TABLE `myfuel_balance` (
  `uid` int(11) NOT NULL,
  `gas_station_id` int(11) NOT NULL,
  `costtype` varchar(45) NOT NULL,
  `fuel_type` varchar(45) NOT NULL,
  `fuel_amount` int(11) NOT NULL,
  `fuel_singleprice` double NOT NULL,
  `totalprice` double NOT NULL,
  `createddate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `myfuel_balance`
--

INSERT INTO `myfuel_balance` (`uid`, `gas_station_id`, `costtype`, `fuel_type`, `fuel_amount`, `fuel_singleprice`, `totalprice`, `createddate`) VALUES
(1, 10, 'income', 'gasoline', 20, 4.52, 86, '2024-01-28 20:56:34'),
(12, 26, 'income', 'petrolcan', 1, 0, 30, '2024-02-05 20:13:00'),
(13, 26, 'income', 'petrolcan', 1, 0, 30, '2024-02-05 20:13:20'),
(14, 19, 'income', 'diesel', 59, 3.54, 209, '2024-02-05 20:18:46'),
(15, 19, 'income', 'diesel', 59, 3.54, 209, '2024-02-05 20:19:15'),
(21, 14, 'expenses', 'upgrade', 1, 20000, 20000, '2024-02-08 15:53:38'),
(22, 14, 'expenses', 'upgrade', 1, 40000, 40000, '2024-02-08 15:53:38'),
(23, 14, 'expenses', 'electricity', 152, 0.426, 65, '2024-02-08 15:55:02'),
(24, 14, 'expenses', 'electricity', 2348, 0.426, 10003, '2024-02-08 15:55:08'),
(25, 14, 'expenses', 'gasoline', 2500, 2.32152, 11607600, '2024-02-08 15:55:15'),
(26, 14, 'expenses', 'diesel', 1500, 1.6959310344827578, 2544, '2024-02-08 15:55:28'),
(27, 14, 'expenses', 'diesel', 1000, 1.6959310344827578, 5088, '2024-02-08 15:55:32'),
(28, 14, 'income', 'gasoline', 31, 4.98, 150, '2024-02-09 17:16:48'),
(30, 2, 'income', 'petrolcan', 1, 0, 30, '2024-02-09 23:11:21'),
(31, 2, 'income', 'petrolcan', 1, 0, 30, '2024-02-09 23:11:25'),
(32, 2, 'income', 'petrolcan', 1, 0, 30, '2024-02-09 23:11:30'),
(33, 2, 'income', 'petrolcan', 1, 0, 30, '2024-02-09 23:11:49'),
(34, 2, 'income', 'gasoline', 49, 4.95, 238, '2024-02-09 23:12:16'),
(35, 2, 'income', 'gasoline', 10, 4.95, 50, '2024-02-09 23:12:37'),
(36, 14, 'payout', 'payout', 0, 1000000, 1000000, '2024-02-18 14:12:21'),
(37, 14, 'income', 'gasoline', 28, 4.98, 135, '2024-02-18 18:11:12'),
(38, 8, 'deposit', 'deposit', 0, 100000, 100000, '2024-02-20 15:41:14'),
(39, 8, 'expenses', 'upgrade', 1, 10000, 10000, '2024-02-20 15:41:18'),
(40, 8, 'expenses', 'upgrade', 1, 12000, 12000, '2024-02-20 15:41:19'),
(41, 8, 'expenses', 'upgrade', 1, 15000, 15000, '2024-02-20 15:41:19'),
(42, 8, 'expenses', 'upgrade', 1, 20000, 20000, '2024-02-20 15:41:20'),
(43, 8, 'expenses', 'upgrade', 1, 40000, 40000, '2024-02-20 15:41:20'),
(47, 8, 'income', 'petrolcan', 1, 0, 30, '2024-02-21 21:35:08'),
(48, 8, 'income', 'gasoline', 57, 3.38, 190, '2024-02-21 21:35:52'),
(49, 8, 'income', 'gasoline', 74, 3.38, 247, '2024-02-21 21:42:50'),
(50, 8, 'income', 'gasoline', 53, 3.38, 176, '2024-02-22 07:39:10'),
(51, 8, 'income', 'petrolcan', 1, 0, 30, '2024-02-22 11:24:32'),
(52, 8, 'income', 'gasoline', 56, 3.38, 186, '2024-02-22 11:25:33'),
(53, 9, 'income', 'petrolcan', 1, 0, 30, '2024-02-22 11:28:57'),
(54, 8, 'income', 'petrolcan', 1, 0, 30, '2024-02-22 17:21:20'),
(55, 8, 'income', 'petrolcan', 1, 0, 30, '2024-02-22 17:21:31'),
(56, 8, 'income', 'gasoline', 77, 3.38, 257, '2024-02-22 17:22:39'),
(58, 14, 'deposit', 'deposit', 0, 850150, 850150, '2024-02-22 19:18:52'),
(59, 14, 'income', 'petrolcan', 1, 0, 30, '2024-02-23 09:27:07'),
(60, 14, 'income', 'petrolcan', 1, 0, 30, '2024-02-23 09:27:46'),
(61, 14, 'income', 'gasoline', 66, 4.98, 324, '2024-02-23 09:28:46'),
(62, 14, 'payout', 'payout', 0, 8000000, 8000000, '2024-02-23 17:37:01'),
(63, 14, 'deposit', 'deposit', 0, 15000, 15000, '2024-02-25 14:32:17'),
(64, 14, 'deposit', 'deposit', 0, 17829466, 17829466, '2024-02-25 14:33:03'),
(65, 14, 'deposit', 'deposit', 0, 20000000, 20000000, '2024-02-25 19:28:11'),
(66, 14, 'deposit', 'deposit', 0, 18000000, 18000000, '2024-02-25 19:28:17'),
(67, 14, 'deposit', 'deposit', 0, 18000000, 18000000, '2024-02-25 19:28:24'),
(68, 25, 'income', 'petrolcan', 1, 0, 30, '2024-02-25 20:46:22'),
(69, 25, 'income', 'gasoline', 77, 4.6, 350, '2024-02-25 20:47:12'),
(70, 12, 'income', 'gasoline', 20, 3.38, 68, '2024-02-25 21:11:07'),
(71, 26, 'income', 'gasoline', 1, 3.97, 4, '2024-02-25 21:17:37'),
(72, 18, 'income', 'petrolcan', 1, 0, 30, '2024-02-25 22:25:24'),
(73, 18, 'income', 'gasoline', 42, 3.07, 129, '2024-02-25 22:27:09'),
(74, 18, 'income', 'gasoline', 25, 3.07, 74, '2024-02-25 22:27:49'),
(75, 5, 'deposit', 'deposit', 0, 50000, 50000, '2024-02-25 22:32:11'),
(76, 5, 'expenses', 'upgrade', 1, 10000, 10000, '2024-02-25 22:32:16'),
(77, 5, 'expenses', 'upgrade', 1, 12000, 12000, '2024-02-25 22:32:17'),
(78, 5, 'expenses', 'upgrade', 1, 15000, 15000, '2024-02-25 22:32:17'),
(79, 5, 'deposit', 'deposit', 0, 100000, 100000, '2024-02-25 22:32:24'),
(80, 5, 'expenses', 'upgrade', 1, 20000, 20000, '2024-02-25 22:32:26'),
(81, 5, 'expenses', 'upgrade', 1, 40000, 40000, '2024-02-25 22:32:26'),
(82, 5, 'expenses', 'diesel', 2500, 1.866413793103446, 6533, '2024-02-25 22:32:41'),
(83, 5, 'expenses', 'electricity', 2500, 0.47976, 1200, '2024-02-25 22:32:48'),
(84, 5, 'expenses', 'gasoline', 2500, 2.4888, 6222, '2024-02-25 22:32:53'),
(85, 5, 'expenses', 'gasoline', 96, 2.4888, 239, '2024-02-25 22:33:00'),
(86, 10, 'income', 'gasoline', 32, 4.83, 155, '2024-02-26 11:41:00'),
(87, 25, 'deposit', 'deposit', 0, 20000, 20000, '2024-02-26 12:21:49'),
(88, 17, 'income', 'gasoline', 62, 3.37, 206, '2024-02-26 14:10:39'),
(89, 23, 'income', 'petrolcan', 1, 0, 30, '2024-02-26 14:45:35'),
(90, 3, 'income', 'gasoline', 101, 4.97, 497, '2024-02-26 18:11:30'),
(91, 15, 'income', 'petrolcan', 1, 0, 30, '2024-02-26 18:45:08'),
(92, 9, 'income', 'gasoline', 50, 4.5, 221, '2024-02-26 18:47:50');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `myfuel_classes`
--

CREATE TABLE `myfuel_classes` (
  `uid` int(11) NOT NULL,
  `classname` varchar(90) NOT NULL DEFAULT '',
  `fueltype` varchar(90) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `myfuel_classes`
--

INSERT INTO `myfuel_classes` (`uid`, `classname`, `fueltype`) VALUES
(1, 'boat', 'diesel'),
(2, 'planes', 'diesel'),
(3, 'planes', 'paraffin'),
(4, 'car', 'gasoline'),
(5, 'car', 'diesel'),
(6, 'car', 'electricity');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `myfuel_gas_stations`
--

CREATE TABLE `myfuel_gas_stations` (
  `uid` int(11) NOT NULL,
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
  `mission_spawn_heading` decimal(19,1) NOT NULL DEFAULT 0.0,
  `price` decimal(19,0) NOT NULL DEFAULT 0,
  `warehouse_level` int(11) NOT NULL DEFAULT 0,
  `owner` varchar(46) DEFAULT NULL,
  `logo_name` varchar(45) NOT NULL DEFAULT 'xero',
  `is_buyable` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `myfuel_gas_stations`
--

INSERT INTO `myfuel_gas_stations` (`uid`, `posX`, `posY`, `posZ`, `vehicleClass`, `admin_posX`, `admin_posY`, `admin_posZ`, `mission_spawn_poxX`, `mission_spawn_poxY`, `mission_spawn_poxZ`, `mission_spawn_heading`, `price`, `warehouse_level`, `owner`, `logo_name`, `is_buyable`) VALUES
(1, -2555.12, 2334.27, 33.07, 'car', -2543.83, 2316.04, 33.21, -2525.2292, 2339.4019, 33.1464, 212.0, 50000, 0, NULL, 'ron', 1),
(2, -2096.59, -321.48, 13.16, 'car', -2073.5, -327.35, 13.31, -2068.8228, -307.457, 13.2338, 83.0, 50000, 0, NULL, 'xero', 1),
(3, -1799.41, 802.81, 138.65, 'car', -1828.33, 797.95, 138.19, -1829.1769, 807.726, 139.2781, 313.0, 1500000, 0, '', 'ltd', 1),
(4, -1604.22, 5256.73, 2.07, 'boat', -1606.07, 5255.84, 3.97, -1578.4677, 5158.8159, 19.8572, 194.0, 50000, 0, NULL, 'exxon', 1),
(5, -1436.97, -276.55, 46.2, 'car', -1436.37, -260.38, 46.26, -1437.4679, -253.7085, 46.3661, 134.0, 50000, 5, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'ron', 1),
(6, -913.6, -3047.77, 13.94, 'planes', -914.53, -3043.31, 13.94, -894.2976, -3057.1165, 13.9444, 150.0, 50000, 0, NULL, 'exxon', 1),
(7, -804.78, -1505.68, 0.5, 'boat', -753.95, -1511.07, 5.01, -745.2076, -1502.429, 5.0005, 295.0, 50000, 0, NULL, 'exxon', 1),
(8, -723.29, -935.55, 19.21, 'car', -702.56, -917.38, 19.21, -729.6887, -913.9202, 19.1256, 160.0, 50000, 5, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 'ltd', 1),
(9, -525.35, -1211.32, 18.18, 'car', -508.99, -1212.62, 18.55, -509.2644, -1200.0907, 19.7077, 309.0, 50000, 0, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 'xero', 1),
(10, -319.42, -1471.81, 30.54, 'car', -341.78, -1475.02, 30.75, -318.9482, -1495.8295, 30.6272, 271.0, 50000, 0, NULL, 'globe_oil', 1),
(11, -215.65, 6199.4, 31.49, 'car', -236.51, 6201.91, 31.93, -243.2813, 6193.0444, 31.575, 226.0, 50000, 0, NULL, 'xero', 1),
(12, -94.2, 6419.49, 31.48, 'car', -79.8, 6416.03, 31.63, -76.8395, 6430.1455, 31.5377, 45.0, 50000, 0, NULL, 'xero', 1),
(15, 175.55, -1562.21, 29.26, 'car', 159.29, -1561.61, 29.26, 181.4231, -1548.0464, 29.2603, 216.0, 1500000, 0, '', 'ron', 1),
(16, 179.82, 6602.84, 31.86, 'car', 205.23, 6615.18, 31.65, 196.6132, 6626.2354, 31.6718, 182.0, 50000, 0, NULL, 'ron', 1),
(14, 187.73, -897.04, 29.76, 'car', 196.1, -859.73, 29.72, 192.55, -882.45, 29.7, 182.7, 15000000, 5, '170c0781bf3db9b54847ee453224dfab755ad36c', 'ron', 1),
(17, 263.92, 2607.41, 44.98, 'car', 252.41, 2596.48, 44.84, 232.4394, 2597.9338, 45.4596, 19.0, 50000, 0, NULL, 'globe_oil', 1),
(18, 264.95, -1259.45, 26.4, 'car', 289.07, -1253.31, 29.44, 293.4498, -1246.2234, 29.3677, 92.0, 50000, 0, '', 'xero', 1),
(19, 620.8, 268.73, 103.08, 'car', 642.22, 260.59, 103.29, 631.0021, 251.9641, 103.1777, 84.0, 50000, 0, NULL, 'globe_oil', 1),
(20, 819.61, -1028.2, 26.4, 'car', 817.96, -1039.97, 26.75, 827.0495, -1040.9393, 26.9996, 17.0, 50000, 0, NULL, 'ron', 1),
(21, 1039.12, 2671.3, 39.55, 'car', 1033.27, 2662.66, 39.55, 1026.6689, 2661.1965, 39.6368, 1.0, 50000, 0, NULL, 'globe_oil', 1),
(22, 1180.95, -329.84, 69.31, 'car', 1168.61, -323.93, 69.3, 1164.658, -334.321, 68.841, 188.0, 50000, 0, '6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', 'ltd', 1),
(23, 1208.03, 2660.48, 37.89, 'car', 1202.73, 2654.38, 37.85, 1207.972, 2643.3528, 37.9142, 325.0, 50000, 0, NULL, 'globe_oil', 1),
(24, 1208.6, -1402.28, 35.22, 'car', 1211.49, -1389.61, 35.37, 1199.8217, -1387.2134, 35.3127, 181.0, 50000, 0, NULL, 'ron', 1),
(25, 1687.26, 4929.63, 42.07, 'car', 1693.44, 4920.89, 42.07, 1700.8508, 4946.3682, 42.5559, 57.0, 50000, 0, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'ltd', 1),
(26, 1702, 6416.99, 32.76, 'car', 1705.71, 6425.06, 32.76, 1686.797, 6429.8267, 32.4836, 182.0, 50000, 0, NULL, 'globe_oil', 1),
(27, 2005, 3774.2, 32.4, 'car', 2004.92, 3780.52, 32.18, 1982.6167, 3777.9482, 32.267, 208.0, 50000, 0, NULL, 'xero', 1),
(28, 2539.33, 2594.61, 37.94, 'car', 2544.05, 2591.54, 37.94, 2536.7539, 2579.0234, 38.0314, 21.0, 50000, 0, NULL, 'globe_oil', 1),
(29, 2581.17, 362.01, 108.46, 'car', 2559.89, 358.9, 108.62, 2585.1331, 412.3998, 108.5436, 174.0, 50000, 0, NULL, 'ron', 1),
(30, 2679.93, 3264.09, 55.24, 'car', 2674.57, 3267.01, 55.24, 2649.0627, 3272.5957, 55.327, 154.0, 50000, 0, NULL, 'xero', 1),
(31, 3852.02, 4459.73, 1.85, 'boat', 3858.36, 4460.12, 1.82, 3810.6631, 4461.1675, 4.2896, 84.0, 50000, 0, NULL, 'exxon', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `myfuel_income_expenses`
--

CREATE TABLE `myfuel_income_expenses` (
  `gas_station_id` int(11) NOT NULL,
  `total_income` double DEFAULT NULL,
  `total_expenses` double DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `myfuel_income_expenses`
--

INSERT INTO `myfuel_income_expenses` (`gas_station_id`, `total_income`, `total_expenses`, `last_update`) VALUES
(1, 0, 0, '2024-01-28 08:38:15'),
(2, 408, 0, '2024-02-09 23:12:37'),
(3, 497, 0, '2024-02-26 18:11:30'),
(4, 0, 0, '2024-01-28 08:38:15'),
(5, 150000, 111194, '2024-02-25 22:33:00'),
(6, 0, 0, '2024-01-28 08:38:15'),
(7, 0, 0, '2024-01-28 08:38:15'),
(8, 101176, 97000, '2024-02-22 17:22:38'),
(9, 251, 0, '2024-02-26 18:47:50'),
(10, 241, 0, '2024-02-26 11:41:00'),
(11, 0, 0, '2024-01-28 08:38:15'),
(12, 68, 0, '2024-02-25 21:11:07'),
(13, 0, 0, '2024-01-28 08:38:15'),
(14, 124695285, 20722300, '2024-02-25 19:28:24'),
(15, 30, 0, '2024-02-26 18:45:08'),
(16, 0, 0, '2024-01-28 08:38:15'),
(17, 206, 0, '2024-02-26 14:10:39'),
(18, 233, 0, '2024-02-25 22:27:49'),
(19, 418, 0, '2024-02-05 20:19:15'),
(20, 0, 0, '2024-01-28 08:38:15'),
(21, 0, 0, '2024-01-28 08:38:15'),
(22, 0, 0, '2024-02-26 18:56:01'),
(23, 30, 0, '2024-02-26 14:45:35'),
(24, 0, 0, '2024-01-28 08:38:15'),
(25, 20380, 0, '2024-02-26 12:21:49'),
(26, 64, 0, '2024-02-25 21:17:37'),
(27, 0, 0, '2024-01-28 08:38:15'),
(28, 0, 0, '2024-01-28 08:38:15'),
(29, 0, 0, '2024-01-28 08:38:15'),
(30, 0, 0, '2024-01-28 08:38:15'),
(31, 0, 0, '2024-01-28 08:38:15');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `myfuel_stocks`
--

CREATE TABLE `myfuel_stocks` (
  `gas_station_id` int(11) NOT NULL,
  `fuel_type` varchar(45) NOT NULL,
  `price_per_liter` double NOT NULL,
  `stock` int(11) NOT NULL,
  `updated` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `myfuel_stocks`
--

INSERT INTO `myfuel_stocks` (`gas_station_id`, `fuel_type`, `price_per_liter`, `stock`, `updated`) VALUES
(1, 'diesel', 3.9, 1500, 1),
(1, 'electricity', 0.33, 1500, 1),
(1, 'gasoline', 3.89, 1500, 1),
(2, 'diesel', 3.26, 1500, 1),
(2, 'electricity', 0.46, 1500, 1),
(2, 'gasoline', 4.99, 1421, 1),
(3, 'diesel', 2.36, 1500, 1),
(3, 'electricity', 0.36, 1500, 1),
(3, 'gasoline', 4.97, 1399, 1),
(4, 'diesel', 2.24, 1500, 1),
(5, 'diesel', 1, 4000, 1),
(5, 'electricity', 1, 4000, 1),
(5, 'gasoline', 1, 4000, 1),
(6, 'diesel', 3.43, 1500, 1),
(6, 'paraffin', 3.13, 1500, 1),
(7, 'diesel', 3.75, 1500, 1),
(8, 'diesel', 2.4, 1500, 1),
(8, 'electricity', 0.4, 1500, 1),
(8, 'gasoline', 3.38, 1163, 1),
(9, 'diesel', 3.99, 1500, 1),
(9, 'electricity', 0.98, 1500, 1),
(9, 'gasoline', 4.5, 1384, 1),
(10, 'diesel', 2.67, 1500, 1),
(10, 'electricity', 0.35, 1500, 1),
(10, 'gasoline', 4.45, 1448, 1),
(11, 'diesel', 2.2, 1500, 1),
(11, 'electricity', 0.73, 1500, 1),
(11, 'gasoline', 4.21, 1500, 1),
(12, 'diesel', 3.34, 1500, 1),
(12, 'electricity', 0.47, 1500, 1),
(12, 'gasoline', 3.09, 1480, 1),
(14, 'diesel', 3.52, 4000, 1),
(14, 'electricity', 1.2, 4000, 1),
(14, 'gasoline', 4.98, 3865, 1),
(15, 'diesel', 2.27, 1500, 1),
(15, 'electricity', 0.76, 1500, 1),
(15, 'gasoline', 4.74, 1495, 1),
(16, 'diesel', 2.97, 1500, 1),
(16, 'electricity', 0.31, 1500, 1),
(16, 'gasoline', 3.91, 1500, 1),
(17, 'diesel', 3.67, 1500, 1),
(17, 'electricity', 0.63, 1500, 1),
(17, 'gasoline', 3.47, 1438, 1),
(18, 'diesel', 3.97, 1500, 1),
(18, 'electricity', 0.76, 1500, 1),
(18, 'gasoline', 3.32, 1182, 1),
(19, 'diesel', 3, 1382, 1),
(19, 'electricity', 1.02, 1500, 1),
(19, 'gasoline', 3.9, 1500, 1),
(20, 'diesel', 3.23, 1500, 1),
(20, 'electricity', 1.23, 1500, 1),
(20, 'gasoline', 3.41, 1500, 1),
(21, 'diesel', 2.75, 1500, 1),
(21, 'electricity', 0.53, 1500, 1),
(21, 'gasoline', 3.52, 1500, 1),
(22, 'diesel', 3.64, 1500, 1),
(22, 'electricity', 0.35, 1500, 1),
(22, 'gasoline', 3.82, 1500, 1),
(23, 'diesel', 3.28, 1500, 1),
(23, 'electricity', 0.81, 1500, 1),
(23, 'gasoline', 4.74, 1495, 1),
(24, 'diesel', 2.45, 1500, 1),
(24, 'electricity', 0.68, 1500, 1),
(24, 'gasoline', 3.47, 1500, 1),
(25, 'diesel', 3.75, 1500, 1),
(25, 'electricity', 0.94, 1500, 1),
(25, 'gasoline', 4.6, 1500, 1),
(26, 'diesel', 3.65, 1500, 1),
(26, 'electricity', 0.85, 1500, 1),
(26, 'gasoline', 3.21, 1489, 1),
(27, 'diesel', 2.47, 1500, 1),
(27, 'electricity', 0.57, 1500, 1),
(27, 'gasoline', 4.77, 1500, 1),
(28, 'diesel', 2.42, 1500, 1),
(28, 'electricity', 1.1, 1500, 1),
(28, 'gasoline', 3.88, 1500, 1),
(29, 'diesel', 3.75, 1500, 1),
(29, 'electricity', 0.88, 1500, 1),
(29, 'gasoline', 4.3, 1500, 1),
(30, 'diesel', 2.28, 1500, 1),
(30, 'electricity', 0.48, 1500, 1),
(30, 'gasoline', 4.57, 1500, 1),
(31, 'diesel', 2.2, 1500, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `id` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(4) NOT NULL DEFAULT 0,
  `parking` varchar(60) DEFAULT NULL,
  `pound` varchar(60) DEFAULT NULL,
  `mileage` float DEFAULT 0,
  `alarm` int(1) NOT NULL DEFAULT 0,
  `vehiclename` varchar(255) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT 0,
  `garageID` int(11) DEFAULT 1,
  `storeTime` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `isSocietyVehicle` tinyint(4) DEFAULT NULL,
  `garageDeformation` longtext DEFAULT NULL,
  `milage` double NOT NULL DEFAULT 0,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`id`, `owner`, `plate`, `vehicle`, `type`, `job`, `stored`, `parking`, `pound`, `mileage`, `alarm`, `vehiclename`, `favorite`, `garageID`, `storeTime`, `nickname`, `isSocietyVehicle`, `garageDeformation`, `milage`, `glovebox`, `trunk`) VALUES
(7, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'AYUB7322', '{\"modLightbar\":-1,\"tyresCanBurst\":1,\"modTrimB\":-1,\"modSpoilers\":-1,\"extras\":[],\"modEngineBlock\":-1,\"bodyHealth\":1000.0,\"modStruts\":-1,\"modTrunk\":-1,\"modDashboard\":-1,\"modEngine\":-1,\"tankHealth\":1000.0,\"pearlescentColor\":89,\"modLivery\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"color2\":0,\"modOrnaments\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modTrimA\":-1,\"dirtLevel\":1.0,\"modSideSkirt\":-1,\"model\":1753414259,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modArchCover\":-1,\"modRoofLivery\":-1,\"modSmokeEnabled\":false,\"modRoof\":-1,\"wheels\":6,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"windowsBroken\":{\"3\":true,\"2\":true,\"5\":true,\"4\":true,\"7\":true,\"6\":true,\"1\":true,\"0\":true},\"modDial\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modCustomFrontWheels\":false,\"tyreBurst\":{\"4\":false,\"0\":false},\"plate\":\"AYUB7322\",\"modCustomBackWheels\":false,\"color1\":92,\"fuelLevel\":65.0,\"modTurbo\":false,\"wheelColor\":156,\"modTank\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modVanityPlate\":-1,\"xenonColor\":255,\"doorsBroken\":{\"1\":false,\"0\":false},\"modGrille\":-1,\"modAerials\":-1,\"engineHealth\":1000.0,\"modRearBumper\":-1,\"plateIndex\":0,\"modFender\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"interiorColor\":0,\"modSeats\":-1,\"dashboardColor\":0,\"modFrontWheels\":-1,\"windowTint\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modXenon\":false}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(16, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'BXCL8608', '{\"modSideSkirt\":-1,\"modPlateHolder\":-1,\"modSmokeEnabled\":1,\"modTransmission\":-1,\"color2\":0,\"wheelColor\":156,\"color1\":27,\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"windowTint\":-1,\"interiorColor\":111,\"modAirFilter\":-1,\"modFender\":-1,\"modCustomFrontWheels\":false,\"doorsBroken\":{\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false},\"windowsBroken\":{\"6\":false,\"7\":false,\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":true,\"5\":true},\"modDoorSpeaker\":-1,\"modRoofLivery\":-1,\"windows\":[1,1,1,false,false,1,1,false,false],\"modSuspension\":-1,\"extras\":[],\"modTank\":-1,\"dirtLevel\":5.2,\"modRearBumper\":-1,\"modTrunk\":-1,\"doors\":[false,false,false,false,false,false],\"modSeats\":-1,\"vehicleHeadLight\":255,\"modVanityPlate\":-1,\"modEngine\":-1,\"modFrontWheels\":-1,\"modExhaust\":-1,\"modEngineBlock\":-1,\"modGrille\":-1,\"modHydrolic\":-1,\"xenonColor\":255,\"tyreSmokeColor\":[255,255,255],\"tyreBurst\":{\"0\":false,\"5\":false,\"4\":false,\"1\":false},\"modXenon\":1,\"modDial\":-1,\"modDashboard\":-1,\"tyresCanBurst\":1,\"modCustomBackWheels\":false,\"dashboardColor\":111,\"modArmor\":-1,\"model\":1549126457,\"modWindows\":-1,\"modLivery\":-1,\"tyres\":[false,false,false,false,false,false,false],\"neonColor\":[255,0,255],\"wheels\":5,\"modStruts\":-1,\"modRightFender\":-1,\"modAerials\":-1,\"plateIndex\":0,\"modShifterLeavers\":-1,\"modHorns\":-1,\"plate\":\"BXCL8608\",\"fuelLevel\":0,\"modTrimB\":-1,\"engineHealth\":1000.0,\"modRoof\":-1,\"bodyHealth\":990.0,\"modSpeakers\":-1,\"modSpoilers\":-1,\"modTurbo\":1,\"modAPlate\":-1,\"modFrame\":-1,\"modTrimA\":-1,\"modBrakes\":-1,\"pearlescentColor\":38,\"neonEnabled\":[false,false,false,false],\"tankHealth\":997.1,\"modLightbar\":-1,\"modHood\":-1,\"modOrnaments\":-1,\"modArchCover\":-1,\"modBackWheels\":-1}', 'car', NULL, 0, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 16.876407754657542, NULL, NULL),
(6, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'DOJA1399', '{\"modAPlate\":-1,\"modAerials\":-1,\"modSuspension\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"xenonColor\":255,\"extras\":[],\"modCustomBackWheels\":false,\"modFrame\":-1,\"windowsBroken\":{\"4\":true,\"3\":true,\"2\":true,\"1\":true,\"0\":true,\"7\":true,\"6\":true,\"5\":true},\"modTank\":-1,\"bodyHealth\":1000.0,\"modArchCover\":-1,\"modOrnaments\":-1,\"modFrontBumper\":-1,\"doors\":[false,false,false,false,false,false],\"modTrunk\":-1,\"modTurbo\":false,\"modTrimB\":-1,\"modRightFender\":-1,\"modSpoilers\":-1,\"modExhaust\":-1,\"interiorColor\":0,\"modHood\":-1,\"modSpeakers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modCustomFrontWheels\":false,\"modDashboard\":-1,\"modRearBumper\":-1,\"plateIndex\":0,\"tyreSmokeColor\":[255,255,255],\"fuelLevel\":64.94,\"modRoofLivery\":-1,\"modLivery\":-1,\"modVanityPlate\":-1,\"modDial\":-1,\"vehicleHeadLight\":255,\"neonEnabled\":[false,false,false,false],\"dashboardColor\":0,\"windowTint\":-1,\"color1\":92,\"tyreBurst\":{\"0\":false,\"4\":false},\"modGrille\":-1,\"modEngine\":-1,\"pearlescentColor\":89,\"modTrimA\":-1,\"color2\":0,\"modShifterLeavers\":-1,\"plate\":\"DOJA1399\",\"modSmokeEnabled\":1,\"model\":1753414259,\"modPlateHolder\":-1,\"modFrontWheels\":-1,\"dirtLevel\":1.0,\"engineHealth\":1000.0,\"modSteeringWheel\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"modEngineBlock\":-1,\"modXenon\":false,\"modWindows\":-1,\"neonColor\":[255,0,255],\"modStruts\":-1,\"modHorns\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modFender\":-1,\"tyresCanBurst\":1,\"modLightbar\":-1,\"doorsBroken\":{\"0\":false,\"1\":false},\"tankHealth\":1000.0,\"windows\":[false,false,false,false,false,false,false,false,false],\"wheels\":6,\"wheelColor\":156,\"modTransmission\":-1,\"modSeats\":-1,\"modSideSkirt\":-1}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 1.107144014154561, NULL, NULL),
(9, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'EGCY0679', '{\"modGrille\":-1,\"modFrontWheels\":-1,\"modSeats\":-1,\"modFender\":-1,\"interiorColor\":3,\"windowsBroken\":{\"1\":false,\"2\":false,\"7\":false,\"0\":false,\"5\":true,\"6\":false,\"3\":false,\"4\":true},\"modWindows\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"modFrame\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":4.1,\"modSteeringWheel\":-1,\"modSideSkirt\":-1,\"dashboardColor\":156,\"doors\":[false,false,false,false,false,false],\"modEngine\":-1,\"modTrunk\":-1,\"modXenon\":false,\"modRoofLivery\":-1,\"modVanityPlate\":-1,\"plate\":\"EGCY0679\",\"extras\":[],\"modSuspension\":-1,\"color1\":50,\"tyres\":[false,false,false,false,false,false,false],\"modArmor\":-1,\"modStruts\":-1,\"modTransmission\":-1,\"modEngineBlock\":-1,\"vehicleHeadLight\":255,\"windowTint\":-1,\"modOrnaments\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"pearlescentColor\":6,\"wheels\":1,\"modTurbo\":false,\"plateIndex\":0,\"modLightbar\":-1,\"modSpeakers\":-1,\"modSpoilers\":-1,\"modAPlate\":-1,\"modLivery\":-1,\"modHood\":-1,\"modAerials\":-1,\"bodyHealth\":975.9,\"tankHealth\":997.5,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"color2\":50,\"xenonColor\":255,\"model\":1644055914,\"doorsBroken\":{\"1\":false,\"2\":false,\"0\":false,\"3\":false,\"4\":false},\"neonEnabled\":[false,false,false,false],\"windows\":[1,1,1,false,false,1,1,false,false],\"engineHealth\":1000.0,\"wheelColor\":0,\"modCustomBackWheels\":false,\"modDial\":-1,\"modPlateHolder\":-1,\"modExhaust\":-1,\"modRearBumper\":-1,\"fuelLevel\":78.74199999999999,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modBrakes\":-1,\"modAirFilter\":-1,\"modBackWheels\":-1,\"modRoof\":-1,\"modTrimB\":-1,\"tyreBurst\":{\"1\":false,\"5\":false,\"4\":false,\"0\":false},\"tyresCanBurst\":1,\"modTrimA\":-1,\"modSmokeEnabled\":1,\"modCustomFrontWheels\":false,\"modHydrolic\":-1,\"modRightFender\":-1}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 11.355992978223899, '[{\"count\":1,\"slot\":2,\"name\":\"espresso\"},{\"count\":1,\"slot\":3,\"name\":\"boxbig\"},{\"count\":1,\"slot\":4,\"name\":\"rotwein\"}]', NULL),
(15, 'e9c42e433167ee744dba4011725cb75e1d9274ed', 'FRAB4580', '{\"modXenon\":false,\"color1\":45,\"modCustomBackWheels\":false,\"modArmor\":-1,\"modSeats\":-1,\"modVanityPlate\":-1,\"modTransmission\":-1,\"wheelColor\":156,\"modLivery\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"modFender\":-1,\"modSpoilers\":-1,\"modHood\":-1,\"modAPlate\":-1,\"pearlescentColor\":160,\"model\":-440768424,\"modGrille\":-1,\"tyres\":[false,false,false,false,false,false,false],\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modAirFilter\":-1,\"modRoofLivery\":-1,\"engineHealth\":699.6,\"modTrimB\":-1,\"modRearBumper\":-1,\"windows\":[false,false,false,false,false,false,false,false,false],\"plate\":\"FRAB4580\",\"modEngineBlock\":-1,\"modFrontBumper\":-1,\"modRoof\":-1,\"modSideSkirt\":-1,\"dirtLevel\":9.9,\"doorsBroken\":[],\"modSteeringWheel\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"modSmokeEnabled\":1,\"windowTint\":-1,\"modHorns\":-1,\"modShifterLeavers\":-1,\"extras\":[],\"modCustomFrontWheels\":false,\"tankHealth\":909.0,\"plateIndex\":0,\"tyresCanBurst\":false,\"modAerials\":-1,\"fuelLevel\":95.97399999999985,\"modWindows\":-1,\"wheels\":4,\"modOrnaments\":-1,\"windowsBroken\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"modBrakes\":-1,\"modDial\":-1,\"modTank\":-1,\"vehicleHeadLight\":255,\"modEngine\":-1,\"modDoorSpeaker\":-1,\"modRightFender\":-1,\"neonColor\":[255,255,255],\"modBackWheels\":-1,\"modLightbar\":-1,\"modFrontWheels\":-1,\"tyreBurst\":{\"5\":false,\"0\":false,\"1\":false,\"4\":false},\"modTurbo\":false,\"color2\":118,\"modDashboard\":-1,\"bodyHealth\":784.5,\"doors\":[false,false,false,false,false,false],\"xenonColor\":255,\"interiorColor\":0,\"modArchCover\":-1,\"modSuspension\":-1,\"modStruts\":-1,\"dashboardColor\":0}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 37.9475499021232, NULL, NULL),
(1, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'HKSW7736', '{\"modLightbar\":-1,\"tyresCanBurst\":1,\"modTrimB\":-1,\"modSpoilers\":-1,\"extras\":[],\"modEngineBlock\":-1,\"bodyHealth\":1000.0,\"modStruts\":-1,\"modTrunk\":-1,\"modDashboard\":-1,\"modEngine\":-1,\"tankHealth\":1000.0,\"pearlescentColor\":62,\"modLivery\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"color2\":1,\"modOrnaments\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modTrimA\":-1,\"dirtLevel\":0.0,\"modSideSkirt\":-1,\"model\":1753414259,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modArchCover\":-1,\"modRoofLivery\":-1,\"modSmokeEnabled\":false,\"modRoof\":-1,\"wheels\":6,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"windowsBroken\":{\"3\":true,\"2\":true,\"5\":true,\"4\":true,\"7\":true,\"6\":true,\"1\":true,\"0\":true},\"modDial\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modCustomFrontWheels\":false,\"tyreBurst\":{\"4\":false,\"0\":false},\"plate\":\"HKSW7736\",\"modCustomBackWheels\":false,\"color1\":62,\"fuelLevel\":65.0,\"modTurbo\":false,\"wheelColor\":156,\"modTank\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modVanityPlate\":-1,\"xenonColor\":255,\"doorsBroken\":{\"1\":false,\"0\":false},\"modGrille\":-1,\"modAerials\":-1,\"engineHealth\":1000.0,\"modRearBumper\":-1,\"plateIndex\":0,\"modFender\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"interiorColor\":0,\"modSeats\":-1,\"dashboardColor\":0,\"modFrontWheels\":-1,\"windowTint\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modXenon\":false}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(10, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'IBY 270', '{\"modAPlate\":-1,\"modTank\":-1,\"modDial\":-1,\"modOrnaments\":-1,\"modTrunk\":-1,\"vehicleHeadLight\":255,\"modArchCover\":-1,\"modSpoilers\":-1,\"modFrontBumper\":-1,\"modCustomBackWheels\":false,\"modHorns\":-1,\"engineHealth\":1000.0,\"pearlescentColor\":1,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"windowTint\":-1,\"modFender\":-1,\"modLightbar\":-1,\"extras\":[],\"modSeats\":-1,\"windowsBroken\":{\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":true,\"6\":false,\"1\":false,\"0\":false},\"modHood\":-1,\"modAerials\":-1,\"tankHealth\":1000.0,\"modCustomFrontWheels\":false,\"dashboardColor\":0,\"neonColor\":[255,0,255],\"modEngine\":-1,\"plate\":\"IBY 270\",\"modLivery\":-1,\"color1\":0,\"modFrame\":-1,\"dirtLevel\":4.0,\"modTransmission\":-1,\"modTrimA\":-1,\"interiorColor\":0,\"modGrille\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modTurbo\":false,\"windows\":[1,1,1,false,false,1,false,false,false],\"model\":296357396,\"color2\":29,\"fuelLevel\":60.0,\"modSpeakers\":-1,\"modXenon\":false,\"modExhaust\":-1,\"xenonColor\":255,\"wheelColor\":156,\"wheels\":1,\"modVanityPlate\":-1,\"modRoofLivery\":-1,\"bodyHealth\":1000.0,\"plateIndex\":0,\"modDoorSpeaker\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"tyresCanBurst\":1,\"modRoof\":-1,\"doors\":[false,false,false,false,false,false],\"modRearBumper\":-1,\"modTrimB\":-1,\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"tyreBurst\":{\"5\":false,\"4\":false,\"1\":false,\"0\":false},\"modDashboard\":-1,\"modSuspension\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modSteeringWheel\":-1,\"modArmor\":-1,\"modShifterLeavers\":-1,\"doorsBroken\":{\"3\":false,\"2\":false,\"5\":false,\"4\":false,\"1\":false,\"0\":false},\"modHydrolic\":-1,\"neonEnabled\":[false,false,false,false],\"modSmokeEnabled\":1}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(13, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 'IRVN0072', '{\"modSteeringWheel\":-1,\"modLightbar\":-1,\"dirtLevel\":1.0,\"modEngineBlock\":-1,\"modArchCover\":-1,\"modDial\":-1,\"pearlescentColor\":6,\"modSpeakers\":-1,\"windowsBroken\":{\"5\":true,\"4\":true,\"7\":false,\"6\":false,\"1\":false,\"0\":false,\"3\":false,\"2\":false},\"tyreBurst\":{\"1\":false,\"4\":false,\"5\":false,\"0\":false},\"modAirFilter\":-1,\"modFrontWheels\":-1,\"plate\":\"IRVN0072\",\"modSpoilers\":-1,\"modEngine\":-1,\"color1\":68,\"modTransmission\":-1,\"modRoof\":-1,\"modSideSkirt\":-1,\"tyresCanBurst\":1,\"modTurbo\":false,\"tankHealth\":1000.0,\"modCustomBackWheels\":false,\"modOrnaments\":-1,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"doorsBroken\":{\"4\":false,\"1\":false,\"0\":false,\"3\":false,\"2\":false},\"modVanityPlate\":-1,\"modCustomFrontWheels\":false,\"modSeats\":-1,\"modFrontBumper\":-1,\"wheelColor\":0,\"wheels\":1,\"color2\":68,\"modWindows\":-1,\"modHorns\":-1,\"model\":1644055914,\"modSmokeEnabled\":false,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"interiorColor\":3,\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"modFender\":-1,\"modRightFender\":-1,\"dashboardColor\":156,\"modExhaust\":-1,\"extras\":[],\"plateIndex\":0,\"windowTint\":-1,\"modFrame\":-1,\"modArmor\":-1,\"modRoofLivery\":-1,\"modStruts\":-1,\"modGrille\":-1,\"xenonColor\":255,\"tyreSmokeColor\":[255,255,255],\"bodyHealth\":1000.0,\"modHydrolic\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"engineHealth\":1000.0,\"modTank\":-1,\"modTrimA\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modXenon\":false,\"fuelLevel\":65.0,\"modTrimB\":-1}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 0.018851613895647462, NULL, NULL),
(12, '722c42c644c33d8e39fbec94459d97c156a62462', 'KLOG7833', '{\"modSideSkirt\":-1,\"modHood\":-1,\"modArchCover\":-1,\"modAerials\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modLightbar\":-1,\"tankHealth\":1000.0,\"modStruts\":-1,\"tyreBurst\":{\"5\":false,\"1\":false,\"0\":false,\"4\":false},\"modTransmission\":-1,\"modCustomBackWheels\":false,\"wheelColor\":88,\"windowsBroken\":{\"1\":true,\"2\":true,\"7\":true,\"0\":true,\"5\":false,\"6\":false,\"3\":true,\"4\":false},\"tyreSmokeColor\":[255,255,255],\"modTrimB\":-1,\"modXenon\":false,\"modSuspension\":-1,\"modEngine\":-1,\"wheels\":1,\"modOrnaments\":-1,\"modArmor\":-1,\"tyresCanBurst\":1,\"windowTint\":-1,\"modFrame\":-1,\"plateIndex\":0,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"modDial\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"modWindows\":-1,\"fuelLevel\":65.0,\"modFender\":-1,\"doorsBroken\":{\"1\":false,\"2\":false,\"0\":false,\"3\":false,\"4\":false},\"modDoorSpeaker\":-1,\"modTurbo\":false,\"engineHealth\":1000.0,\"bodyHealth\":1000.0,\"modSmokeEnabled\":false,\"neonColor\":[255,0,255],\"interiorColor\":3,\"modGrille\":-1,\"model\":-1361687965,\"modSpoilers\":-1,\"modTank\":-1,\"dirtLevel\":3.0,\"modCustomFrontWheels\":false,\"modSpeakers\":-1,\"modFrontWheels\":-1,\"color2\":25,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"modVanityPlate\":-1,\"dashboardColor\":111,\"modBackWheels\":3,\"modHydrolic\":-1,\"extras\":{\"1\":1,\"2\":false,\"3\":false},\"modRoofLivery\":-1,\"modRightFender\":-1,\"modHorns\":-1,\"modRoof\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"pearlescentColor\":120,\"modTrunk\":-1,\"modExhaust\":-1,\"plate\":\"KLOG7833\",\"modEngineBlock\":-1,\"modLivery\":-1,\"xenonColor\":255,\"modPlateHolder\":-1,\"color1\":142}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 2.1972920430312524, NULL, NULL),
(11, '94aa00d10f636f0acd4f8b7446724e62aae88114', 'LKVH2965', '{\"modTrimB\":-1,\"modFrontBumper\":-1,\"modSpeakers\":-1,\"modSuspension\":-1,\"xenonColor\":255,\"modCustomBackWheels\":false,\"modCustomFrontWheels\":false,\"tankHealth\":1000.0,\"modAerials\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"engineHealth\":1000.0,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"fuelLevel\":65.0,\"doorsBroken\":{\"1\":false,\"0\":false},\"modRoof\":-1,\"tyreSmokeColor\":[255,255,255],\"windowsBroken\":{\"3\":true,\"2\":true,\"1\":true,\"0\":true,\"7\":true,\"6\":true,\"5\":true,\"4\":true},\"wheelColor\":156,\"plate\":\"LKVH2965\",\"modSteeringWheel\":-1,\"modFrame\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modFender\":-1,\"modEngine\":-1,\"modOrnaments\":-1,\"tyreBurst\":{\"0\":false,\"4\":false},\"modBackWheels\":-1,\"pearlescentColor\":111,\"color1\":4,\"wheels\":6,\"modAirFilter\":-1,\"bodyHealth\":1000.0,\"modStruts\":-1,\"modTank\":-1,\"dashboardColor\":0,\"modTransmission\":-1,\"modSmokeEnabled\":false,\"modEngineBlock\":-1,\"modGrille\":-1,\"modLightbar\":-1,\"customPrimaryColor\":[194,194,194],\"modArmor\":-1,\"modSeats\":-1,\"tyresCanBurst\":1,\"modSideSkirt\":-1,\"modArchCover\":-1,\"dirtLevel\":9.0,\"modTrunk\":-1,\"modWindows\":-1,\"windowTint\":-1,\"modPlateHolder\":-1,\"modSpoilers\":-1,\"interiorColor\":0,\"modExhaust\":-1,\"modBrakes\":-1,\"modVanityPlate\":-1,\"modTrimA\":-1,\"modXenon\":false,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"extras\":[],\"modDashboard\":-1,\"modHorns\":-1,\"neonColor\":[255,0,255],\"plateIndex\":0,\"modRightFender\":-1,\"modRoofLivery\":-1,\"modRearBumper\":-1,\"model\":1753414259,\"color2\":0,\"modTurbo\":false,\"neonEnabled\":[false,false,false,false]}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 18.322002399584626, NULL, NULL),
(14, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'MLNK7172', '{\"modSteeringWheel\":-1,\"modLightbar\":-1,\"dirtLevel\":6.0,\"modEngineBlock\":-1,\"modArchCover\":-1,\"modDial\":-1,\"pearlescentColor\":5,\"modSpeakers\":-1,\"modXenon\":false,\"tyreBurst\":{\"1\":false,\"4\":false,\"0\":false,\"5\":false},\"modAirFilter\":-1,\"modFrontWheels\":-1,\"modTank\":-1,\"modSpoilers\":-1,\"modEngine\":-1,\"modBrakes\":-1,\"modTransmission\":-1,\"modRoof\":-1,\"modSideSkirt\":-1,\"tyresCanBurst\":1,\"modTurbo\":false,\"tankHealth\":1000.0,\"modCustomBackWheels\":false,\"modOrnaments\":-1,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"doorsBroken\":{\"4\":false,\"1\":false,\"0\":false,\"3\":false,\"2\":false},\"modVanityPlate\":-1,\"modCustomFrontWheels\":false,\"modSeats\":-1,\"modFrontBumper\":-1,\"wheelColor\":156,\"wheels\":5,\"color2\":112,\"modWindows\":-1,\"modHorns\":-1,\"model\":1549126457,\"modSmokeEnabled\":false,\"modRearBumper\":-1,\"dashboardColor\":111,\"interiorColor\":111,\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"extras\":[],\"windowsBroken\":{\"5\":true,\"4\":true,\"7\":false,\"6\":false,\"1\":false,\"0\":false,\"3\":false,\"2\":false},\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"modFender\":-1,\"modTrimA\":-1,\"modRoofLivery\":-1,\"windowTint\":-1,\"modAPlate\":-1,\"plateIndex\":0,\"modGrille\":-1,\"modHydrolic\":-1,\"modArmor\":-1,\"modTrimB\":-1,\"modStruts\":-1,\"modRightFender\":-1,\"xenonColor\":255,\"tyreSmokeColor\":[255,255,255],\"bodyHealth\":1000.0,\"modPlateHolder\":-1,\"modFrame\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"engineHealth\":1000.0,\"modAerials\":-1,\"color1\":27,\"modHood\":-1,\"plate\":\"MLNK7172\",\"modExhaust\":-1,\"fuelLevel\":65.0,\"modShifterLeavers\":-1}', 'car', NULL, 0, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 6.440699234098144, NULL, NULL),
(2, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'MMYY5559', '{\"modLightbar\":-1,\"tyresCanBurst\":1,\"modTrimB\":-1,\"modSpoilers\":-1,\"extras\":[],\"modEngineBlock\":-1,\"bodyHealth\":1000.0,\"modStruts\":-1,\"modTrunk\":-1,\"modDashboard\":-1,\"modEngine\":-1,\"tankHealth\":1000.0,\"pearlescentColor\":62,\"modLivery\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"color2\":1,\"modOrnaments\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modTrimA\":-1,\"dirtLevel\":0.0,\"modSideSkirt\":-1,\"model\":1753414259,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modArchCover\":-1,\"modRoofLivery\":-1,\"modSmokeEnabled\":false,\"modRoof\":-1,\"wheels\":6,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"windowsBroken\":{\"3\":true,\"2\":true,\"5\":true,\"4\":true,\"7\":true,\"6\":true,\"1\":true,\"0\":true},\"modDial\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modCustomFrontWheels\":false,\"tyreBurst\":{\"4\":false,\"0\":false},\"plate\":\"MMYY5559\",\"modCustomBackWheels\":false,\"color1\":62,\"fuelLevel\":65.0,\"modTurbo\":false,\"wheelColor\":156,\"modTank\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modVanityPlate\":-1,\"xenonColor\":255,\"doorsBroken\":{\"1\":false,\"0\":false},\"modGrille\":-1,\"modAerials\":-1,\"engineHealth\":1000.0,\"modRearBumper\":-1,\"plateIndex\":0,\"modFender\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"interiorColor\":0,\"modSeats\":-1,\"dashboardColor\":0,\"modFrontWheels\":-1,\"windowTint\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modXenon\":false}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(4, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'NHZE5918', '{\"modLightbar\":-1,\"tyresCanBurst\":1,\"modTrimB\":-1,\"modSpoilers\":-1,\"extras\":[],\"modEngineBlock\":-1,\"bodyHealth\":1000.0,\"modStruts\":-1,\"modTrunk\":-1,\"modDashboard\":-1,\"modEngine\":-1,\"tankHealth\":1000.0,\"pearlescentColor\":89,\"modLivery\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"color2\":0,\"modOrnaments\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modTrimA\":-1,\"dirtLevel\":1.0,\"modSideSkirt\":-1,\"model\":1753414259,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modArchCover\":-1,\"modRoofLivery\":-1,\"modSmokeEnabled\":false,\"modRoof\":-1,\"wheels\":6,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"windowsBroken\":{\"3\":true,\"2\":true,\"5\":true,\"4\":true,\"7\":true,\"6\":true,\"1\":true,\"0\":true},\"modDial\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modCustomFrontWheels\":false,\"tyreBurst\":{\"4\":false,\"0\":false},\"plate\":\"NHZE5918\",\"modCustomBackWheels\":false,\"color1\":92,\"fuelLevel\":65.0,\"modTurbo\":false,\"wheelColor\":156,\"modTank\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modVanityPlate\":-1,\"xenonColor\":255,\"doorsBroken\":{\"1\":false,\"0\":false},\"modGrille\":-1,\"modAerials\":-1,\"engineHealth\":1000.0,\"modRearBumper\":-1,\"plateIndex\":0,\"modFender\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"interiorColor\":0,\"modSeats\":-1,\"dashboardColor\":0,\"modFrontWheels\":-1,\"windowTint\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modXenon\":false}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'SWEI6005', '{\"modLightbar\":-1,\"tyresCanBurst\":1,\"modTrimB\":-1,\"modSpoilers\":-1,\"extras\":[],\"modEngineBlock\":-1,\"bodyHealth\":1000.0,\"modStruts\":-1,\"modTrunk\":-1,\"modDashboard\":-1,\"modEngine\":-1,\"tankHealth\":1000.0,\"pearlescentColor\":62,\"modLivery\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"color2\":1,\"modOrnaments\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modTrimA\":-1,\"dirtLevel\":0.0,\"modSideSkirt\":-1,\"model\":1753414259,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modArchCover\":-1,\"modRoofLivery\":-1,\"modSmokeEnabled\":false,\"modRoof\":-1,\"wheels\":6,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"windowsBroken\":{\"3\":true,\"2\":true,\"5\":true,\"4\":true,\"7\":true,\"6\":true,\"1\":true,\"0\":true},\"modDial\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modCustomFrontWheels\":false,\"tyreBurst\":{\"4\":false,\"0\":false},\"plate\":\"SWEI6005\",\"modCustomBackWheels\":false,\"color1\":62,\"fuelLevel\":65.0,\"modTurbo\":false,\"wheelColor\":156,\"modTank\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modVanityPlate\":-1,\"xenonColor\":255,\"doorsBroken\":{\"1\":false,\"0\":false},\"modGrille\":-1,\"modAerials\":-1,\"engineHealth\":1000.0,\"modRearBumper\":-1,\"plateIndex\":0,\"modFender\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"interiorColor\":0,\"modSeats\":-1,\"dashboardColor\":0,\"modFrontWheels\":-1,\"windowTint\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modXenon\":false}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(8, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'VQUK3031', '{\"modLightbar\":-1,\"tyresCanBurst\":1,\"modTrimB\":-1,\"modSpoilers\":-1,\"extras\":[],\"modEngineBlock\":-1,\"bodyHealth\":1000.0,\"modStruts\":-1,\"modTrunk\":-1,\"modDashboard\":-1,\"modEngine\":-1,\"tankHealth\":1000.0,\"pearlescentColor\":89,\"modLivery\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"color2\":0,\"modOrnaments\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modTrimA\":-1,\"dirtLevel\":1.0,\"modSideSkirt\":-1,\"model\":1753414259,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modArchCover\":-1,\"modRoofLivery\":-1,\"modSmokeEnabled\":false,\"modRoof\":-1,\"wheels\":6,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"windowsBroken\":{\"3\":true,\"2\":true,\"5\":true,\"4\":true,\"7\":true,\"6\":true,\"1\":true,\"0\":true},\"modDial\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modCustomFrontWheels\":false,\"tyreBurst\":{\"4\":false,\"0\":false},\"plate\":\"VQUK3031\",\"modCustomBackWheels\":false,\"color1\":92,\"fuelLevel\":65.0,\"modTurbo\":false,\"wheelColor\":156,\"modTank\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modVanityPlate\":-1,\"xenonColor\":255,\"doorsBroken\":{\"1\":false,\"0\":false},\"modGrille\":-1,\"modAerials\":-1,\"engineHealth\":1000.0,\"modRearBumper\":-1,\"plateIndex\":0,\"modFender\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"interiorColor\":0,\"modSeats\":-1,\"dashboardColor\":0,\"modFrontWheels\":-1,\"windowTint\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modXenon\":false}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(5, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'ZNGU0719', '{\"modLightbar\":-1,\"tyresCanBurst\":1,\"modTrimB\":-1,\"modSpoilers\":-1,\"extras\":[],\"modEngineBlock\":-1,\"bodyHealth\":1000.0,\"modStruts\":-1,\"modTrunk\":-1,\"modDashboard\":-1,\"modEngine\":-1,\"tankHealth\":1000.0,\"pearlescentColor\":89,\"modLivery\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"color2\":0,\"modOrnaments\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modTrimA\":-1,\"dirtLevel\":1.0,\"modSideSkirt\":-1,\"model\":1753414259,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modArchCover\":-1,\"modRoofLivery\":-1,\"modSmokeEnabled\":false,\"modRoof\":-1,\"wheels\":6,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"windowsBroken\":{\"3\":true,\"2\":true,\"5\":true,\"4\":true,\"7\":true,\"6\":true,\"1\":true,\"0\":true},\"modDial\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modCustomFrontWheels\":false,\"tyreBurst\":{\"4\":false,\"0\":false},\"plate\":\"ZNGU0719\",\"modCustomBackWheels\":false,\"color1\":92,\"fuelLevel\":65.0,\"modTurbo\":false,\"wheelColor\":156,\"modTank\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modVanityPlate\":-1,\"xenonColor\":255,\"doorsBroken\":{\"1\":false,\"0\":false},\"modGrille\":-1,\"modAerials\":-1,\"engineHealth\":1000.0,\"modRearBumper\":-1,\"plateIndex\":0,\"modFender\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"interiorColor\":0,\"modSeats\":-1,\"dashboardColor\":0,\"modFrontWheels\":-1,\"windowTint\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modXenon\":false}', 'car', NULL, 1, NULL, NULL, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_accounts`
--

CREATE TABLE `roadshop_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `birth` varchar(50) DEFAULT NULL,
  `password` varchar(256) NOT NULL,
  `profile` varchar(265) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `roadshop_accounts`
--

INSERT INTO `roadshop_accounts` (`id`, `identifier`, `firstname`, `lastname`, `mail`, `birth`, `password`, `profile`, `created`) VALUES
(1, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'James', 'Blond', 'JamesBlond@cloud.org', '01011977', 'Smirgel81!', NULL, '2024-02-05 19:10:05'),
(2, '6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', 'Grey', 'Grey', 'Mr.Grey@cloud.org', '04/11/1992', 'Mr.Grey', NULL, '2024-02-26 18:18:32');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_banktransfer`
--

CREATE TABLE `roadshop_banktransfer` (
  `id` int(11) NOT NULL,
  `sender` varchar(30) NOT NULL DEFAULT '0',
  `receiver` varchar(30) NOT NULL DEFAULT '0',
  `reason` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `roadshop_banktransfer`
--

INSERT INTO `roadshop_banktransfer` (`id`, `sender`, `receiver`, `reason`, `amount`, `date`) VALUES
(1, '1279512', '0', 'Car delivered', 500, '2024-02-21 21:40:40'),
(2, '1279512', '3107780', 'Money sent to James Blond.', 5000, '2024-02-21 21:50:54'),
(3, '1279512', '0', 'Car delivered', 500, '2024-02-22 10:52:26'),
(4, '7205540', '9447261', 'Money sent to Heino Willich.', 50000, '2024-02-22 16:54:08'),
(5, '9447261', '0', 'Car delivered', 500, '2024-02-23 09:06:44');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_calls`
--

CREATE TABLE `roadshop_calls` (
  `id` int(11) NOT NULL,
  `identifier` varchar(80) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `isincoming` int(2) NOT NULL DEFAULT 0,
  `anonym` int(2) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `roadshop_calls`
--

INSERT INTO `roadshop_calls` (`id`, `identifier`, `number`, `isincoming`, `anonym`, `date`) VALUES
(1, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', '3627108', 0, 0, '2024-02-01 20:55:58'),
(2, '94aa00d10f636f0acd4f8b7446724e62aae88114', '9669553', 1, 0, '2024-02-01 20:55:58'),
(3, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', '3627108', 0, 0, '2024-02-01 20:57:11'),
(4, '94aa00d10f636f0acd4f8b7446724e62aae88114', '9669553', 0, 0, '2024-02-01 20:57:11'),
(5, '5a3b16d51166b564d087a0c84aa23ac0c32e24b9', '911', 0, 0, '2024-02-18 17:10:55'),
(6, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', '3107780', 0, 0, '2024-02-21 21:22:30'),
(7, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', '1279512', 1, 0, '2024-02-21 21:22:30'),
(8, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', '3107780', 0, 0, '2024-02-21 21:23:07'),
(9, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', '1279512', 1, 0, '2024-02-21 21:23:07'),
(10, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', '1222', 0, 0, '2024-02-22 11:18:33'),
(11, '531c0783da697172843d844c83e9cfac247a6be6', '911', 0, 0, '2024-02-24 23:28:35'),
(12, '531c0783da697172843d844c83e9cfac247a6be6', '911', 0, 0, '2024-02-25 11:57:59'),
(13, '6a2df2596c750aba87978a90314ede727436be2a', '112', 0, 0, '2024-02-26 14:41:25');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_camera`
--

CREATE TABLE `roadshop_camera` (
  `id` int(11) NOT NULL,
  `identifier` varchar(80) NOT NULL,
  `picture` longtext NOT NULL,
  `isFavourite` int(2) NOT NULL DEFAULT 0,
  `isDeleted` int(2) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `roadshop_camera`
--

INSERT INTO `roadshop_camera` (`id`, `identifier`, `picture`, `isFavourite`, `isDeleted`, `time`) VALUES
(1, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 'https://media.discordapp.net/attachments/1153058133988618410/1204905709108469760/screenshot.png?ex=65d66ee3&is=65c3f9e3&hm=b9f3a565489235ed2bb8c0ce51efbdf932d31c3089a0d1e2480b81344e088aff&', 0, 0, '2024-02-07 21:45:07'),
(2, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 'https://media.discordapp.net/attachments/1153058133988618410/1205549357965779014/screenshot.png?ex=65d8c654&is=65c65154&hm=049bb5ff0a40854c06b9262cf7e4a458379aafee1ea927c36b35e5f5c80fafda&', 0, 0, '2024-02-09 16:22:45'),
(3, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 'https://media.discordapp.net/attachments/1153058133988618410/1205549424848281680/screenshot.png?ex=65d8c664&is=65c65164&hm=dae966025d84eb5a6dac2f16bb86d454eb65c20d4e72598776cba8805096ef17&', 0, 0, '2024-02-09 16:23:01'),
(4, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 'https://media.discordapp.net/attachments/1153058133988618410/1205549508436435015/screenshot.png?ex=65d8c678&is=65c65178&hm=f89cb316319ce3ac784bd5c3ada5a6f25b86590a20b0759c1c6830539a9d5743&', 0, 0, '2024-02-09 16:23:21'),
(5, '94aa00d10f636f0acd4f8b7446724e62aae88114', 'https://media.discordapp.net/attachments/1153058133988618410/1205550397310378024/screenshot.png?ex=65d8c74c&is=65c6524c&hm=4e36c85e4fc9296e3e15facc8ec72bd5ef758b6323408eabc2d221e3a01fc0d7&', 0, 0, '2024-02-09 16:26:53'),
(6, '94aa00d10f636f0acd4f8b7446724e62aae88114', 'https://media.discordapp.net/attachments/1153058133988618410/1205550534430429204/screenshot.png?ex=65d8c76d&is=65c6526d&hm=79bb0ad92a9e2360757ee8b137ecb597a69ac9c17c7448dbd6e2caae68aeaf8d&', 0, 0, '2024-02-09 16:27:25'),
(7, '94aa00d10f636f0acd4f8b7446724e62aae88114', 'https://media.discordapp.net/attachments/1153058133988618410/1205551939740377088/screenshot.png?ex=65d8c8bc&is=65c653bc&hm=0db2060d7efad2b31b6acc03ca0e928af07b0fec9b585dc5b04af69c0624d049&', 0, 0, '2024-02-09 16:33:00'),
(8, '94aa00d10f636f0acd4f8b7446724e62aae88114', 'https://media.discordapp.net/attachments/1153058133988618410/1205552047240515644/screenshot.png?ex=65d8c8d6&is=65c653d6&hm=b7fc81b6637c94c391b136a78dd77d7221abde48f0c54c7944b40fa1cd18f1a2&', 0, 0, '2024-02-09 16:33:26');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_contacts`
--

CREATE TABLE `roadshop_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(80) NOT NULL DEFAULT '0',
  `firstname` varchar(12) NOT NULL DEFAULT '0',
  `lastname` varchar(12) DEFAULT '0',
  `number` varchar(30) NOT NULL DEFAULT '0',
  `picture` varchar(512) NOT NULL DEFAULT '/public/img/user.png',
  `company` varchar(20) DEFAULT NULL,
  `note` varchar(256) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `favourite` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `roadshop_contacts`
--

INSERT INTO `roadshop_contacts` (`id`, `identifier`, `firstname`, `lastname`, `number`, `picture`, `company`, `note`, `mail`, `favourite`) VALUES
(1, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 'Jupp ', 'Hase', '3627108', '/public/img/user.png', '', '', '', 0),
(2, '94aa00d10f636f0acd4f8b7446724e62aae88114', 'cevin', 'klein', '9669553', '/public/img/user.png', '', '', '', 0),
(3, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Heino', 'Fischer', '1279512', '/public/img/user.png', 'Patrick', '', '', 0),
(4, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 'James', 'Blond', '3107780', '/public/img/user.png', 'Blond#s Tuning', '', '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_darkchat_groups`
--

CREATE TABLE `roadshop_darkchat_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL DEFAULT '0',
  `members` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_darkchat_group_messages`
--

CREATE TABLE `roadshop_darkchat_group_messages` (
  `id` int(11) NOT NULL,
  `groupname` varchar(25) NOT NULL DEFAULT '0',
  `sender` varchar(80) NOT NULL,
  `message` longtext NOT NULL,
  `members` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_data`
--

CREATE TABLE `roadshop_data` (
  `id` int(11) NOT NULL,
  `identifier` varchar(80) NOT NULL DEFAULT '0',
  `tabletsetup` int(2) NOT NULL DEFAULT 0,
  `phonesetup` int(2) NOT NULL DEFAULT 0,
  `crypto` varchar(512) NOT NULL DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `roadshop_data`
--

INSERT INTO `roadshop_data` (`id`, `identifier`, `tabletsetup`, `phonesetup`, `crypto`) VALUES
(1, '94aa00d10f636f0acd4f8b7446724e62aae88114', 0, 1, '{}'),
(2, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 0, 1, '{}'),
(3, '3468c9e187b6cb6a29271d05c7a171861c7724c0', 0, 0, '{}'),
(4, '79fd2faaae7818be0b564643eb99db5850841176', 0, 0, '{}'),
(5, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 0, 1, '{}'),
(6, 'f3f5ec52125455b47ddd678eb0918a2a873d5a1b', 0, 0, '{}'),
(7, '56e2c3a24fd3a6abb5897ddb9bed4a4edd9fd6df', 0, 1, '{}'),
(8, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 0, 1, '{\"Bitcoin\":1}'),
(9, '722c42c644c33d8e39fbec94459d97c156a62462', 0, 0, '{}'),
(10, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 0, 0, '{}'),
(11, '170c0781bf3db9b54847ee453224dfab755ad36c', 0, 1, '{}'),
(12, '5a3b16d51166b564d087a0c84aa23ac0c32e24b9', 0, 1, '{}'),
(13, '513d3360a526431df4c037ef55ec260484fa783a', 0, 0, '{}'),
(14, '531c0783da697172843d844c83e9cfac247a6be6', 0, 1, '{}'),
(15, '6a2df2596c750aba87978a90314ede727436be2a', 0, 1, '{}'),
(16, 'ab7d763277d30bc748b5bd353a32eec6f9039fad', 0, 0, '{}'),
(17, 'e9c42e433167ee744dba4011725cb75e1d9274ed', 0, 0, '{}'),
(18, '6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', 0, 1, '{}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_group_messages`
--

CREATE TABLE `roadshop_group_messages` (
  `id` int(11) NOT NULL,
  `owner` varchar(80) NOT NULL DEFAULT '0',
  `identifier` varchar(80) DEFAULT NULL,
  `name` varchar(25) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '0',
  `members` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_instagram_accounts`
--

CREATE TABLE `roadshop_instagram_accounts` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` longtext NOT NULL,
  `avatar_url` longtext DEFAULT NULL,
  `follower` longtext DEFAULT NULL,
  `verify` int(2) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_instagram_comment`
--

CREATE TABLE `roadshop_instagram_comment` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postid` int(11) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_instagram_likes`
--

CREATE TABLE `roadshop_instagram_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `post` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_instagram_posts`
--

CREATE TABLE `roadshop_instagram_posts` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `identifier` varchar(80) DEFAULT NULL,
  `message` longtext NOT NULL,
  `picture` longtext NOT NULL,
  `filter` varchar(80) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_instagram_storys`
--

CREATE TABLE `roadshop_instagram_storys` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL DEFAULT 0,
  `image` varchar(400) NOT NULL,
  `viewed` int(2) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_jobs`
--

CREATE TABLE `roadshop_jobs` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `job` varchar(30) NOT NULL,
  `message` varchar(120) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `gps` varchar(500) DEFAULT NULL,
  `status` int(2) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_livestream_accounts`
--

CREATE TABLE `roadshop_livestream_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(80) NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '0',
  `password` varchar(64) NOT NULL DEFAULT '0',
  `avatar_url` varchar(512) NOT NULL DEFAULT '/public/img/user.png',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_mails`
--

CREATE TABLE `roadshop_mails` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL DEFAULT '0',
  `sendermail` varchar(80) NOT NULL DEFAULT '0',
  `receivermail` varchar(80) NOT NULL DEFAULT '0',
  `receiver` varchar(80) DEFAULT NULL,
  `title` varchar(80) NOT NULL DEFAULT '0',
  `message` longtext NOT NULL,
  `image` varchar(120) DEFAULT NULL,
  `button` text DEFAULT NULL,
  `isSystem` int(2) DEFAULT 0,
  `read` int(2) DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_messages`
--

CREATE TABLE `roadshop_messages` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `isOwner` int(11) NOT NULL DEFAULT 0,
  `isRead` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `roadshop_messages`
--

INSERT INTO `roadshop_messages` (`id`, `sender`, `receiver`, `message`, `date`, `isOwner`, `isRead`) VALUES
(1, '9669553', '3627108', 'HGallo', '2024-02-07 21:46:02', 0, 0),
(2, '3627108', '9669553', 'HGallo', '2024-02-07 21:46:02', 1, 1),
(3, '1279512', '3107780', 'Hallo', '2024-02-21 21:24:17', 0, 1),
(4, '3107780', '1279512', 'Hallo', '2024-02-21 21:24:17', 1, 1),
(5, '1279512', '3107780', 'können sie mich abholen sende mein Ort', '2024-02-21 21:24:27', 0, 1),
(6, '3107780', '1279512', 'können sie mich abholen sende mein Ort', '2024-02-21 21:24:27', 1, 1),
(7, '1279512', '3107780', 'GPS: -811.85717773438, -1064.4268798828', '2024-02-21 21:24:33', 0, 1),
(8, '3107780', '1279512', 'GPS: -811.85717773438, -1064.4268798828', '2024-02-21 21:24:33', 1, 1),
(9, '3107780', '1279512', 'yes', '2024-02-21 21:24:44', 0, 1),
(10, '1279512', '3107780', 'yes', '2024-02-21 21:24:44', 1, 1),
(11, '1279512', '3107780', 'Danke bis gleich Bruder', '2024-02-21 21:24:58', 0, 1),
(12, '3107780', '1279512', 'Danke bis gleich Bruder', '2024-02-21 21:24:58', 1, 1),
(13, '1279512', '3107780', 'wo bleiben sie dennnn es ist kalt', '2024-02-21 21:26:18', 0, 1),
(14, '3107780', '1279512', 'wo bleiben sie dennnn es ist kalt', '2024-02-21 21:26:18', 1, 1),
(15, '3107780', '1279512', 'bin da', '2024-02-21 21:26:40', 0, 1),
(16, '1279512', '3107780', 'bin da', '2024-02-21 21:26:40', 1, 1),
(17, '3107780', '1279512', 'GPS: -809.84448242188, -1062.0583496094', '2024-02-21 21:26:42', 0, 1),
(18, '1279512', '3107780', 'GPS: -809.84448242188, -1062.0583496094', '2024-02-21 21:26:42', 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_messages_groups_message`
--

CREATE TABLE `roadshop_messages_groups_message` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `sender` varchar(80) NOT NULL,
  `message` longtext NOT NULL,
  `members` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_music_playlists`
--

CREATE TABLE `roadshop_music_playlists` (
  `id` int(11) NOT NULL,
  `identifier` varchar(80) NOT NULL,
  `title` varchar(25) NOT NULL,
  `image` varchar(265) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_music_playlists_songs`
--

CREATE TABLE `roadshop_music_playlists_songs` (
  `id` int(11) NOT NULL,
  `playlistId` int(11) DEFAULT NULL,
  `songid` varchar(50) NOT NULL DEFAULT '0',
  `song` varchar(200) NOT NULL DEFAULT '0',
  `artist` varchar(200) NOT NULL DEFAULT '0',
  `image` varchar(265) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_notes`
--

CREATE TABLE `roadshop_notes` (
  `id` int(11) NOT NULL,
  `identifier` varchar(80) NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_notifications`
--

CREATE TABLE `roadshop_notifications` (
  `id` int(11) NOT NULL,
  `identifier` varchar(80) NOT NULL DEFAULT '0',
  `apptitle` varchar(80) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '0',
  `message` varchar(120) NOT NULL DEFAULT '0',
  `img` varchar(512) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_service_messages`
--

CREATE TABLE `roadshop_service_messages` (
  `id` int(11) NOT NULL,
  `sender` varchar(80) NOT NULL,
  `receiver` varchar(80) NOT NULL,
  `message` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `isOwner` int(11) NOT NULL DEFAULT 0,
  `isRead` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_tellonym_accounts`
--

CREATE TABLE `roadshop_tellonym_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(80) NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '0',
  `mail` varchar(80) NOT NULL,
  `password` varchar(64) NOT NULL DEFAULT '0',
  `avatar_url` varchar(512) NOT NULL DEFAULT '/public/img/user.png',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_tellonym_tells`
--

CREATE TABLE `roadshop_tellonym_tells` (
  `id` int(11) NOT NULL,
  `senderId` int(11) DEFAULT NULL,
  `receiverId` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_tellonym_tells_answered`
--

CREATE TABLE `roadshop_tellonym_tells_answered` (
  `id` int(11) NOT NULL,
  `senderId` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_twitter_accounts`
--

CREATE TABLE `roadshop_twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `password` varchar(64) NOT NULL DEFAULT '0',
  `avatar_url` longtext DEFAULT NULL,
  `verify` int(2) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_twitter_likes`
--

CREATE TABLE `roadshop_twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_twitter_tweets`
--

CREATE TABLE `roadshop_twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) DEFAULT NULL,
  `message` varchar(512) NOT NULL,
  `image` longtext DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_voice_memos`
--

CREATE TABLE `roadshop_voice_memos` (
  `id` int(11) NOT NULL,
  `identifier` varchar(80) NOT NULL DEFAULT '0',
  `name` varchar(30) DEFAULT NULL,
  `text` varchar(255) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roadshop_yellowpages`
--

CREATE TABLE `roadshop_yellowpages` (
  `id` int(11) NOT NULL,
  `identifier` varchar(80) NOT NULL DEFAULT '0',
  `number` varchar(50) NOT NULL,
  `title` varchar(20) NOT NULL,
  `text` varchar(120) NOT NULL,
  `image` varchar(800) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `robberies_creator_cargo_robberies`
--

CREATE TABLE `robberies_creator_cargo_robberies` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `blip_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `robberies_creator_heists`
--

CREATE TABLE `robberies_creator_heists` (
  `id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `minimum_police` int(11) NOT NULL DEFAULT 0,
  `timeout_minutes` int(11) NOT NULL DEFAULT 120,
  `minutes_before_reset` int(11) NOT NULL DEFAULT 60,
  `time_limit_minutes` int(11) NOT NULL DEFAULT 0,
  `stages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `robberies_creator_plannings`
--

CREATE TABLE `robberies_creator_plannings` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `cargo_robbery_id` int(11) DEFAULT NULL,
  `minimum_police` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `saved_documents`
--

CREATE TABLE `saved_documents` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL DEFAULT '0',
  `type` varchar(60) NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  `timestamp` varchar(60) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `saved_documents`
--

INSERT INTO `saved_documents` (`id`, `identifier`, `type`, `data`, `timestamp`) VALUES
(14, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 'weapon', '{\"name\":\"Fischer\",\"dob\":\"28.06.1993\",\"sex\":\"M\",\"address\":\"-\",\"firstname\":\"Heino\",\"doctype\":\"weapon\"}', '02/21/24 | 17:10'),
(15, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 'weapon', '{\"name\":\"Fischer\",\"dob\":\"28.06.1993\",\"sex\":\"M\",\"address\":\"-\",\"firstname\":\"Heino\",\"doctype\":\"weapon\"}', '02/21/24 | 17:10'),
(16, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 'idcard', '{\"doi\":\"2024-02-22\",\"address\":\"-\",\"doctype\":\"idcard\",\"name\":\"Klein\",\"dob\":\"17.01.1994\",\"firstname\":\"Celvin\",\"sex\":\"M\",\"id\":\"170c07\",\"sign\":\"Celvin Klein\"}', '02/22/24 | 17:40'),
(17, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 'idcard', '{\"doi\":\"2024-02-22\",\"address\":\"-\",\"doctype\":\"idcard\",\"name\":\"Klein\",\"dob\":\"17.01.1994\",\"firstname\":\"Celvin\",\"sex\":\"M\",\"id\":\"170c07\",\"sign\":\"Celvin Klein\"}', '02/22/24 | 17:40');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `identifier` varchar(46) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `position` longtext CHARACTER SET latin1 COLLATE latin1_german1_ci DEFAULT '\'{"z":26.40,"x":-1045.53,"y":-2864.54}\'',
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_seen` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `phone_number` varchar(20) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `visum` int(1) NOT NULL DEFAULT 0,
  `hotbar` longtext DEFAULT NULL,
  `mainMailadres` varchar(50) DEFAULT NULL,
  `registerDate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT curdate(),
  `house` int(11) NOT NULL DEFAULT 0,
  `einreise` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `metadata`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `skin`, `status`, `is_dead`, `id`, `disabled`, `last_property`, `created_at`, `last_seen`, `phone_number`, `pincode`, `visum`, `hotbar`, `mainMailadres`, `registerDate`, `house`, `einreise`) VALUES
('0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', '{\"bank\":1469760,\"black_money\":0,\"money\":1330}', 'inhaber', '{\"doener\":4,\"boxbig\":1,\"gps\":1,\"phone\":1,\"alive_chicken\":234}', 'polizei', 12, '{\"WEAPON_SPECIALCARBINE_MK2\":{\"ammo\":2},\"WEAPON_CARBINERIFLE_MK2\":{\"ammo\":1},\"WEAPON_MARKSMANRIFLE_MK2\":{\"ammo\":24},\"WEAPON_PISTOL\":{\"ammo\":2}}', '{\"health\":166,\"visum\":0,\"armor\":0}', '{\"x\":-1037.195556640625,\"y\":-2737.305419921875,\"z\":20.1640625}', 'Doener', 'Wurst', '12.12.1993', 'm', 180, '{\"tshirt_1\":0,\"shoes_2\":0,\"blush_3\":0,\"lipstick_2\":0,\"watches_2\":0,\"eye_color\":0,\"arms_2\":0,\"torso_1\":10,\"makeup_2\":0,\"blemishes_2\":0,\"watches_1\":-1,\"ears_2\":0,\"torso_2\":0,\"chain_1\":0,\"beard_4\":0,\"helmet_2\":0,\"skin\":1,\"pants_2\":0,\"beard_2\":0,\"hair_color_1\":2,\"eyebrows_1\":0,\"face\":0,\"complexion_1\":0,\"blush_2\":0,\"mask_2\":0,\"moles_1\":0,\"mask_1\":0,\"ears_1\":-1,\"lipstick_4\":0,\"complexion_2\":0,\"bracelets_2\":0,\"makeup_4\":0,\"chest_2\":0,\"hair_1\":2,\"decals_1\":0,\"lipstick_3\":0,\"age_2\":0,\"decals_2\":0,\"eyebrows_3\":0,\"helmet_1\":-1,\"bodyb_1\":0,\"bproof_1\":0,\"beard_3\":0,\"bracelets_1\":-1,\"chain_2\":0,\"moles_2\":0,\"hair_color_2\":0,\"shoes_1\":9,\"sun_2\":0,\"sex\":0,\"blush_1\":0,\"tshirt_2\":0,\"beard_1\":0,\"eyebrows_4\":0,\"sun_1\":0,\"bags_1\":0,\"chest_3\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"makeup_1\":0,\"age_1\":0,\"bodyb_2\":0,\"hair_2\":0,\"eyebrows_2\":0,\"bags_2\":0,\"arms\":1,\"glasses_1\":0,\"makeup_3\":0,\"pants_1\":0,\"chest_1\":0,\"glasses_2\":0,\"bproof_2\":0}', '[{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":84.00999999999999,\"val\":840100,\"name\":\"hunger\"},{\"percent\":83.48,\"val\":834800,\"name\":\"thirst\"}]', 0, 45, 0, NULL, '2024-02-23 20:19:46', '2024-02-26 16:02:07', '3206964', NULL, 0, NULL, NULL, '2024-02-23', 0, 1),
('0dbf0a03992eea8e1fa9c7912dad557216fbb93d', '{\"bank\":24590533,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"armor\":0,\"health\":200}', '{\"x\":301.3582458496094,\"y\":-1388.4791259765626,\"z\":31.3692626953125}', 'Chris', 'Sanchez', '19.12.1990', 'm', 184, '{\"glasses_2\":5,\"eyebrows_4\":0,\"moles_1\":0,\"helmet_2\":0,\"hair_2\":0,\"sun_2\":0,\"complexion_1\":0,\"mask_1\":0,\"face\":4,\"watches_2\":0,\"hair_color_1\":0,\"torso_2\":0,\"shoes_1\":21,\"mask_2\":0,\"lipstick_1\":0,\"beard_1\":16,\"blemishes_2\":0,\"lipstick_3\":0,\"blush_1\":0,\"chest_3\":0,\"chain_2\":0,\"bproof_1\":0,\"ears_1\":-1,\"chest_1\":0,\"shoes_2\":0,\"bracelets_1\":-1,\"complexion_2\":0,\"tshirt_2\":0,\"arms\":1,\"beard_3\":0,\"lipstick_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"bags_1\":0,\"eyebrows_3\":0,\"eyebrows_2\":10,\"decals_1\":0,\"makeup_4\":0,\"blush_2\":0,\"glasses_1\":5,\"blush_3\":0,\"ears_2\":0,\"hair_1\":39,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_1\":13,\"bodyb_1\":0,\"age_1\":0,\"tshirt_1\":4,\"chest_2\":0,\"makeup_2\":0,\"bproof_2\":0,\"blemishes_1\":0,\"beard_2\":10,\"torso_1\":10,\"arms_2\":0,\"chain_1\":0,\"sun_1\":0,\"sex\":0,\"age_2\":0,\"bracelets_2\":0,\"lipstick_4\":0,\"helmet_1\":-1,\"bodyb_2\":0,\"moles_2\":0,\"beard_4\":0,\"pants_2\":0,\"makeup_1\":0,\"eye_color\":0,\"bags_2\":0,\"skin\":20,\"watches_1\":0}', '[{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":35.595,\"val\":355950,\"name\":\"hunger\"},{\"percent\":35.595,\"val\":355950,\"name\":\"thirst\"}]', 0, 49, 0, NULL, '2024-02-25 19:01:32', '2024-02-26 19:50:56', '4567765', NULL, 0, NULL, NULL, '2024-02-25', 0, 1),
('170c0781bf3db9b54847ee453224dfab755ad36c', '{\"bank\":999799893073,\"black_money\":41360,\"money\":143998250}', 'inhaber', '{\"doener\":17,\"water\":10,\"espresso\":9,\"phone\":1,\"fischplatte\":8,\"Trauben\":1,\"burger\":6,\"opium\":10,\"clip\":3,\"zigarette\":1,\"rotwein\":10}', 'polizei', 12, '{\"WEAPON_SNSPISTOL\":{\"ammo\":91}}', '{\"health\":200,\"armor\":0,\"visum\":0}', '{\"x\":-586.6549682617188,\"y\":-56.10988998413086,\"z\":50.2747802734375}', 'Celvin', 'Klein', '17.01.1994', 'm', 190, '{\"glasses_2\":0,\"eyebrows_4\":0,\"moles_1\":0,\"helmet_2\":2,\"eye_color\":0,\"sun_2\":0,\"complexion_1\":0,\"mask_1\":0,\"face\":0,\"makeup_1\":0,\"pants_2\":0,\"torso_2\":2,\"shoes_1\":1,\"mask_2\":0,\"lipstick_1\":0,\"beard_1\":18,\"blemishes_2\":0,\"lipstick_3\":0,\"blush_1\":0,\"chest_3\":0,\"chain_2\":0,\"bproof_1\":0,\"ears_1\":-1,\"chest_1\":0,\"shoes_2\":1,\"bracelets_1\":-1,\"complexion_2\":0,\"tshirt_2\":0,\"arms\":0,\"beard_3\":0,\"lipstick_2\":0,\"decals_2\":0,\"hair_color_2\":20,\"bags_1\":0,\"lipstick_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"makeup_4\":0,\"torso_1\":352,\"glasses_1\":5,\"blush_3\":0,\"ears_2\":0,\"hair_1\":39,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_1\":47,\"bodyb_1\":0,\"age_1\":0,\"tshirt_1\":15,\"chest_2\":0,\"makeup_2\":0,\"beard_2\":10,\"eyebrows_3\":0,\"hair_color_1\":13,\"bproof_2\":0,\"watches_2\":0,\"chain_1\":0,\"sun_1\":0,\"sex\":0,\"age_2\":0,\"bracelets_2\":0,\"blemishes_1\":0,\"helmet_1\":143,\"watches_1\":-1,\"moles_2\":0,\"beard_4\":0,\"bodyb_2\":0,\"hair_2\":0,\"arms_2\":0,\"bags_2\":0,\"skin\":2,\"blush_2\":0}', '[{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":91.43,\"val\":914300,\"name\":\"hunger\"},{\"percent\":74.625,\"val\":746250,\"name\":\"thirst\"}]', 0, 42, 0, NULL, '2024-02-22 16:23:15', '2024-02-26 18:51:55', '7205540', NULL, 0, NULL, NULL, '2024-02-22', 0, 1),
('531c0783da697172843d844c83e9cfac247a6be6', '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'inhaber', '{\"cannabis\":2,\"bread\":3,\"water\":4}', 'unemployed', 0, '[]', '{\"health\":190,\"armor\":0}', '{\"x\":653.5384521484375,\"z\":40.8388671875,\"y\":2701.028564453125}', 'Peter', 'Meier', '01.01.1985', 'm', 200, '{\"sex\":0,\"moles_1\":0,\"chest_3\":0,\"face\":0,\"beard_4\":0,\"mask_1\":0,\"chest_1\":0,\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0,\"age_2\":0,\"beard_2\":0,\"glasses_1\":0,\"watches_1\":-1,\"tshirt_2\":0,\"makeup_1\":0,\"age_1\":0,\"bags_2\":0,\"complexion_1\":0,\"arms_2\":0,\"bracelets_1\":-1,\"helmet_1\":-1,\"blush_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"ears_1\":-1,\"sun_2\":0,\"pants_2\":0,\"complexion_2\":0,\"pants_1\":0,\"watches_2\":0,\"shoes_1\":0,\"beard_1\":0,\"torso_1\":0,\"eyebrows_2\":0,\"lipstick_1\":0,\"makeup_2\":0,\"bodyb_2\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"blush_1\":0,\"chain_2\":0,\"skin\":1,\"lipstick_3\":0,\"blush_3\":0,\"eyebrows_3\":0,\"sun_1\":0,\"lipstick_4\":0,\"arms\":0,\"decals_2\":0,\"helmet_2\":0,\"hair_color_2\":0,\"moles_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"chest_2\":0,\"makeup_3\":0,\"glasses_2\":0,\"ears_2\":0,\"bags_1\":0,\"bproof_2\":0,\"beard_3\":0,\"eye_color\":0,\"blemishes_1\":0,\"eyebrows_1\":0,\"hair_2\":0,\"mask_2\":0,\"torso_2\":0,\"lipstick_2\":0,\"bodyb_1\":0,\"bracelets_2\":0,\"hair_1\":0}', '[{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":87.665,\"val\":876650,\"name\":\"hunger\"},{\"percent\":87.665,\"val\":876650,\"name\":\"thirst\"}]', 0, 47, 0, NULL, '2024-02-25 12:08:11', '2024-02-25 22:09:55', '6285231', NULL, 0, NULL, NULL, '2024-02-25', 0, 1),
('6a2df2596c750aba87978a90314ede727436be2a', '{\"bank\":99999999,\"money\":99988469,\"black_money\":99999999}', 'user', '{\"boxbig\":29,\"rotwein\":17,\"phone\":1}', 'unemployed', 0, '{\"WEAPON_MICROSMG\":{\"ammo\":22}}', '{\"armor\":0,\"health\":200}', '{\"x\":1262.887939453125,\"y\":2356.3251953125,\"z\":74.5047607421875}', 'Max', 'Van Bergk', '01.04.2000', 'm', 171, '{\"tshirt_1\":0,\"shoes_2\":0,\"blush_3\":0,\"beard_3\":0,\"watches_2\":0,\"eye_color\":0,\"arms_2\":0,\"torso_1\":0,\"makeup_2\":0,\"blemishes_2\":0,\"watches_1\":-1,\"ears_2\":0,\"torso_2\":0,\"age_1\":0,\"beard_4\":0,\"helmet_2\":0,\"skin\":0,\"pants_2\":0,\"makeup_3\":0,\"hair_color_1\":0,\"chain_2\":0,\"face\":0,\"complexion_1\":0,\"blush_2\":0,\"mask_2\":0,\"bags_1\":0,\"mask_1\":0,\"bodyb_2\":0,\"lipstick_4\":0,\"complexion_2\":0,\"bracelets_2\":0,\"makeup_4\":0,\"glasses_1\":0,\"hair_1\":0,\"decals_1\":0,\"sun_2\":0,\"age_2\":0,\"decals_2\":0,\"eyebrows_3\":0,\"helmet_1\":-1,\"bodyb_1\":0,\"bproof_1\":0,\"ears_1\":-1,\"bracelets_1\":-1,\"bags_2\":0,\"moles_2\":0,\"eyebrows_2\":0,\"shoes_1\":0,\"beard_1\":0,\"chest_2\":0,\"lipstick_2\":0,\"tshirt_2\":0,\"sex\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_3\":0,\"blemishes_1\":0,\"lipstick_1\":0,\"eyebrows_1\":0,\"makeup_1\":0,\"moles_1\":0,\"hair_color_2\":0,\"hair_2\":0,\"chest_3\":0,\"sun_1\":0,\"arms\":0,\"blush_1\":0,\"beard_2\":0,\"pants_1\":0,\"chest_1\":0,\"glasses_2\":0,\"bproof_2\":0}', '[{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"},{\"val\":490800,\"percent\":49.08,\"name\":\"hunger\"},{\"val\":490800,\"percent\":49.08,\"name\":\"thirst\"}]', 0, 50, 0, NULL, '2024-02-25 19:07:08', '2024-02-26 14:49:37', '8755027', NULL, 0, NULL, NULL, '2024-02-25', 0, 1),
('6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69', '{\"bank\":5049969,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"armor\":0,\"health\":200}', '{\"x\":300.29010009765627,\"y\":-1387.173583984375,\"z\":31.4029541015625}', 'Mikle', 'Grey', '04.11.1992', 'm', 188, '{\"glasses_2\":4,\"eyebrows_4\":0,\"bodyb_2\":0,\"helmet_2\":0,\"eye_color\":2,\"sun_2\":0,\"complexion_1\":0,\"mask_1\":0,\"face\":0,\"makeup_1\":0,\"pants_2\":0,\"torso_2\":0,\"shoes_1\":1,\"mask_2\":0,\"lipstick_1\":0,\"beard_1\":10,\"blemishes_2\":0,\"lipstick_3\":0,\"blush_1\":0,\"chest_3\":0,\"chain_2\":0,\"bproof_1\":0,\"ears_1\":-1,\"chest_1\":0,\"shoes_2\":0,\"bracelets_1\":-1,\"complexion_2\":0,\"tshirt_2\":0,\"arms\":0,\"beard_3\":0,\"lipstick_2\":0,\"decals_2\":0,\"hair_color_2\":4,\"bags_1\":0,\"watches_1\":-1,\"eyebrows_2\":10,\"decals_1\":0,\"beard_2\":10,\"torso_1\":0,\"glasses_1\":5,\"blush_3\":0,\"ears_2\":0,\"hair_1\":3,\"eyebrows_1\":5,\"makeup_3\":0,\"pants_1\":4,\"bodyb_1\":0,\"age_1\":0,\"tshirt_1\":0,\"chest_2\":0,\"makeup_2\":0,\"blemishes_1\":0,\"blush_2\":0,\"makeup_4\":0,\"hair_color_1\":29,\"bproof_2\":0,\"chain_1\":0,\"sun_1\":0,\"sex\":0,\"age_2\":0,\"bracelets_2\":0,\"watches_2\":0,\"helmet_1\":-1,\"eyebrows_3\":0,\"moles_2\":0,\"beard_4\":0,\"lipstick_4\":0,\"arms_2\":0,\"moles_1\":0,\"bags_2\":0,\"skin\":5,\"hair_2\":0}', '[{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":36.25,\"val\":362500,\"name\":\"hunger\"},{\"percent\":36.25,\"val\":362500,\"name\":\"thirst\"}]', 0, 53, 0, NULL, '2024-02-26 16:42:07', '2024-02-26 19:50:56', '1670842', NULL, 0, NULL, NULL, '2024-02-26', 0, 0),
('722c42c644c33d8e39fbec94459d97c156a62462', '{\"money\":485000,\"bank\":43000,\"black_money\":0}', 'user', '{\"gps\":1,\"repairkit\":2,\"vehicle_transfer_contract\":2,\"phone\":1,\"handcuffs\":5}', 'unemployed', 0, '[]', '{\"health\":154,\"armor\":0}', '{\"x\":-1504.6021728515626,\"z\":54.6051025390625,\"y\":-55.4109878540039}', 'Iwan', 'Dragoo', '09.07.1964', 'm', 180, '{\"tshirt_1\":4,\"shoes_2\":1,\"blush_3\":0,\"beard_3\":29,\"watches_2\":0,\"eye_color\":0,\"arms_2\":0,\"torso_1\":70,\"makeup_2\":0,\"blemishes_2\":0,\"watches_1\":-1,\"beard_1\":18,\"torso_2\":2,\"chain_1\":29,\"beard_4\":9,\"helmet_2\":0,\"skin\":9,\"pants_2\":0,\"makeup_3\":0,\"hair_color_1\":0,\"eyebrows_1\":0,\"face\":5,\"complexion_1\":0,\"blush_2\":0,\"mask_2\":0,\"bags_1\":0,\"mask_1\":0,\"ears_1\":19,\"lipstick_4\":0,\"complexion_2\":0,\"bracelets_2\":0,\"makeup_4\":0,\"chest_2\":0,\"hair_1\":0,\"decals_1\":0,\"lipstick_3\":0,\"age_2\":10,\"decals_2\":0,\"eyebrows_3\":0,\"helmet_1\":7,\"bodyb_1\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"blush_1\":0,\"moles_2\":0,\"lipstick_2\":0,\"shoes_1\":28,\"sex\":0,\"age_1\":14,\"lipstick_1\":0,\"tshirt_2\":0,\"chain_2\":0,\"eyebrows_2\":0,\"ears_2\":0,\"sun_1\":0,\"sun_2\":0,\"hair_color_2\":0,\"bodyb_2\":0,\"makeup_1\":0,\"moles_1\":0,\"glasses_1\":3,\"hair_2\":0,\"blemishes_1\":0,\"bags_2\":0,\"arms\":20,\"chest_3\":0,\"beard_2\":10,\"pants_1\":13,\"chest_1\":0,\"glasses_2\":3,\"bproof_2\":0}', '[{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":45.815,\"val\":458150,\"name\":\"hunger\"},{\"percent\":45.815,\"val\":458150,\"name\":\"thirst\"}]', 0, 48, 0, NULL, '2024-02-25 18:52:46', '2024-02-25 20:48:46', '8870734', NULL, 0, NULL, NULL, '2024-02-25', 0, 1),
('94aa00d10f636f0acd4f8b7446724e62aae88114', '{\"money\":59321000,\"bank\":3645500,\"black_money\":100000}', 'inhaber', '{\"cannabis\":134,\"clip\":18,\"vehicle_transfer_contract\":1,\"doener\":3,\"phone\":1,\"rotwein\":1,\"boxbig\":23,\"clip_extended\":12,\"green_gelato_cannabis\":5,\"opium\":76,\"fischplatte\":4}', 'adac', 7, '{\"WEAPON_KNIFE\":{\"ammo\":30},\"WEAPON_SNSPISTOL\":{\"ammo\":198,\"components\":[\"clip_extended\",\"luxary_finish\"],\"tintIndex\":2},\"WEAPON_ASSAULTRIFLE_MK2\":{\"ammo\":169},\"WEAPON_FIREWORK\":{\"ammo\":0},\"WEAPON_SNSPISTOL_MK2\":{\"ammo\":213}}', '{\"health\":200,\"armor\":0}', '{\"x\":265.054931640625,\"z\":29.1787109375,\"y\":-869.5120849609375}', 'Jupp', 'Hase', '28.12.1984', 'm', 174, '{\"chest_2\":0,\"lipstick_1\":0,\"watches_2\":0,\"sun_1\":0,\"decals_2\":0,\"chain_2\":0,\"moles_1\":0,\"chest_3\":0,\"helmet_1\":-1,\"blush_2\":0,\"bodyb_2\":0,\"pants_1\":75,\"helmet_2\":0,\"blush_1\":0,\"glasses_2\":0,\"torso_1\":480,\"bracelets_2\":0,\"makeup_1\":0,\"makeup_2\":0,\"ears_2\":0,\"eyebrows_3\":0,\"ears_1\":-1,\"bracelets_1\":-1,\"arms_2\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_2\":15,\"chain_1\":0,\"chest_1\":0,\"blemishes_2\":0,\"age_2\":0,\"torso_2\":0,\"mask_1\":0,\"moles_2\":0,\"hair_2\":0,\"skin\":0,\"tshirt_1\":15,\"complexion_1\":0,\"glasses_1\":5,\"eye_color\":7,\"bags_1\":0,\"eyebrows_2\":10,\"eyebrows_4\":0,\"beard_2\":10,\"complexion_2\":0,\"blemishes_1\":0,\"lipstick_3\":0,\"beard_3\":0,\"bproof_1\":0,\"arms\":4,\"decals_1\":0,\"pants_2\":4,\"makeup_3\":0,\"bodyb_1\":0,\"shoes_2\":5,\"mask_2\":0,\"beard_4\":0,\"tshirt_2\":0,\"hair_color_1\":15,\"hair_1\":79,\"eyebrows_1\":12,\"bags_2\":0,\"age_1\":0,\"face\":0,\"beard_1\":14,\"sun_2\":0,\"lipstick_2\":0,\"blush_3\":0,\"sex\":0,\"makeup_4\":0,\"shoes_1\":12,\"watches_1\":-1}', '[{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":87.30499999999999,\"val\":873050,\"name\":\"hunger\"},{\"percent\":87.335,\"val\":873350,\"name\":\"thirst\"}]', 0, 43, 0, NULL, '2024-02-22 18:37:40', '2024-02-25 22:10:09', '8885983', NULL, 0, NULL, NULL, '2024-02-22', 0, 1),
('ab7d763277d30bc748b5bd353a32eec6f9039fad', '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"health\":155,\"armor\":0}', '{\"z\":13.5926513671875,\"y\":-2682.514404296875,\"x\":-1085.6571044921876}', 'Outis', 'Mahmoud', '01.01.2002', 'm', 185, '{\"beard_3\":0,\"decals_2\":0,\"pants_2\":0,\"bags_2\":0,\"chest_2\":0,\"blush_1\":0,\"complexion_2\":0,\"face\":0,\"complexion_1\":0,\"lipstick_1\":0,\"eyebrows_2\":0,\"blush_2\":0,\"pants_1\":0,\"bodyb_2\":0,\"eyebrows_1\":0,\"tshirt_2\":0,\"glasses_2\":0,\"tshirt_1\":0,\"mask_2\":0,\"blemishes_1\":0,\"mask_1\":0,\"blush_3\":0,\"eyebrows_4\":0,\"bracelets_2\":0,\"bracelets_1\":-1,\"sun_1\":0,\"decals_1\":0,\"blemishes_2\":0,\"makeup_3\":0,\"chain_1\":0,\"makeup_4\":0,\"shoes_2\":0,\"beard_1\":0,\"helmet_2\":0,\"bags_1\":0,\"hair_color_2\":0,\"makeup_1\":0,\"bodyb_1\":0,\"chest_1\":0,\"torso_2\":0,\"ears_2\":0,\"shoes_1\":0,\"sex\":0,\"chest_3\":0,\"lipstick_3\":0,\"beard_2\":0,\"age_1\":0,\"eye_color\":0,\"hair_1\":0,\"lipstick_4\":0,\"glasses_1\":0,\"moles_2\":0,\"beard_4\":0,\"hair_color_1\":0,\"watches_1\":-1,\"arms_2\":0,\"bproof_2\":0,\"watches_2\":0,\"moles_1\":0,\"arms\":0,\"ears_1\":-1,\"skin\":0,\"torso_1\":0,\"lipstick_2\":0,\"helmet_1\":-1,\"sun_2\":0,\"bproof_1\":0,\"makeup_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"hair_2\":0,\"chain_2\":0}', '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":98.09,\"val\":980900},{\"name\":\"thirst\",\"percent\":98.09,\"val\":980900}]', 0, 51, 0, NULL, '2024-02-25 19:35:33', '2024-02-26 13:04:45', '6494098', NULL, 0, NULL, NULL, '2024-02-25', 0, 1),
('e598fbbe436603d025acb703ebb6ef2fc337c1d0', '{\"bank\":2204000,\"black_money\":7818500,\"money\":92763470}', 'inhaber', '{\"fischplatte\":1,\"clip_extended\":5,\"boxbig\":25,\"rotwein\":1,\"grip\":2,\"flashlight\":2,\"suppressor\":4,\"phone\":1}', 'mechanic', 12, '{\"WEAPON_MICROSMG\":{\"components\":[\"scope\",\"luxary_finish\",\"flashlight\",\"clip_extended\",\"suppressor\"],\"ammo\":243},\"WEAPON_PISTOL50\":{\"components\":[\"clip_extended\",\"luxary_finish\",\"suppressor\"],\"ammo\":104},\"WEAPON_SWITCHBLADE\":{\"ammo\":30},\"WEAPON_GUSENBERG\":{\"components\":[\"clip_extended\"],\"tintIndex\":3,\"ammo\":350},\"WEAPON_PISTOL_MK2\":{\"components\":[\"clip_extended\",\"scope\",\"suppressor\"],\"ammo\":247},\"WEAPON_ASSAULTRIFLE_MK2\":{\"components\":[\"clip_extended\",\"grip\",\"suppressor\",\"flashlight\"],\"ammo\":172},\"WEAPON_SNSPISTOL_MK2\":{\"components\":[\"suppressor\",\"clip_extended\",\"flashlight\"],\"ammo\":222},\"WEAPON_CARBINERIFLE_MK2\":{\"components\":[\"clip_extended\",\"grip\",\"suppressor\",\"flashlight\"],\"ammo\":450},\"WEAPON_HEAVYPISTOL\":{\"components\":[\"clip_extended\",\"suppressor\"],\"ammo\":244},\"WEAPON_MACHINEPISTOL\":{\"components\":[\"clip_drum\",\"suppressor\"],\"tintIndex\":2,\"ammo\":240}}', '{\"health\":200,\"armor\":0}', '{\"x\":54.97582244873047,\"y\":-1766.123046875,\"z\":47.6798095703125}', 'James', 'Blond', '01.01.1977', 'm', 195, '{\"chest_3\":0,\"eyebrows_3\":0,\"eye_color\":0,\"makeup_4\":0,\"complexion_1\":0,\"pants_2\":4,\"age_1\":0,\"tshirt_1\":1,\"arms_2\":0,\"hair_2\":0,\"lipstick_4\":0,\"age_2\":0,\"bodyb_1\":0,\"beard_1\":10,\"glasses_2\":4,\"eyebrows_4\":0,\"bproof_2\":0,\"hair_color_1\":29,\"moles_2\":0,\"complexion_2\":0,\"sun_1\":0,\"beard_2\":10,\"face\":0,\"torso_1\":491,\"bags_1\":0,\"makeup_1\":0,\"blemishes_1\":0,\"shoes_2\":0,\"moles_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"blush_1\":0,\"blush_2\":0,\"blemishes_2\":0,\"helmet_2\":18,\"lipstick_2\":0,\"glasses_1\":7,\"chain_1\":0,\"ears_2\":0,\"eyebrows_1\":0,\"lipstick_1\":0,\"torso_2\":12,\"chest_2\":0,\"watches_1\":-1,\"watches_2\":0,\"decals_2\":0,\"mask_1\":0,\"skin\":4,\"bags_2\":0,\"hair_1\":3,\"beard_3\":0,\"bodyb_2\":0,\"makeup_3\":0,\"sun_2\":0,\"bracelets_2\":0,\"shoes_1\":6,\"tshirt_2\":8,\"ears_1\":-1,\"mask_2\":0,\"beard_4\":0,\"chain_2\":0,\"arms\":20,\"eyebrows_2\":0,\"decals_1\":0,\"pants_1\":4,\"chest_1\":0,\"blush_3\":0,\"helmet_1\":160,\"sex\":0,\"hair_color_2\":29,\"bproof_1\":0,\"makeup_2\":0}', '[{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":45.205,\"val\":452050,\"name\":\"hunger\"},{\"percent\":45.205,\"val\":452050,\"name\":\"thirst\"}]', 0, 46, 0, NULL, '2024-02-24 19:54:25', '2024-02-26 15:39:44', '3326989', NULL, 0, NULL, NULL, '2024-02-24', 0, 1),
('e9c42e433167ee744dba4011725cb75e1d9274ed', '{\"money\":0,\"bank\":33794,\"black_money\":0}', 'user', '{\"rotwein\":3,\"doener\":3}', 'unemployed', 0, '[]', '{\"armor\":0,\"health\":175}', '{\"z\":53.122314453125,\"x\":1836.01318359375,\"y\":2582.558349609375}', 'Jaques el', 'Fumeta', '28.07.1996', 'm', 171, '{\"makeup_1\":0,\"bodyb_1\":0,\"sun_2\":0,\"makeup_4\":0,\"pants_1\":1,\"bracelets_1\":-1,\"blush_2\":0,\"face\":19,\"blemishes_1\":0,\"arms\":0,\"shoes_1\":6,\"chain_2\":0,\"age_2\":0,\"makeup_3\":0,\"lipstick_3\":0,\"skin\":11,\"helmet_1\":-1,\"glasses_2\":0,\"moles_2\":0,\"glasses_1\":9,\"lipstick_1\":0,\"sex\":0,\"lipstick_4\":0,\"beard_3\":0,\"eyebrows_4\":0,\"age_1\":0,\"decals_1\":0,\"beard_1\":10,\"lipstick_2\":0,\"beard_4\":0,\"tshirt_1\":2,\"eyebrows_3\":0,\"chain_1\":17,\"makeup_2\":0,\"eyebrows_1\":3,\"blemishes_2\":0,\"complexion_1\":0,\"complexion_2\":0,\"bags_2\":0,\"bproof_1\":0,\"bags_1\":0,\"hair_2\":4,\"arms_2\":0,\"chest_2\":0,\"torso_1\":22,\"bodyb_2\":0,\"blush_1\":0,\"hair_color_1\":28,\"eyebrows_2\":10,\"mask_2\":0,\"watches_2\":0,\"chest_1\":0,\"ears_2\":0,\"bracelets_2\":0,\"moles_1\":0,\"watches_1\":4,\"chest_3\":0,\"sun_1\":0,\"mask_1\":0,\"ears_1\":-1,\"shoes_2\":0,\"helmet_2\":0,\"eye_color\":5,\"hair_color_2\":0,\"torso_2\":0,\"blush_3\":0,\"beard_2\":10,\"pants_2\":0,\"bproof_2\":0,\"decals_2\":0,\"tshirt_2\":0,\"hair_1\":16}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":819400,\"percent\":81.94},{\"name\":\"thirst\",\"val\":833400,\"percent\":83.34}]', 0, 52, 0, NULL, '2024-02-26 12:52:32', '2024-02-26 14:58:01', '6510384', NULL, 0, NULL, NULL, '2024-02-26', 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(1, 'weapon', 'e598fbbe436603d025acb703ebb6ef2fc337c1d0'),
(2, 'weapon', '170c0781bf3db9b54847ee453224dfab755ad36c'),
(3, 'weapon', '94aa00d10f636f0acd4f8b7446724e62aae88114'),
(4, 'weapon', '531c0783da697172843d844c83e9cfac247a6be6'),
(5, 'weapon', '0dbf0a03992eea8e1fa9c7912dad557216fbb93d'),
(6, 'weapon', 'e9c42e433167ee744dba4011725cb75e1d9274ed'),
(7, 'weapon', '6d6e1cf24ddd2effcd8e1bb6feafa4ad10564f69');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `id` int(11) NOT NULL,
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `whitelist`
--

CREATE TABLE `whitelist` (
  `identifier` varchar(46) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ws_clotheshop`
--

CREATE TABLE `ws_clotheshop` (
  `id` int(11) NOT NULL,
  `owner` varchar(200) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `outfit` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`outfit`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `ws_clotheshop`
--

INSERT INTO `ws_clotheshop` (`id`, `owner`, `name`, `outfit`) VALUES
(2, '94aa00d10f636f0acd4f8b7446724e62aae88114', 'sebel', '{\"beard_3\":0,\"tshirt_2\":0,\"ears_1\":-1,\"makeup_3\":0,\"helmet_1\":-1,\"torso_2\":0,\"bags_2\":0,\"helmet_2\":0,\"age_1\":0,\"bags_1\":0,\"beard_2\":10,\"face\":0,\"lipstick_2\":0,\"shoes_1\":31,\"chain_1\":0,\"makeup_2\":0,\"mask_1\":0,\"pants_1\":76,\"eyebrows_2\":10,\"glasses_2\":0,\"shoes_2\":4,\"decals_2\":0,\"lipstick_1\":0,\"makeup_4\":0,\"hair_color_1\":15,\"makeup_1\":0,\"eyebrows_4\":0,\"glasses_1\":-1,\"beard_4\":0,\"tshirt_1\":15,\"pants_2\":7,\"eyebrows_3\":0,\"hair_2\":0,\"age_2\":0,\"bproof_1\":0,\"torso_1\":262,\"chain_2\":0,\"beard_1\":14,\"sex\":0,\"skin\":0,\"lipstick_3\":0,\"hair_1\":57,\"arms\":0,\"hair_color_2\":15,\"mask_2\":0,\"bproof_2\":0,\"decals_1\":0,\"eyebrows_1\":31,\"lipstick_4\":0,\"ears_2\":0}'),
(3, '94aa00d10f636f0acd4f8b7446724e62aae88114', 'sebel', '{\"beard_3\":0,\"tshirt_2\":0,\"ears_1\":-1,\"makeup_3\":0,\"helmet_1\":-1,\"torso_2\":0,\"bags_2\":0,\"helmet_2\":0,\"age_1\":0,\"bags_1\":0,\"beard_2\":10,\"face\":0,\"lipstick_2\":0,\"shoes_1\":31,\"chain_1\":0,\"makeup_2\":0,\"mask_1\":0,\"pants_1\":76,\"eyebrows_2\":10,\"glasses_2\":0,\"shoes_2\":4,\"decals_2\":0,\"lipstick_1\":0,\"makeup_4\":0,\"hair_color_1\":15,\"makeup_1\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"beard_4\":0,\"tshirt_1\":15,\"pants_2\":7,\"eyebrows_3\":0,\"hair_2\":0,\"age_2\":0,\"bproof_1\":0,\"torso_1\":262,\"chain_2\":0,\"beard_1\":14,\"sex\":0,\"skin\":0,\"lipstick_3\":0,\"hair_1\":57,\"arms\":0,\"hair_color_2\":15,\"mask_2\":0,\"bproof_2\":0,\"decals_1\":0,\"eyebrows_1\":31,\"lipstick_4\":0,\"ears_2\":0}'),
(6, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Tuner Chef', '{\"bproof_1\":0,\"tshirt_1\":170,\"mask_2\":0,\"eyebrows_1\":0,\"hair_2\":0,\"mask_1\":0,\"makeup_1\":0,\"bproof_2\":0,\"arms2\":0,\"shoes_1\":62,\"ears_2\":4,\"arms\":1,\"bags_1\":0,\"ears_1\":14,\"helmet_2\":2,\"shoes_2\":6,\"sex\":0,\"beard_2\":10,\"makeup_4\":0,\"chain_2\":0,\"age_2\":1,\"chain_1\":0,\"beard_1\":8,\"hair_color_2\":29,\"decals_2\":0,\"helmet_1\":147,\"hair_color_1\":29,\"eyebrows_4\":9,\"lipstick_2\":0,\"beard_4\":0,\"pants_1\":132,\"beard_3\":0,\"face\":19,\"bags_2\":0,\"age_1\":0,\"glasses_2\":4,\"skin\":4,\"pants_2\":22,\"tshirt_2\":4,\"torso_2\":10,\"glasses_1\":7,\"lipstick_3\":0,\"eyebrows_2\":10,\"lipstick_1\":0,\"lipstick_4\":0,\"hair_1\":3,\"eyebrows_3\":3,\"makeup_2\":0,\"torso_1\":595,\"makeup_3\":0,\"decals_1\":0}'),
(7, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Fresh', '{\"bproof_1\":0,\"tshirt_1\":15,\"mask_2\":0,\"eyebrows_1\":0,\"hair_2\":0,\"mask_1\":0,\"makeup_1\":0,\"bproof_2\":0,\"arms2\":0,\"shoes_1\":7,\"ears_2\":4,\"arms\":1,\"bags_1\":0,\"ears_1\":14,\"helmet_2\":2,\"shoes_2\":13,\"sex\":0,\"beard_2\":10,\"makeup_4\":0,\"chain_2\":0,\"age_2\":1,\"chain_1\":0,\"beard_1\":8,\"hair_color_2\":29,\"decals_2\":0,\"helmet_1\":147,\"hair_color_1\":29,\"eyebrows_4\":9,\"lipstick_2\":0,\"beard_4\":0,\"pants_1\":46,\"beard_3\":0,\"face\":19,\"bags_2\":0,\"age_1\":0,\"glasses_2\":4,\"skin\":4,\"pants_2\":1,\"tshirt_2\":0,\"torso_2\":8,\"glasses_1\":7,\"lipstick_3\":0,\"eyebrows_2\":10,\"lipstick_1\":0,\"lipstick_4\":0,\"hair_1\":3,\"eyebrows_3\":3,\"makeup_2\":0,\"torso_1\":53,\"makeup_3\":0,\"decals_1\":0}'),
(8, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Chef Bürotag', '{\"bproof_1\":0,\"tshirt_1\":150,\"mask_2\":0,\"eyebrows_1\":0,\"hair_2\":0,\"mask_1\":0,\"makeup_1\":0,\"bproof_2\":0,\"arms2\":0,\"shoes_1\":62,\"ears_2\":4,\"arms\":4,\"bags_1\":0,\"ears_1\":14,\"helmet_2\":1,\"shoes_2\":3,\"sex\":0,\"beard_2\":10,\"makeup_4\":0,\"chain_2\":0,\"age_2\":1,\"chain_1\":0,\"beard_1\":8,\"hair_color_2\":29,\"decals_2\":0,\"helmet_1\":147,\"hair_color_1\":29,\"eyebrows_4\":9,\"lipstick_2\":0,\"beard_4\":0,\"pants_1\":233,\"beard_3\":0,\"face\":19,\"bags_2\":0,\"age_1\":0,\"glasses_2\":4,\"skin\":4,\"pants_2\":4,\"tshirt_2\":4,\"torso_2\":0,\"glasses_1\":7,\"lipstick_3\":0,\"eyebrows_2\":10,\"lipstick_1\":0,\"lipstick_4\":0,\"hair_1\":3,\"eyebrows_3\":3,\"makeup_2\":0,\"torso_1\":381,\"makeup_3\":0,\"decals_1\":0}'),
(9, 'fd4c8fa8ed4dcf6e9014bb7457f91258f1ae9215', 'Celvin K1', '{\"tshirt_2\":15,\"beard_1\":12,\"beard_3\":0,\"beard_4\":0,\"lipstick_3\":0,\"hair_color_1\":1,\"shoes_1\":47,\"skin\":0,\"ears_1\":-1,\"arms\":0,\"glasses_1\":-1,\"chain_2\":0,\"eyebrows_2\":9,\"hair_color_2\":11,\"makeup_4\":0,\"pants_1\":80,\"pants_2\":0,\"lipstick_1\":0,\"bproof_1\":0,\"bags_1\":0,\"lipstick_2\":0,\"age_1\":0,\"hair_2\":0,\"makeup_3\":0,\"decals_1\":0,\"ears_2\":0,\"tshirt_1\":170,\"eyebrows_3\":0,\"torso_1\":317,\"arms2\":0,\"makeup_1\":0,\"glasses_2\":0,\"face\":0,\"arms_2\":0,\"helmet_1\":-1,\"beard_2\":10,\"sex\":0,\"decals_2\":0,\"age_2\":0,\"mask_2\":0,\"bproof_2\":0,\"bags_2\":0,\"mask_1\":0,\"eyebrows_4\":0,\"eyebrows_1\":33,\"label\":\"Polizei Boss\",\"helmet_2\":0,\"hair_1\":75,\"makeup_2\":0,\"chain_1\":0,\"torso_2\":2,\"shoes_2\":0,\"lipstick_4\":0}'),
(10, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Neu', '{\"complexion_1\":0,\"pants_2\":1,\"hair_color_1\":29,\"lipstick_1\":0,\"eyebrows_1\":0,\"age_2\":1,\"ears_2\":4,\"arms\":1,\"bproof_2\":0,\"torso_1\":53,\"hair_2\":0,\"bodyb_2\":0,\"pants_1\":46,\"chest_2\":0,\"chain_1\":0,\"bags_1\":0,\"moles_1\":0,\"eye_color\":0,\"bags_2\":0,\"arms_2\":0,\"arms2\":0,\"lipstick_4\":0,\"complexion_2\":0,\"watches_2\":0,\"blush_3\":0,\"tshirt_2\":0,\"shoes_2\":7,\"makeup_1\":0,\"watches_1\":-1,\"bproof_1\":0,\"eyebrows_2\":10,\"chest_3\":0,\"beard_3\":0,\"makeup_4\":0,\"ears_1\":14,\"bracelets_2\":0,\"blush_2\":0,\"decals_1\":0,\"face\":19,\"lipstick_3\":0,\"sex\":0,\"glasses_2\":4,\"blemishes_2\":0,\"helmet_2\":2,\"helmet_1\":147,\"age_1\":0,\"shoes_1\":7,\"skin\":4,\"bodyb_1\":0,\"decals_2\":0,\"bracelets_1\":-1,\"tshirt_1\":15,\"mask_1\":0,\"mask_2\":0,\"makeup_3\":0,\"makeup_2\":0,\"torso_2\":0,\"beard_1\":8,\"lipstick_2\":0,\"chest_1\":0,\"glasses_1\":7,\"chain_2\":0,\"moles_2\":0,\"beard_2\":10,\"blush_1\":0,\"hair_1\":3,\"blemishes_1\":0,\"eyebrows_4\":9,\"sun_1\":0,\"eyebrows_3\":3,\"hair_color_2\":29,\"beard_4\":0,\"sun_2\":0}'),
(11, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Ganz Neu', '{\"mask_2\":13,\"bproof_2\":0,\"chain_2\":0,\"moles_1\":0,\"helmet_1\":147,\"lipstick_1\":0,\"decals_1\":0,\"mask_1\":43,\"shoes_2\":7,\"makeup_4\":0,\"arms_2\":0,\"glasses_2\":4,\"bracelets_2\":0,\"beard_4\":0,\"eyebrows_1\":0,\"blush_2\":0,\"beard_3\":0,\"tshirt_1\":15,\"beard_1\":8,\"age_1\":0,\"chest_1\":0,\"sex\":0,\"pants_1\":46,\"blush_3\":0,\"bodyb_2\":0,\"arms2\":0,\"torso_1\":53,\"chain_1\":0,\"tshirt_2\":0,\"arms\":1,\"beard_2\":10,\"glasses_1\":7,\"bags_2\":0,\"torso_2\":0,\"bodyb_1\":0,\"moles_2\":0,\"hair_2\":0,\"chest_3\":0,\"pants_2\":1,\"sun_2\":0,\"sun_1\":0,\"hair_color_2\":29,\"decals_2\":0,\"shoes_1\":7,\"bracelets_1\":-1,\"bproof_1\":0,\"complexion_1\":0,\"ears_2\":3,\"makeup_3\":0,\"watches_1\":-1,\"makeup_1\":0,\"face\":19,\"skin\":4,\"hair_1\":3,\"bags_1\":0,\"eyebrows_3\":3,\"lipstick_2\":0,\"ears_1\":20,\"lipstick_4\":0,\"blush_1\":0,\"eyebrows_2\":10,\"watches_2\":0,\"blemishes_1\":0,\"blemishes_2\":0,\"eyebrows_4\":9,\"age_2\":1,\"eye_color\":0,\"makeup_2\":0,\"lipstick_3\":0,\"hair_color_1\":29,\"helmet_2\":2,\"chest_2\":0,\"complexion_2\":0}'),
(12, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Lacoste', '{\"mask_2\":13,\"bproof_2\":0,\"chain_2\":0,\"moles_1\":0,\"helmet_1\":147,\"lipstick_1\":0,\"decals_1\":0,\"mask_1\":43,\"shoes_2\":7,\"makeup_4\":0,\"arms_2\":0,\"glasses_2\":4,\"bracelets_2\":0,\"beard_4\":0,\"eyebrows_1\":0,\"blush_2\":0,\"beard_3\":0,\"tshirt_1\":15,\"beard_1\":8,\"age_1\":0,\"chest_1\":0,\"sex\":0,\"pants_1\":46,\"blush_3\":0,\"bodyb_2\":0,\"arms2\":0,\"torso_1\":616,\"chain_1\":0,\"tshirt_2\":0,\"arms\":1,\"beard_2\":10,\"glasses_1\":7,\"bags_2\":0,\"torso_2\":1,\"bodyb_1\":0,\"moles_2\":0,\"hair_2\":0,\"chest_3\":0,\"pants_2\":1,\"sun_2\":0,\"sun_1\":0,\"hair_color_2\":29,\"decals_2\":0,\"shoes_1\":7,\"bracelets_1\":-1,\"bproof_1\":0,\"complexion_1\":0,\"ears_2\":3,\"makeup_3\":0,\"watches_1\":-1,\"makeup_1\":0,\"face\":19,\"skin\":4,\"hair_1\":3,\"bags_1\":0,\"eyebrows_3\":3,\"lipstick_2\":0,\"ears_1\":20,\"lipstick_4\":0,\"blush_1\":0,\"eyebrows_2\":10,\"watches_2\":0,\"blemishes_1\":0,\"blemishes_2\":0,\"eyebrows_4\":9,\"age_2\":1,\"eye_color\":0,\"makeup_2\":0,\"lipstick_3\":0,\"hair_color_1\":29,\"helmet_2\":2,\"chest_2\":0,\"complexion_2\":0}'),
(13, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'nike', '{\"mask_2\":13,\"bproof_2\":0,\"chain_2\":0,\"moles_1\":0,\"helmet_1\":147,\"lipstick_1\":0,\"decals_1\":0,\"mask_1\":43,\"shoes_2\":7,\"makeup_4\":0,\"arms_2\":0,\"glasses_2\":4,\"bracelets_2\":0,\"beard_4\":0,\"eyebrows_1\":0,\"blush_2\":0,\"beard_3\":0,\"tshirt_1\":15,\"beard_1\":8,\"age_1\":0,\"chest_1\":0,\"sex\":0,\"pants_1\":46,\"blush_3\":0,\"bodyb_2\":0,\"arms2\":0,\"torso_1\":617,\"chain_1\":0,\"tshirt_2\":0,\"arms\":1,\"beard_2\":10,\"glasses_1\":7,\"bags_2\":0,\"torso_2\":1,\"bodyb_1\":0,\"moles_2\":0,\"hair_2\":0,\"chest_3\":0,\"pants_2\":1,\"sun_2\":0,\"sun_1\":0,\"hair_color_2\":29,\"decals_2\":0,\"shoes_1\":7,\"bracelets_1\":-1,\"bproof_1\":0,\"complexion_1\":0,\"ears_2\":3,\"makeup_3\":0,\"watches_1\":-1,\"makeup_1\":0,\"face\":19,\"skin\":4,\"hair_1\":3,\"bags_1\":0,\"eyebrows_3\":3,\"lipstick_2\":0,\"ears_1\":20,\"lipstick_4\":0,\"blush_1\":0,\"eyebrows_2\":10,\"watches_2\":0,\"blemishes_1\":0,\"blemishes_2\":0,\"eyebrows_4\":9,\"age_2\":1,\"eye_color\":0,\"makeup_2\":0,\"lipstick_3\":0,\"hair_color_1\":29,\"helmet_2\":2,\"chest_2\":0,\"complexion_2\":0}'),
(14, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Ralph', '{\"mask_2\":13,\"bproof_2\":0,\"chain_2\":0,\"moles_1\":0,\"helmet_1\":147,\"lipstick_1\":0,\"decals_1\":0,\"mask_1\":43,\"shoes_2\":7,\"makeup_4\":0,\"arms_2\":0,\"glasses_2\":4,\"bracelets_2\":0,\"beard_4\":0,\"eyebrows_1\":0,\"blush_2\":0,\"beard_3\":0,\"tshirt_1\":15,\"beard_1\":8,\"age_1\":0,\"chest_1\":0,\"sex\":0,\"pants_1\":46,\"blush_3\":0,\"bodyb_2\":0,\"arms2\":0,\"torso_1\":618,\"chain_1\":0,\"tshirt_2\":0,\"arms\":26,\"beard_2\":10,\"glasses_1\":7,\"bags_2\":0,\"torso_2\":4,\"bodyb_1\":0,\"moles_2\":0,\"hair_2\":0,\"chest_3\":0,\"pants_2\":1,\"sun_2\":0,\"sun_1\":0,\"hair_color_2\":29,\"decals_2\":0,\"shoes_1\":7,\"bracelets_1\":-1,\"bproof_1\":0,\"complexion_1\":0,\"ears_2\":3,\"makeup_3\":0,\"watches_1\":-1,\"makeup_1\":0,\"face\":19,\"skin\":4,\"hair_1\":3,\"bags_1\":0,\"eyebrows_3\":3,\"lipstick_2\":0,\"ears_1\":20,\"lipstick_4\":0,\"blush_1\":0,\"eyebrows_2\":10,\"watches_2\":0,\"blemishes_1\":0,\"blemishes_2\":0,\"eyebrows_4\":9,\"age_2\":1,\"eye_color\":0,\"makeup_2\":0,\"lipstick_3\":0,\"hair_color_1\":29,\"helmet_2\":2,\"chest_2\":0,\"complexion_2\":0}'),
(15, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Nike cool', '{\"mask_2\":13,\"bproof_2\":0,\"chain_2\":0,\"moles_1\":0,\"helmet_1\":147,\"lipstick_1\":0,\"decals_1\":0,\"mask_1\":43,\"shoes_2\":9,\"makeup_4\":0,\"arms_2\":0,\"glasses_2\":4,\"bracelets_2\":0,\"beard_4\":0,\"eyebrows_1\":0,\"blush_2\":0,\"beard_3\":0,\"tshirt_1\":15,\"beard_1\":8,\"age_1\":0,\"chest_1\":0,\"sex\":0,\"pants_1\":46,\"blush_3\":0,\"bodyb_2\":0,\"arms2\":0,\"torso_1\":617,\"chain_1\":0,\"tshirt_2\":0,\"arms\":26,\"beard_2\":10,\"glasses_1\":7,\"bags_2\":0,\"torso_2\":2,\"bodyb_1\":0,\"moles_2\":0,\"hair_2\":0,\"chest_3\":0,\"pants_2\":4,\"sun_2\":0,\"sun_1\":0,\"hair_color_2\":29,\"decals_2\":0,\"shoes_1\":161,\"bracelets_1\":-1,\"bproof_1\":0,\"complexion_1\":0,\"ears_2\":3,\"makeup_3\":0,\"watches_1\":-1,\"makeup_1\":0,\"face\":19,\"skin\":4,\"hair_1\":3,\"bags_1\":0,\"eyebrows_3\":3,\"lipstick_2\":0,\"ears_1\":20,\"lipstick_4\":0,\"blush_1\":0,\"eyebrows_2\":10,\"watches_2\":0,\"blemishes_1\":0,\"blemishes_2\":0,\"eyebrows_4\":9,\"age_2\":1,\"eye_color\":0,\"makeup_2\":0,\"lipstick_3\":0,\"hair_color_1\":29,\"helmet_2\":2,\"chest_2\":0,\"complexion_2\":0}'),
(16, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Lacoste cool', '{\"mask_2\":13,\"bproof_2\":0,\"chain_2\":0,\"moles_1\":0,\"helmet_1\":147,\"lipstick_1\":0,\"decals_1\":0,\"mask_1\":43,\"shoes_2\":9,\"makeup_4\":0,\"arms_2\":0,\"glasses_2\":4,\"bracelets_2\":0,\"beard_4\":0,\"eyebrows_1\":0,\"blush_2\":0,\"beard_3\":0,\"tshirt_1\":15,\"beard_1\":8,\"age_1\":0,\"chest_1\":0,\"sex\":0,\"pants_1\":46,\"blush_3\":0,\"bodyb_2\":0,\"arms2\":0,\"torso_1\":616,\"chain_1\":0,\"tshirt_2\":0,\"arms\":26,\"beard_2\":10,\"glasses_1\":7,\"bags_2\":0,\"torso_2\":1,\"bodyb_1\":0,\"moles_2\":0,\"hair_2\":0,\"chest_3\":0,\"pants_2\":4,\"sun_2\":0,\"sun_1\":0,\"hair_color_2\":29,\"decals_2\":0,\"shoes_1\":161,\"bracelets_1\":-1,\"bproof_1\":0,\"complexion_1\":0,\"ears_2\":3,\"makeup_3\":0,\"watches_1\":-1,\"makeup_1\":0,\"face\":19,\"skin\":4,\"hair_1\":3,\"bags_1\":0,\"eyebrows_3\":3,\"lipstick_2\":0,\"ears_1\":20,\"lipstick_4\":0,\"blush_1\":0,\"eyebrows_2\":10,\"watches_2\":0,\"blemishes_1\":0,\"blemishes_2\":0,\"eyebrows_4\":9,\"age_2\":1,\"eye_color\":0,\"makeup_2\":0,\"lipstick_3\":0,\"hair_color_1\":29,\"helmet_2\":2,\"chest_2\":0,\"complexion_2\":0}'),
(17, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 'Dienst', '{\"torso_2\":7,\"beard_4\":0,\"sun_2\":0,\"bags_2\":0,\"chest_1\":0,\"tshirt_1\":15,\"lipstick_4\":0,\"decals_1\":0,\"hair_color_2\":8,\"age_2\":0,\"mask_1\":0,\"bproof_2\":0,\"bproof_1\":0,\"sex\":0,\"lipstick_1\":0,\"bags_1\":0,\"eye_color\":0,\"blemishes_2\":0,\"age_1\":0,\"skin\":0,\"beard_3\":0,\"hair_1\":50,\"eyebrows_3\":0,\"hair_color_1\":11,\"torso_1\":236,\"ears_2\":0,\"moles_2\":0,\"lipstick_3\":0,\"bodyb_1\":0,\"ears_1\":-1,\"glasses_2\":0,\"mask_2\":0,\"watches_1\":-1,\"eyebrows_4\":0,\"blemishes_1\":0,\"glasses_1\":0,\"shoes_1\":11,\"chain_2\":0,\"bracelets_2\":0,\"chest_3\":0,\"arms_2\":0,\"blush_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"sun_1\":0,\"moles_1\":0,\"tshirt_2\":0,\"hair_2\":1,\"chest_2\":0,\"bracelets_1\":-1,\"lipstick_2\":0,\"arms\":0,\"eyebrows_1\":0,\"makeup_1\":0,\"watches_2\":0,\"bodyb_2\":0,\"face\":0,\"beard_1\":0,\"chain_1\":0,\"makeup_3\":0,\"makeup_4\":0,\"blush_1\":0,\"decals_2\":0,\"makeup_2\":0,\"complexion_1\":0,\"blush_3\":0,\"pants_1\":130,\"pants_2\":0,\"shoes_2\":0,\"helmet_2\":0,\"complexion_2\":0,\"helmet_1\":3}'),
(18, '513d3360a526431df4c037ef55ec260484fa783a', 'test', '{\"bags_1\":0,\"lipstick_2\":0,\"torso_2\":0,\"helmet_2\":0,\"beard_1\":0,\"pants_2\":0,\"bproof_1\":0,\"complexion_1\":0,\"moles_1\":0,\"beard_3\":0,\"blush_3\":0,\"torso_1\":7,\"watches_1\":-1,\"glasses_2\":0,\"chain_1\":0,\"beard_2\":0,\"bodyb_1\":0,\"mask_2\":0,\"ears_1\":-1,\"age_1\":0,\"arms_2\":0,\"chest_2\":0,\"watches_2\":0,\"hair_1\":0,\"skin\":0,\"hair_2\":0,\"eyebrows_1\":0,\"bproof_2\":0,\"chest_1\":0,\"mask_1\":0,\"complexion_2\":0,\"bags_2\":0,\"tshirt_2\":0,\"age_2\":0,\"bodyb_2\":0,\"makeup_3\":0,\"sun_2\":0,\"makeup_4\":0,\"lipstick_4\":0,\"eyebrows_4\":0,\"helmet_1\":2,\"decals_2\":0,\"moles_2\":0,\"lipstick_3\":0,\"chest_3\":0,\"hair_color_1\":0,\"makeup_1\":0,\"hair_color_2\":0,\"bracelets_2\":0,\"blemishes_1\":0,\"chain_2\":0,\"sex\":0,\"blemishes_2\":0,\"decals_1\":0,\"eyebrows_3\":0,\"lipstick_1\":0,\"eyebrows_2\":0,\"face\":0,\"glasses_1\":0,\"tshirt_1\":11,\"shoes_1\":7,\"blush_2\":0,\"eye_color\":0,\"blush_1\":0,\"ears_2\":0,\"bracelets_1\":-1,\"beard_4\":0,\"shoes_2\":0,\"pants_1\":1,\"sun_1\":0,\"makeup_2\":0,\"arms\":0}'),
(19, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Fresh', '{\"moles_1\":0,\"lipstick_3\":0,\"glasses_1\":7,\"chain_2\":0,\"bracelets_2\":0,\"chest_1\":0,\"hair_2\":0,\"hair_color_2\":29,\"skin\":4,\"complexion_2\":0,\"complexion_1\":0,\"eyebrows_1\":0,\"beard_1\":10,\"face\":0,\"decals_2\":0,\"lipstick_4\":0,\"sun_2\":0,\"chest_3\":0,\"beard_3\":0,\"decals_1\":0,\"bodyb_2\":0,\"blush_2\":0,\"chain_1\":0,\"watches_1\":-1,\"age_1\":0,\"pants_2\":4,\"watches_2\":0,\"torso_2\":12,\"beard_4\":0,\"pants_1\":4,\"makeup_2\":0,\"blemishes_1\":0,\"bracelets_1\":-1,\"eyebrows_3\":0,\"shoes_1\":6,\"eyebrows_2\":0,\"tshirt_2\":8,\"helmet_1\":160,\"helmet_2\":18,\"moles_2\":0,\"blemishes_2\":0,\"makeup_4\":0,\"lipstick_1\":0,\"bproof_2\":0,\"eye_color\":0,\"blush_3\":0,\"glasses_2\":4,\"makeup_1\":0,\"chest_2\":0,\"torso_1\":491,\"sex\":0,\"beard_2\":10,\"lipstick_2\":0,\"hair_color_1\":29,\"age_2\":0,\"ears_2\":0,\"bodyb_1\":0,\"makeup_3\":0,\"sun_1\":0,\"ears_1\":-1,\"blush_1\":0,\"eyebrows_4\":0,\"arms\":0,\"hair_1\":3,\"bags_2\":0,\"mask_2\":0,\"bproof_1\":0,\"tshirt_1\":1,\"bags_1\":0,\"mask_1\":0,\"arms_2\":0,\"shoes_2\":0}'),
(20, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Fresh', '{\"moles_1\":0,\"lipstick_3\":0,\"glasses_1\":7,\"chain_2\":0,\"bracelets_2\":0,\"chest_1\":0,\"hair_2\":0,\"hair_color_2\":29,\"skin\":4,\"complexion_2\":0,\"complexion_1\":0,\"eyebrows_1\":0,\"beard_1\":10,\"face\":0,\"decals_2\":0,\"lipstick_4\":0,\"sun_2\":0,\"chest_3\":0,\"beard_3\":0,\"decals_1\":0,\"bodyb_2\":0,\"blush_2\":0,\"chain_1\":0,\"watches_1\":-1,\"age_1\":0,\"pants_2\":4,\"watches_2\":0,\"torso_2\":12,\"beard_4\":0,\"pants_1\":4,\"makeup_2\":0,\"blemishes_1\":0,\"bracelets_1\":-1,\"eyebrows_3\":0,\"shoes_1\":6,\"eyebrows_2\":0,\"tshirt_2\":8,\"helmet_1\":160,\"helmet_2\":18,\"moles_2\":0,\"blemishes_2\":0,\"makeup_4\":0,\"lipstick_1\":0,\"bproof_2\":0,\"eye_color\":0,\"blush_3\":0,\"glasses_2\":4,\"makeup_1\":0,\"chest_2\":0,\"torso_1\":491,\"sex\":0,\"beard_2\":10,\"lipstick_2\":0,\"hair_color_1\":29,\"age_2\":0,\"ears_2\":0,\"bodyb_1\":0,\"makeup_3\":0,\"sun_1\":0,\"ears_1\":-1,\"blush_1\":0,\"eyebrows_4\":0,\"arms\":20,\"hair_1\":3,\"bags_2\":0,\"mask_2\":0,\"bproof_1\":0,\"tshirt_1\":1,\"bags_1\":0,\"mask_1\":0,\"arms_2\":0,\"shoes_2\":0}'),
(21, '170c0781bf3db9b54847ee453224dfab755ad36c', 'Chilloutfit', '{\"moles_2\":0,\"skin\":2,\"blush_3\":0,\"torso_2\":2,\"age_1\":0,\"eyebrows_3\":0,\"chain_1\":0,\"bproof_2\":0,\"mask_1\":0,\"decals_2\":0,\"watches_2\":0,\"watches_1\":-1,\"eyebrows_2\":0,\"blemishes_2\":0,\"face\":0,\"bracelets_2\":0,\"chain_2\":0,\"bproof_1\":0,\"chest_1\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"decals_1\":0,\"eyebrows_4\":0,\"lipstick_3\":0,\"chest_3\":0,\"blush_2\":0,\"makeup_2\":0,\"lipstick_2\":0,\"lipstick_4\":0,\"tshirt_2\":0,\"chest_2\":0,\"shoes_1\":1,\"makeup_4\":0,\"sex\":0,\"helmet_2\":2,\"shoes_2\":1,\"beard_4\":0,\"makeup_1\":0,\"bracelets_1\":-1,\"glasses_1\":5,\"eye_color\":0,\"helmet_1\":143,\"moles_1\":0,\"torso_1\":352,\"complexion_1\":0,\"beard_3\":0,\"ears_1\":-1,\"glasses_2\":0,\"bodyb_1\":0,\"hair_1\":39,\"bodyb_2\":0,\"lipstick_1\":0,\"hair_color_2\":20,\"sun_2\":0,\"blemishes_1\":0,\"hair_2\":0,\"beard_1\":18,\"mask_2\":0,\"bags_2\":0,\"pants_1\":47,\"arms_2\":0,\"beard_2\":10,\"sun_1\":0,\"blush_1\":0,\"ears_2\":0,\"pants_2\":0,\"bags_1\":0,\"tshirt_1\":15,\"hair_color_1\":13,\"age_2\":0,\"complexion_2\":0,\"arms\":0}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ws_container_keys`
--

CREATE TABLE `ws_container_keys` (
  `id` int(11) NOT NULL,
  `key` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `claimed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `ws_container_keys`
--

INSERT INTO `ws_container_keys` (`id`, `key`, `claimed`) VALUES
(1, 'ws_x7GSHNUrLuyNosXk2Nlh', 0),
(2, 'ws_XDhpMXrglfK7tpB9cfRU', 0),
(3, 'ws_j5izvvMsg7E1jKBlng0W', 1),
(4, 'ws_KwOa6TPLADacCVIx5It3', 1),
(5, 'ws_xUSXZBOl8tBb1731zfoH', 1),
(6, 'ws_HBf7eOtk9kgt8IDtkWFz', 1),
(7, 'ws_ICzV1P0IYLMyRbNlAFSW', 1),
(8, 'ws_OHvjFrPdIGIGJOrrAMZz', 1),
(9, 'ws_yZOKrFj50T16F6nbV2A5', 1),
(10, 'ws_urXgvi7tcPbtT00mwite', 1),
(11, 'ws_R4jWJXlLCnHdgz6F2D83', 1),
(12, 'ws_n7hSRhB88mCiVkWtQwyT', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ws_ffa`
--

CREATE TABLE `ws_ffa` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `kills` float NOT NULL DEFAULT 0,
  `deaths` float NOT NULL DEFAULT 0,
  `xp` float NOT NULL DEFAULT 0,
  `inZone` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `ws_ffa`
--

INSERT INTO `ws_ffa` (`id`, `identifier`, `name`, `kills`, `deaths`, `xp`, `inZone`) VALUES
(1, '0554d1d3d0e61dcb1e0ec34e4d0ae251c2bfcfb1', 'Patrick', 2, 6, 0, 0),
(2, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'Lucullus', 3, 3, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ws_housesys`
--

CREATE TABLE `ws_housesys` (
  `id` int(11) NOT NULL,
  `owner` text NOT NULL DEFAULT 'none',
  `ownerName` text NOT NULL DEFAULT 'none',
  `interiorId` text DEFAULT 'default',
  `closed` tinyint(1) NOT NULL DEFAULT 1,
  `customName` text DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `ws_housesys`
--

INSERT INTO `ws_housesys` (`id`, `owner`, `ownerName`, `interiorId`, `closed`, `customName`) VALUES
(1, 'none', 'none', 'default', 1, 'none'),
(2, 'none', 'none', 'default', 1, 'none'),
(3, 'none', 'none', 'default', 1, 'none'),
(4, 'none', 'none', 'default', 1, 'none'),
(5, 'none', 'none', 'default', 1, 'none'),
(6, 'none', 'none', 'default', 1, 'none'),
(7, 'none', 'none', 'default', 1, 'none'),
(8, 'none', 'none', 'default', 1, 'none'),
(9, 'none', 'none', 'default', 1, 'none'),
(10, 'none', 'none', 'default', 1, 'none'),
(11, 'none', 'none', 'default', 1, 'none'),
(12, 'none', 'none', 'default', 1, 'none'),
(13, 'none', 'none', 'default', 1, 'none'),
(14, 'none', 'none', 'default', 1, 'none'),
(15, 'none', 'none', 'default', 1, 'none'),
(16, 'none', 'none', 'default', 1, 'none'),
(17, 'none', 'none', 'default', 1, 'none'),
(18, 'none', 'none', 'default', 1, 'none'),
(19, 'none', 'none', 'default', 1, 'none'),
(20, 'none', 'none', 'default', 1, 'none'),
(21, 'none', 'none', 'default', 1, 'none'),
(22, 'none', 'none', 'default', 1, 'none'),
(23, 'none', 'none', 'default', 1, 'none'),
(24, 'none', 'none', 'default', 1, 'none'),
(25, 'none', 'none', 'default', 1, 'none'),
(26, 'none', 'none', 'default', 1, 'none'),
(27, 'none', 'none', 'default', 1, 'none'),
(28, 'none', 'none', 'default', 1, 'none'),
(29, 'none', 'none', 'default', 1, 'none'),
(30, 'none', 'none', 'default', 1, 'none'),
(31, 'none', 'none', 'default', 1, 'none'),
(32, 'none', 'none', 'default', 1, 'none'),
(33, 'none', 'none', 'default', 1, 'none'),
(34, 'none', 'none', 'default', 1, 'none'),
(35, 'none', 'none', 'default', 1, 'none'),
(36, 'none', 'none', 'default', 1, 'none'),
(37, 'none', 'none', 'default', 1, 'none'),
(38, 'none', 'none', 'default', 1, 'none'),
(39, 'none', 'none', 'default', 1, 'none'),
(40, 'none', 'none', 'default', 1, 'none'),
(41, 'none', 'none', 'default', 1, 'none'),
(42, 'none', 'none', 'default', 1, 'none'),
(43, 'none', 'none', 'default', 1, 'none'),
(44, 'none', 'none', 'default', 1, 'none'),
(45, 'none', 'none', 'default', 1, 'none'),
(46, 'none', 'none', 'default', 1, 'none'),
(47, 'none', 'none', 'default', 1, 'none'),
(48, 'none', 'none', 'default', 1, 'none'),
(49, 'none', 'none', 'default', 1, 'none'),
(50, 'none', 'none', 'default', 1, 'none'),
(51, 'none', 'none', 'default', 1, 'none'),
(52, 'none', 'none', 'default', 1, 'none'),
(53, 'none', 'none', 'default', 1, 'none'),
(54, 'none', 'none', 'default', 1, 'none'),
(55, 'none', 'none', 'default', 1, 'none'),
(56, 'none', 'none', 'default', 1, 'none'),
(57, 'none', 'none', 'default', 1, 'none'),
(58, 'none', 'none', 'default', 1, 'none'),
(59, 'none', 'none', 'default', 1, 'none'),
(60, 'none', 'none', 'default', 1, 'none'),
(61, 'none', 'none', 'default', 1, 'none'),
(62, 'none', 'none', 'default', 1, 'none'),
(63, 'none', 'none', 'default', 1, 'none'),
(64, 'none', 'none', 'default', 1, 'none'),
(65, 'none', 'none', 'default', 1, 'none'),
(66, 'none', 'none', 'default', 1, 'none'),
(67, 'none', 'none', 'default', 1, 'none'),
(68, 'none', 'none', 'default', 1, 'none'),
(69, 'none', 'none', 'default', 1, 'none'),
(70, '531c0783da697172843d844c83e9cfac247a6be6', 'Peter Meier', 'modern_2', 1, 'none'),
(71, 'none', 'none', 'default', 1, 'none'),
(72, 'none', 'none', 'default', 1, 'none'),
(73, 'none', 'none', 'default', 1, 'none'),
(74, 'none', 'none', 'default', 1, 'none'),
(75, 'none', 'none', 'default', 1, 'none'),
(76, 'none', 'none', 'default', 1, 'none'),
(77, 'none', 'none', 'default', 1, 'none'),
(78, 'none', 'none', 'default', 1, 'none'),
(79, 'none', 'none', 'default', 1, 'none'),
(80, 'none', 'none', 'default', 1, 'none'),
(81, '170c0781bf3db9b54847ee453224dfab755ad36c', 'Celvin Klein', 'default', 1, 'none'),
(82, 'none', 'none', 'default', 1, 'none'),
(83, 'none', 'none', 'default', 1, 'none'),
(84, 'none', 'none', 'default', 1, 'none'),
(85, '0dbf0a03992eea8e1fa9c7912dad557216fbb93d', 'Chris Sanchez', 'default', 1, 'none'),
(86, 'none', 'none', 'default', 1, 'none'),
(87, 'none', 'none', 'default', 1, 'none'),
(88, 'none', 'none', 'default', 1, 'none'),
(89, 'none', 'none', 'default', 1, 'none'),
(90, 'none', 'none', 'default', 1, 'none'),
(91, 'none', 'none', 'default', 1, 'none'),
(92, 'none', 'none', 'default', 1, 'none'),
(93, 'none', 'none', 'default', 1, 'none'),
(94, 'none', 'none', 'default', 1, 'none'),
(95, 'none', 'none', 'default', 1, 'none'),
(96, 'none', 'none', 'default', 1, 'none'),
(97, 'none', 'none', 'default', 1, 'none'),
(98, 'none', 'none', 'default', 1, 'none'),
(99, 'none', 'none', 'default', 1, 'none'),
(100, 'none', 'none', 'default', 1, 'none'),
(101, 'none', 'none', 'default', 1, 'none'),
(102, 'none', 'none', 'default', 1, 'none'),
(103, 'none', 'none', 'default', 1, 'none'),
(104, 'none', 'none', 'default', 1, 'none'),
(105, 'none', 'none', 'default', 1, 'none'),
(106, 'none', 'none', 'default', 1, 'none'),
(107, 'none', 'none', 'default', 1, 'none'),
(108, 'none', 'none', 'default', 1, 'none'),
(109, 'none', 'none', 'default', 1, 'none'),
(110, 'none', 'none', 'default', 1, 'none'),
(111, 'none', 'none', 'default', 1, 'none'),
(112, 'none', 'none', 'default', 1, 'none'),
(113, 'none', 'none', 'default', 1, 'none'),
(114, 'none', 'none', 'default', 1, 'none'),
(115, 'none', 'none', 'default', 1, 'none'),
(116, 'none', 'none', 'default', 1, 'none'),
(117, 'none', 'none', 'default', 1, 'none'),
(118, 'none', 'none', 'default', 1, 'none'),
(119, 'none', 'none', 'default', 1, 'none'),
(120, 'none', 'none', 'default', 1, 'none'),
(121, 'none', 'none', 'default', 1, 'none'),
(122, 'none', 'none', 'default', 1, 'none'),
(123, 'none', 'none', 'default', 1, 'none'),
(124, 'none', 'none', 'default', 1, 'none'),
(125, 'none', 'none', 'default', 1, 'none'),
(126, 'none', 'none', 'default', 1, 'none'),
(127, 'none', 'none', 'default', 1, 'none'),
(128, 'none', 'none', 'default', 1, 'none'),
(129, 'none', 'none', 'default', 1, 'none'),
(130, 'none', 'none', 'default', 1, 'none'),
(131, 'none', 'none', 'default', 1, 'none'),
(132, 'none', 'none', 'default', 1, 'none'),
(133, 'none', 'none', 'default', 1, 'none'),
(134, 'none', 'none', 'default', 1, 'none'),
(135, 'none', 'none', 'default', 1, 'none'),
(136, 'none', 'none', 'default', 1, 'none'),
(137, 'none', 'none', 'default', 1, 'none'),
(138, 'none', 'none', 'default', 1, 'none'),
(139, 'none', 'none', 'default', 1, 'none'),
(140, 'none', 'none', 'default', 1, 'none'),
(141, 'none', 'none', 'default', 1, 'none'),
(142, 'none', 'none', 'default', 1, 'none'),
(143, 'none', 'none', 'default', 1, 'none'),
(144, 'none', 'none', 'default', 1, 'none'),
(145, 'none', 'none', 'default', 1, 'none'),
(146, 'none', 'none', 'default', 1, 'none'),
(147, 'none', 'none', 'default', 1, 'none'),
(148, 'none', 'none', 'default', 1, 'none'),
(149, 'none', 'none', 'default', 1, 'none'),
(150, 'none', 'none', 'default', 1, 'none'),
(151, 'none', 'none', 'default', 1, 'none'),
(152, 'none', 'none', 'default', 1, 'none'),
(153, 'none', 'none', 'default', 1, 'none'),
(154, 'none', 'none', 'default', 1, 'none'),
(155, 'none', 'none', 'default', 1, 'none'),
(156, 'none', 'none', 'default', 1, 'none'),
(157, 'none', 'none', 'default', 1, 'none'),
(158, 'none', 'none', 'default', 1, 'none'),
(159, 'none', 'none', 'default', 1, 'none'),
(160, 'none', 'none', 'default', 1, 'none'),
(161, 'none', 'none', 'default', 1, 'none'),
(162, 'none', 'none', 'default', 1, 'none'),
(163, 'none', 'none', 'default', 1, 'none'),
(164, 'none', 'none', 'default', 1, 'none'),
(165, 'none', 'none', 'default', 1, 'none'),
(166, 'none', 'none', 'default', 1, 'none'),
(167, 'none', 'none', 'default', 1, 'none'),
(168, 'none', 'none', 'default', 1, 'none'),
(169, 'none', 'none', 'default', 1, 'none'),
(170, 'none', 'none', 'default', 1, 'none'),
(171, 'none', 'none', 'default', 1, 'none'),
(172, 'none', 'none', 'default', 1, 'none'),
(173, 'none', 'none', 'default', 1, 'none'),
(174, 'e598fbbe436603d025acb703ebb6ef2fc337c1d0', 'James Blond', 'modern_6', 1, 'none');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ws_housesys_garages`
--

CREATE TABLE `ws_housesys_garages` (
  `id` int(11) NOT NULL,
  `houseId` int(11) NOT NULL,
  `vehicles` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `ws_housesys_garages`
--

INSERT INTO `ws_housesys_garages` (`id`, `houseId`, `vehicles`) VALUES
(1, 81, '[{\"empty\":false,\"plate\":\"CELVIN\",\"vehicle\":{\"modFender\":-1,\"color2\":8,\"modBackWheels\":-1,\"modFrontBumper\":-1,\"modSuspension\":-1,\"modDial\":-1,\"modHydrolic\":-1,\"modAerials\":-1,\"modDoorSpeaker\":-1,\"pearlescentColor\":134,\"engineHealth\":1000.0,\"modWindows\":-1,\"modHorns\":-1,\"modTransmission\":-1,\"modRightFender\":-1,\"modTyresBurst\":1,\"bodyHealth\":1000.0,\"modEngine\":-1,\"modFrame\":-1,\"paintType\":[0,0],\"modGrille\":-1,\"modStruts\":-1,\"modVanityPlate\":-1,\"model\":-910466076,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"plate\":\"CELVIN\",\"modAPlate\":-1,\"modXenon\":false,\"neonColor\":[255,0,255],\"modLivery\":-1,\"color1\":8,\"wheels\":0,\"modSmokeEnabled\":false,\"modTrimA\":-1,\"plateIndex\":0,\"modTurbo\":false,\"modRoof\":-1,\"dshcolor\":0,\"dirtLevel\":4.0,\"tyreSmokeColor\":[255,255,255],\"modSeats\":-1,\"color3\":[51,51,51],\"modWheelVariat\":false,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"windowTint\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"extras\":{\"3\":false,\"4\":true,\"5\":false,\"1\":false},\"drift\":false,\"fuelLevel\":65.0,\"xenonColor\":255,\"color4\":[51,51,51],\"modSpeakers\":-1,\"modTrunk\":-1,\"wheelColor\":156,\"ColorType\":[0,0],\"modSideSkirt\":-1,\"intcolor\":0,\"modSpoilers\":-1,\"modHood\":-1,\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modArchCover\":-1,\"modBrakes\":-1,\"modTrimB\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modLivery2\":-1}},{\"empty\":true,\"plate\":\"\",\"vehicle\":[]},{\"empty\":true,\"plate\":\"\",\"vehicle\":[]},{\"empty\":true,\"plate\":\"\",\"vehicle\":[]},{\"empty\":true,\"plate\":\"\",\"vehicle\":[]},{\"empty\":true,\"plate\":\"\",\"vehicle\":[]},{\"empty\":true,\"plate\":\"\",\"vehicle\":[]},{\"empty\":true,\"plate\":\"\",\"vehicle\":[]},{\"empty\":true,\"plate\":\"\",\"vehicle\":[]},{\"empty\":true,\"plate\":\"\",\"vehicle\":[]}]'),
(2, 174, '[{\"vehicle\":[],\"empty\":true,\"plate\":\"\"},{\"vehicle\":[],\"empty\":true,\"plate\":\"\"},{\"vehicle\":[],\"empty\":true,\"plate\":\"\"},{\"vehicle\":[],\"empty\":true,\"plate\":\"\"},{\"vehicle\":[],\"empty\":true,\"plate\":\"\"},{\"vehicle\":[],\"empty\":true,\"plate\":\"\"},{\"vehicle\":[],\"empty\":true,\"plate\":\"\"},{\"vehicle\":[],\"empty\":true,\"plate\":\"\"},{\"vehicle\":[],\"empty\":true,\"plate\":\"\"},{\"vehicle\":[],\"empty\":true,\"plate\":\"\"}]');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ws_housesys_keys`
--

CREATE TABLE `ws_housesys_keys` (
  `id` int(11) NOT NULL,
  `identifier` text NOT NULL,
  `name` text NOT NULL,
  `houseId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ws_housesys_warehouse`
--

CREATE TABLE `ws_housesys_warehouse` (
  `id` int(11) NOT NULL,
  `houseId` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indizes für die Tabelle `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Indizes für die Tabelle `banking`
--
ALTER TABLE `banking`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `bank_history`
--
ALTER TABLE `bank_history`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `crafting_recipes`
--
ALTER TABLE `crafting_recipes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indizes für die Tabelle `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indizes für die Tabelle `doorscreator_buildings`
--
ALTER TABLE `doorscreator_buildings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indizes für die Tabelle `doorscreator_doors`
--
ALTER TABLE `doorscreator_doors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indizes für die Tabelle `drugs_fields`
--
ALTER TABLE `drugs_fields`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indizes für die Tabelle `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `harvestable_items`
--
ALTER TABLE `harvestable_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indizes für die Tabelle `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `jobs_armories`
--
ALTER TABLE `jobs_armories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`,`marker_id`,`identifier`) USING BTREE;

--
-- Indizes für die Tabelle `jobs_data`
--
ALTER TABLE `jobs_data`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indizes für die Tabelle `jobs_garages`
--
ALTER TABLE `jobs_garages`
  ADD PRIMARY KEY (`vehicle_id`) USING BTREE,
  ADD KEY `identifier` (`identifier`,`marker_id`) USING BTREE;

--
-- Indizes für die Tabelle `jobs_shops`
--
ALTER TABLE `jobs_shops`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `marker_id` (`marker_id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indizes für die Tabelle `jobs_wardrobes`
--
ALTER TABLE `jobs_wardrobes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `identifier` (`identifier`) USING BTREE;

--
-- Indizes für die Tabelle `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `laboratories`
--
ALTER TABLE `laboratories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indizes für die Tabelle `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indizes für die Tabelle `myfuel_balance`
--
ALTER TABLE `myfuel_balance`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `idx_crateddate` (`createddate`);

--
-- Indizes für die Tabelle `myfuel_classes`
--
ALTER TABLE `myfuel_classes`
  ADD PRIMARY KEY (`classname`,`fueltype`),
  ADD UNIQUE KEY `ui_UNIQUE` (`uid`);

--
-- Indizes für die Tabelle `myfuel_gas_stations`
--
ALTER TABLE `myfuel_gas_stations`
  ADD PRIMARY KEY (`posX`,`posY`,`posZ`),
  ADD UNIQUE KEY `uid_UNIQUE` (`uid`);

--
-- Indizes für die Tabelle `myfuel_income_expenses`
--
ALTER TABLE `myfuel_income_expenses`
  ADD PRIMARY KEY (`gas_station_id`);

--
-- Indizes für die Tabelle `myfuel_stocks`
--
ALTER TABLE `myfuel_stocks`
  ADD PRIMARY KEY (`gas_station_id`,`fuel_type`);

--
-- Indizes für die Tabelle `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indizes für die Tabelle `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indizes für die Tabelle `roadshop_accounts`
--
ALTER TABLE `roadshop_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `mail` (`mail`) USING BTREE;

--
-- Indizes für die Tabelle `roadshop_banktransfer`
--
ALTER TABLE `roadshop_banktransfer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_calls`
--
ALTER TABLE `roadshop_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_camera`
--
ALTER TABLE `roadshop_camera`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indizes für die Tabelle `roadshop_contacts`
--
ALTER TABLE `roadshop_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_darkchat_groups`
--
ALTER TABLE `roadshop_darkchat_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_darkchat_group_messages`
--
ALTER TABLE `roadshop_darkchat_group_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_data`
--
ALTER TABLE `roadshop_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `roadshop_group_messages`
--
ALTER TABLE `roadshop_group_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_instagram_accounts`
--
ALTER TABLE `roadshop_instagram_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indizes für die Tabelle `roadshop_instagram_comment`
--
ALTER TABLE `roadshop_instagram_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_roadshop_instagram_comment_roadshop_instagram_accounts` (`authorId`),
  ADD KEY `FK_roadshop_instagram_comment_roadshop_instagram_posts` (`postid`);

--
-- Indizes für die Tabelle `roadshop_instagram_likes`
--
ALTER TABLE `roadshop_instagram_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_roadshop_instagram_likes_roadshop_instagram_accounts` (`authorId`),
  ADD KEY `FK_roadshop_instagram_likes_roadshop_instagram_posts` (`post`);

--
-- Indizes für die Tabelle `roadshop_instagram_posts`
--
ALTER TABLE `roadshop_instagram_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_roadshop_instagram_posts_roadshop_instagram_accounts` (`authorId`);

--
-- Indizes für die Tabelle `roadshop_instagram_storys`
--
ALTER TABLE `roadshop_instagram_storys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_roadshop_instagram_accounts` (`authorId`);

--
-- Indizes für die Tabelle `roadshop_jobs`
--
ALTER TABLE `roadshop_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_livestream_accounts`
--
ALTER TABLE `roadshop_livestream_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indizes für die Tabelle `roadshop_mails`
--
ALTER TABLE `roadshop_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_messages`
--
ALTER TABLE `roadshop_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_messages_groups_message`
--
ALTER TABLE `roadshop_messages_groups_message`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_music_playlists`
--
ALTER TABLE `roadshop_music_playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_music_playlists_songs`
--
ALTER TABLE `roadshop_music_playlists_songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlistId` (`playlistId`);

--
-- Indizes für die Tabelle `roadshop_notes`
--
ALTER TABLE `roadshop_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_notifications`
--
ALTER TABLE `roadshop_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_service_messages`
--
ALTER TABLE `roadshop_service_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_tellonym_accounts`
--
ALTER TABLE `roadshop_tellonym_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Indizes für die Tabelle `roadshop_tellonym_tells`
--
ALTER TABLE `roadshop_tellonym_tells`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receiverId` (`receiverId`);

--
-- Indizes für die Tabelle `roadshop_tellonym_tells_answered`
--
ALTER TABLE `roadshop_tellonym_tells_answered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__roadshop_tellonym_accounts` (`userId`);

--
-- Indizes für die Tabelle `roadshop_twitter_accounts`
--
ALTER TABLE `roadshop_twitter_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indizes für die Tabelle `roadshop_twitter_likes`
--
ALTER TABLE `roadshop_twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_roadshop_twitter_likes_roadshop_twitter_accounts` (`authorId`),
  ADD KEY `FK_roadshop_twitter_likes_roadshop_twitter_tweets` (`tweetId`);

--
-- Indizes für die Tabelle `roadshop_twitter_tweets`
--
ALTER TABLE `roadshop_twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_roadshop_twitter_tweets_roadshop_twitter_accounts` (`authorId`);

--
-- Indizes für die Tabelle `roadshop_voice_memos`
--
ALTER TABLE `roadshop_voice_memos`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roadshop_yellowpages`
--
ALTER TABLE `roadshop_yellowpages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `robberies_creator_cargo_robberies`
--
ALTER TABLE `robberies_creator_cargo_robberies`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indizes für die Tabelle `robberies_creator_heists`
--
ALTER TABLE `robberies_creator_heists`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indizes für die Tabelle `robberies_creator_plannings`
--
ALTER TABLE `robberies_creator_plannings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE,
  ADD KEY `cargo_robbery_id` (`cargo_robbery_id`) USING BTREE;

--
-- Indizes für die Tabelle `saved_documents`
--
ALTER TABLE `saved_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indizes für die Tabelle `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`identifier`);

--
-- Indizes für die Tabelle `ws_clotheshop`
--
ALTER TABLE `ws_clotheshop`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ws_container_keys`
--
ALTER TABLE `ws_container_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ws_ffa`
--
ALTER TABLE `ws_ffa`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ws_housesys`
--
ALTER TABLE `ws_housesys`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ws_housesys_garages`
--
ALTER TABLE `ws_housesys_garages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ws_housesys_keys`
--
ALTER TABLE `ws_housesys_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ws_housesys_warehouse`
--
ALTER TABLE `ws_housesys_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT für Tabelle `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `banking`
--
ALTER TABLE `banking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `bank_history`
--
ALTER TABLE `bank_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT für Tabelle `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `crafting_recipes`
--
ALTER TABLE `crafting_recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT für Tabelle `doorscreator_buildings`
--
ALTER TABLE `doorscreator_buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `doorscreator_doors`
--
ALTER TABLE `doorscreator_doors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT für Tabelle `drugs_fields`
--
ALTER TABLE `drugs_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT für Tabelle `harvestable_items`
--
ALTER TABLE `harvestable_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `jobs_armories`
--
ALTER TABLE `jobs_armories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `jobs_data`
--
ALTER TABLE `jobs_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT für Tabelle `jobs_garages`
--
ALTER TABLE `jobs_garages`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT für Tabelle `jobs_shops`
--
ALTER TABLE `jobs_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `jobs_wardrobes`
--
ALTER TABLE `jobs_wardrobes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT für Tabelle `laboratories`
--
ALTER TABLE `laboratories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `myfuel_balance`
--
ALTER TABLE `myfuel_balance`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT für Tabelle `myfuel_classes`
--
ALTER TABLE `myfuel_classes`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `myfuel_gas_stations`
--
ALTER TABLE `myfuel_gas_stations`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT für Tabelle `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT für Tabelle `roadshop_accounts`
--
ALTER TABLE `roadshop_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `roadshop_banktransfer`
--
ALTER TABLE `roadshop_banktransfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `roadshop_calls`
--
ALTER TABLE `roadshop_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `roadshop_camera`
--
ALTER TABLE `roadshop_camera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `roadshop_contacts`
--
ALTER TABLE `roadshop_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `roadshop_darkchat_groups`
--
ALTER TABLE `roadshop_darkchat_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_darkchat_group_messages`
--
ALTER TABLE `roadshop_darkchat_group_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_data`
--
ALTER TABLE `roadshop_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT für Tabelle `roadshop_group_messages`
--
ALTER TABLE `roadshop_group_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_instagram_accounts`
--
ALTER TABLE `roadshop_instagram_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_instagram_comment`
--
ALTER TABLE `roadshop_instagram_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_instagram_likes`
--
ALTER TABLE `roadshop_instagram_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_instagram_posts`
--
ALTER TABLE `roadshop_instagram_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_instagram_storys`
--
ALTER TABLE `roadshop_instagram_storys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_jobs`
--
ALTER TABLE `roadshop_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_livestream_accounts`
--
ALTER TABLE `roadshop_livestream_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_mails`
--
ALTER TABLE `roadshop_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_messages`
--
ALTER TABLE `roadshop_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT für Tabelle `roadshop_messages_groups_message`
--
ALTER TABLE `roadshop_messages_groups_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_music_playlists`
--
ALTER TABLE `roadshop_music_playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_music_playlists_songs`
--
ALTER TABLE `roadshop_music_playlists_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_notes`
--
ALTER TABLE `roadshop_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_notifications`
--
ALTER TABLE `roadshop_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_service_messages`
--
ALTER TABLE `roadshop_service_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `roadshop_tellonym_accounts`
--
ALTER TABLE `roadshop_tellonym_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_tellonym_tells`
--
ALTER TABLE `roadshop_tellonym_tells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_tellonym_tells_answered`
--
ALTER TABLE `roadshop_tellonym_tells_answered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_twitter_accounts`
--
ALTER TABLE `roadshop_twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_twitter_likes`
--
ALTER TABLE `roadshop_twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_twitter_tweets`
--
ALTER TABLE `roadshop_twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_voice_memos`
--
ALTER TABLE `roadshop_voice_memos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `roadshop_yellowpages`
--
ALTER TABLE `roadshop_yellowpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `robberies_creator_cargo_robberies`
--
ALTER TABLE `robberies_creator_cargo_robberies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `robberies_creator_heists`
--
ALTER TABLE `robberies_creator_heists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `robberies_creator_plannings`
--
ALTER TABLE `robberies_creator_plannings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `saved_documents`
--
ALTER TABLE `saved_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT für Tabelle `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ws_clotheshop`
--
ALTER TABLE `ws_clotheshop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT für Tabelle `ws_container_keys`
--
ALTER TABLE `ws_container_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `ws_ffa`
--
ALTER TABLE `ws_ffa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `ws_housesys_garages`
--
ALTER TABLE `ws_housesys_garages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `ws_housesys_keys`
--
ALTER TABLE `ws_housesys_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ws_housesys_warehouse`
--
ALTER TABLE `ws_housesys_warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `roadshop_instagram_comment`
--
ALTER TABLE `roadshop_instagram_comment`
  ADD CONSTRAINT `FK_roadshop_instagram_comment_roadshop_instagram_accounts` FOREIGN KEY (`authorId`) REFERENCES `roadshop_instagram_accounts` (`id`),
  ADD CONSTRAINT `FK_roadshop_instagram_comment_roadshop_instagram_posts` FOREIGN KEY (`postid`) REFERENCES `roadshop_instagram_posts` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `roadshop_instagram_likes`
--
ALTER TABLE `roadshop_instagram_likes`
  ADD CONSTRAINT `FK_roadshop_instagram_likes_roadshop_instagram_accounts` FOREIGN KEY (`authorId`) REFERENCES `roadshop_instagram_accounts` (`id`),
  ADD CONSTRAINT `FK_roadshop_instagram_likes_roadshop_instagram_posts` FOREIGN KEY (`post`) REFERENCES `roadshop_instagram_posts` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `roadshop_instagram_posts`
--
ALTER TABLE `roadshop_instagram_posts`
  ADD CONSTRAINT `FK_roadshop_instagram_posts_roadshop_instagram_accounts` FOREIGN KEY (`authorId`) REFERENCES `roadshop_instagram_accounts` (`id`);

--
-- Constraints der Tabelle `roadshop_instagram_storys`
--
ALTER TABLE `roadshop_instagram_storys`
  ADD CONSTRAINT `FK_roadshop_instagram_accounts` FOREIGN KEY (`authorId`) REFERENCES `roadshop_instagram_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `roadshop_music_playlists_songs`
--
ALTER TABLE `roadshop_music_playlists_songs`
  ADD CONSTRAINT `FK__roadshop_music_playlists` FOREIGN KEY (`playlistId`) REFERENCES `roadshop_music_playlists` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `roadshop_tellonym_tells`
--
ALTER TABLE `roadshop_tellonym_tells`
  ADD CONSTRAINT `FK_roadshop_tellonym_tells_roadshop_tellonym_accounts` FOREIGN KEY (`receiverId`) REFERENCES `roadshop_tellonym_accounts` (`id`);

--
-- Constraints der Tabelle `roadshop_tellonym_tells_answered`
--
ALTER TABLE `roadshop_tellonym_tells_answered`
  ADD CONSTRAINT `FK__roadshop_tellonym_accounts` FOREIGN KEY (`userId`) REFERENCES `roadshop_tellonym_accounts` (`id`);

--
-- Constraints der Tabelle `roadshop_twitter_likes`
--
ALTER TABLE `roadshop_twitter_likes`
  ADD CONSTRAINT `FK_roadshop_twitter_likes_roadshop_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `roadshop_twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_roadshop_twitter_likes_roadshop_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `roadshop_twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `roadshop_twitter_tweets`
--
ALTER TABLE `roadshop_twitter_tweets`
  ADD CONSTRAINT `FK_roadshop_twitter_tweets_roadshop_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `roadshop_twitter_accounts` (`id`);

--
-- Constraints der Tabelle `robberies_creator_plannings`
--
ALTER TABLE `robberies_creator_plannings`
  ADD CONSTRAINT `cargo_robbery_id` FOREIGN KEY (`cargo_robbery_id`) REFERENCES `robberies_creator_cargo_robberies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
