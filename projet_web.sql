-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 29 déc. 2021 à 21:59
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_web`
--

-- --------------------------------------------------------

--
-- Structure de la table `anomalie`
--

DROP TABLE IF EXISTS `anomalie`;
CREATE TABLE IF NOT EXISTS `anomalie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ressource` int(11) NOT NULL,
  `description` varchar(30) NOT NULL,
  `id_user` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `anomalie`
--

INSERT INTO `anomalie` (`id`, `id_ressource`, `description`, `id_user`) VALUES
(32, 1, 'Gel hydroalcoolique ', 'b@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `localisation`
--

DROP TABLE IF EXISTS `localisation`;
CREATE TABLE IF NOT EXISTS `localisation` (
  `id_localisation` int(11) NOT NULL AUTO_INCREMENT,
  `lieu` varchar(50) NOT NULL,
  PRIMARY KEY (`id_localisation`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `localisation`
--

INSERT INTO `localisation` (`id_localisation`, `lieu`) VALUES
(1, 'U2.2.35'),
(3, 'U2.2.40'),
(4, 'U2.2.41');

-- --------------------------------------------------------

--
-- Structure de la table `ressource`
--

DROP TABLE IF EXISTS `ressource`;
CREATE TABLE IF NOT EXISTS `ressource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `URL` varchar(50) NOT NULL,
  `localisation` varchar(40) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ressource`
--

INSERT INTO `ressource` (`id`, `description`, `URL`, `localisation`, `responsable`) VALUES
(1, 'Gel hydroalcoolique', 'http', 'U2.2.50', 'b@gmail.com'),
(55, 'datashow', 'http', 'U2.2.40', 'b@gmail.com'),
(56, 'datashow', 'http', 'U2.2.35', 'b@gmail.com'),
(57, 'papier', 'http', 'U2.2.41', 'b@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `login` varchar(50) NOT NULL,
  `mot_de_passe` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`login`, `mot_de_passe`, `role`) VALUES
('admin@gmail.com', 'admin', 'administrateur'),
('a@gmail.com', 'a', 'technicien'),
('b@gmail.com', 'b', 'responsable informatique'),
('c@gmail.com', 'c', 'responsable hygienique');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
