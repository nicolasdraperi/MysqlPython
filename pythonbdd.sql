-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 27 fév. 2024 à 18:25
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
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `langue`
--

INSERT INTO `langue` (`id`, `nom`, `date`, `level`) VALUES
(42, 'bob', '1999-05-09', 3),
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
(39, 'PHP', '1999-12-25', 2);

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(535) NOT NULL,
  `log_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `log`
--

INSERT INTO `log` (`id`, `message`, `log_date`) VALUES
(1, 'henry a ajouté le language numéro 4 dans la table language', '0000-00-00'),
(2, 'test a ajouté le language henry dans la table language', '0000-00-00'),
(3, 'test a ajouté le language henry dans la table language', '0000-00-00'),
(4, 'test a ajouté le language henry dans la table language', '0000-00-00'),
(5, 'test a ajouté le language henry dans la table language', '0000-00-00'),
(6, 'test a ajouté le language henry dans la table language', '0000-00-00'),
(7, 'test a ajouté le language henry dans la table language', '0000-00-00'),
(8, 'test a ajouté le language henry dans la table language', '0000-00-00'),
(9, 'test a ajouté le language henry dans la table language', '0000-00-00'),
(10, 'test a ajouté le language henry dans la table language', '0000-00-00'),
(11, 'test a ajouté le language henry dans la table language', '0000-00-00'),
(12, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(13, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(14, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(15, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(16, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(17, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(18, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(19, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(20, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(21, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(22, 'henry a modifié le language julien dans la table language', '0000-00-00'),
(23, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(24, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(25, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(26, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(27, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(28, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(29, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(30, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(31, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(32, 'henry a ajouté le language test dans la table language', '0000-00-00'),
(33, 'henry a modifié le language julien dans la table language', '0000-00-00'),
(34, 'julien a supprimé le language numéro 1 dans la table language', '0000-00-00'),
(35, 'julien a supprimé le language numéro 2 dans la table language', '2024-02-27'),
(36, 'julien a ajouté le language 12 dans la table language', '2024-02-27'),
(37, 'julien a supprimé le language numéro 11 dans la table language', '2024-02-27'),
(38, 'julien a supprimé le language numéro 5 dans la table language', '2024-02-27'),
(39, 'julien a supprimé le language numéro 6 dans la table language', '2024-02-27'),
(40, 'julien a supprimé le language numéro 7 dans la table language', '2024-02-27'),
(41, 'julien a supprimé le language numéro 8 dans la table language', '2024-02-27'),
(42, 'julien a ajouté le language js dans la table language', '2024-02-27'),
(43, 'julien a modifié le language bob dans la table language', '2024-02-27'),
(44, 'julien a supprimé le language numéro 40 dans la table language', '2024-02-27'),
(45, 'julien a modifié le language PHP dans la table language', '2024-02-27');

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
