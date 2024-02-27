-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 27 fév. 2024 à 16:45
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

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(535) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `log`
--

INSERT INTO `log` (`id`, `message`) VALUES
(1, 'henry a ajouté le language numéro 4 dans la table language'),
(2, 'test a ajouté le language henry dans la table language'),
(3, 'test a ajouté le language henry dans la table language'),
(4, 'test a ajouté le language henry dans la table language'),
(5, 'test a ajouté le language henry dans la table language'),
(6, 'test a ajouté le language henry dans la table language'),
(7, 'test a ajouté le language henry dans la table language'),
(8, 'test a ajouté le language henry dans la table language'),
(9, 'test a ajouté le language henry dans la table language'),
(10, 'test a ajouté le language henry dans la table language'),
(11, 'test a ajouté le language henry dans la table language'),
(12, 'henry a ajouté le language test dans la table language'),
(13, 'henry a ajouté le language test dans la table language'),
(14, 'henry a ajouté le language test dans la table language'),
(15, 'henry a ajouté le language test dans la table language'),
(16, 'henry a ajouté le language test dans la table language'),
(17, 'henry a ajouté le language test dans la table language'),
(18, 'henry a ajouté le language test dans la table language'),
(19, 'henry a ajouté le language test dans la table language'),
(20, 'henry a ajouté le language test dans la table language'),
(21, 'henry a ajouté le language test dans la table language'),
(22, 'henry a modifié le language julien dans la table language'),
(23, 'henry a ajouté le language test dans la table language'),
(24, 'henry a ajouté le language test dans la table language'),
(25, 'henry a ajouté le language test dans la table language'),
(26, 'henry a ajouté le language test dans la table language'),
(27, 'henry a ajouté le language test dans la table language'),
(28, 'henry a ajouté le language test dans la table language'),
(29, 'henry a ajouté le language test dans la table language'),
(30, 'henry a ajouté le language test dans la table language'),
(31, 'henry a ajouté le language test dans la table language'),
(32, 'henry a ajouté le language test dans la table language'),
(33, 'henry a modifié le language julien dans la table language'),
(34, 'julien a supprimé le language numéro 1 dans la table language');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`) VALUES
(1, 'henry'),
(2, 'julien');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
