-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 08 maj 2015 kl 14:09
-- Serverversion: 5.6.24
-- PHP-version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `blomstermala rockfestival`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `anstalld`
--

CREATE TABLE IF NOT EXISTS `anstalld` (
  `AnstallningsID` int(4) NOT NULL,
  `Namn` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `Personnr` varchar(12) COLLATE utf8_swedish_ci NOT NULL,
  `Telefonnr` varchar(12) COLLATE utf8_swedish_ci NOT NULL,
  `Kontaktperson` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `band`
--

CREATE TABLE IF NOT EXISTS `band` (
  `Bandnamn` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `Genre` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `Ursprungsland` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `Kontaktperson` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `består av`
--

CREATE TABLE IF NOT EXISTS `består av` (
  `Band` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `MedlemsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `medlemmar`
--

CREATE TABLE IF NOT EXISTS `medlemmar` (
  `MedlemsID` int(11) NOT NULL,
  `Namn` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `Info` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `scen`
--

CREATE TABLE IF NOT EXISTS `scen` (
  `Scennamn` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `Plats` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `Storlek` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `scenansvarig`
--

CREATE TABLE IF NOT EXISTS `scenansvarig` (
  `AnstID` int(4) NOT NULL,
  `Scen` int(11) NOT NULL,
  `Arbetspass` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `schema`
--

CREATE TABLE IF NOT EXISTS `schema` (
  `Band` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `Scen` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `Tidpunkt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `anstalld`
--
ALTER TABLE `anstalld`
  ADD PRIMARY KEY (`AnstallningsID`);

--
-- Index för tabell `band`
--
ALTER TABLE `band`
  ADD PRIMARY KEY (`Bandnamn`);

--
-- Index för tabell `består av`
--
ALTER TABLE `består av`
  ADD PRIMARY KEY (`MedlemsID`,`Band`);

--
-- Index för tabell `medlemmar`
--
ALTER TABLE `medlemmar`
  ADD PRIMARY KEY (`MedlemsID`);

--
-- Index för tabell `scen`
--
ALTER TABLE `scen`
  ADD PRIMARY KEY (`Scennamn`);

--
-- Index för tabell `scenansvarig`
--
ALTER TABLE `scenansvarig`
  ADD PRIMARY KEY (`AnstID`,`Scen`);

--
-- Index för tabell `schema`
--
ALTER TABLE `schema`
  ADD PRIMARY KEY (`Band`,`Scen`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `anstalld`
--
ALTER TABLE `anstalld`
  MODIFY `AnstallningsID` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `består av`
--
ALTER TABLE `består av`
  MODIFY `MedlemsID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `medlemmar`
--
ALTER TABLE `medlemmar`
  MODIFY `MedlemsID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `scenansvarig`
--
ALTER TABLE `scenansvarig`
  MODIFY `AnstID` int(4) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
