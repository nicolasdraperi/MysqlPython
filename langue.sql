-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 27 fév. 2024 à 16:40
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pythonbdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `langue`
--

DROP TABLE IF EXISTS `langue`;
CREATE TABLE IF NOT EXISTS `langue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `level` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `langue`
--

INSERT INTO `langue` (`id`, `nom`, `date`, `level`) VALUES
(2, 'test', '1999-05-05', 1),
(12, 'test', '1999-05-05', 1),
(11, 'test', '1999-05-05', 1),
(5, 'test', '1999-05-05', 1),
(6, 'test', '1999-05-05', 1),
(7, 'test', '1999-05-05', 1),
(8, 'test', '1999-05-05', 1),
(9, 'test', '1999-05-05', 1),
(10, 'test', '1999-05-05', 1),
(13, 'test', '1999-05-05', 1),
(14, 'test', '1999-05-05', 1),
(15, 'test', '1999-05-05', 1),
(16, 'test', '1999-05-05', 1),
(17, 'test', '1999-05-05', 1),
(18, 'test', '1999-05-05', 1),
(19, 'test', '1999-05-05', 1),
(20, 'test', '1999-05-05', 1),
(21, 'test', '1999-05-05', 1),
(22, 'test', '1999-05-05', 1),
(23, 'test', '1999-05-05', 1),
(24, 'test', '1999-05-05', 1),
(25, 'test', '1999-05-05', 1),
(26, 'test', '1999-05-05', 1),
(27, 'test', '1999-05-05', 1),
(28, 'test', '1999-05-05', 1),
(29, 'test', '1999-05-05', 1),
(30, 'test', '1999-05-05', 1),
(31, 'test', '1999-05-05', 1),
(32, 'test', '1999-05-05', 1),
(33, 'test', '1999-05-05', 1),
(34, 'test', '1999-05-05', 1),
(35, 'test', '1999-05-05', 1),
(36, 'test', '1999-05-05', 1),
(37, 'test', '1999-05-05', 1),
(38, 'test', '1999-05-05', 1),
(39, 'test', '1999-05-05', 1),
(40, 'test', '1999-05-05', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
