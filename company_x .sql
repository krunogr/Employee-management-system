-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Računalo: 127.0.0.1
-- Vrijeme generiranja: Sij 03, 2015 u 06:28 PM
-- Verzija poslužitelja: 5.5.27
-- PHP verzija: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza podataka: `company_x`
--

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `years_of_experience` int(11) NOT NULL,
  `department` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Izbacivanje podataka za tablicu `employees`
--

INSERT INTO `employees` (`id`, `name`, `surname`, `years_of_experience`, `department`) VALUES
(2, 'Rene', 'Shall', 12, 'Sales'),
(3, 'Alberto', 'Reininger', 2, 'Marketing'),
(4, 'Monica', 'Leone', 4, 'Human Resources'),
(5, 'Hugo', 'Filipe', 8, 'Financial'),
(6, 'Roger', 'Silva', 5, 'IT'),
(17, 'Sergio', 'Einen', 7, 'IT'),
(18, 'Alia', 'Omar', 9, 'Marketing'),
(19, 'Pablo', 'Mirran', 7, 'Human Resources'),
(20, 'Pamella', 'Rocky', 2, 'IT'),
(21, 'Rachael', 'Tunner', 1, 'IT'),
(22, 'Milana', 'Peterson', 1, 'IT');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
