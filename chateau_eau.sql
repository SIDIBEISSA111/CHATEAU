-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 30 nov. 2024 à 21:42
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chateau_eau`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

DROP TABLE IF EXISTS `abonnement`;
CREATE TABLE IF NOT EXISTS `abonnement` (
  `id_abmt` int NOT NULL AUTO_INCREMENT,
  `date_abmt` date NOT NULL,
  `montant_abmt` int NOT NULL,
  `id_client` int NOT NULL,
  PRIMARY KEY (`id_abmt`),
  KEY `id_client` (`id_client`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `idfact` int NOT NULL AUTO_INCREMENT,
  `date_fact` datetime(6) NOT NULL,
  `ancn_index` int NOT NULL,
  `nveau_index` int NOT NULL,
  `mtnt_fact` int NOT NULL,
  `idclient` int NOT NULL,
  PRIMARY KEY (`idfact`),
  KEY `idclient` (`idclient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payement`
--

DROP TABLE IF EXISTS `payement`;
CREATE TABLE IF NOT EXISTS `payement` (
  `id_pay` int NOT NULL AUTO_INCREMENT,
  `date_pay` datetime(6) NOT NULL,
  `mtnt_pay` int NOT NULL,
  `idfact` int NOT NULL,
  PRIMARY KEY (`id_pay`),
  KEY `idfact` (`idfact`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_util` int NOT NULL AUTO_INCREMENT,
  `nom` int NOT NULL,
  `prenom` int NOT NULL,
  `contact` int NOT NULL,
  `email` varchar(60) NOT NULL,
  `mot de passe` int NOT NULL,
  `id_admin` int NOT NULL,
  `role` enum('admin','client') NOT NULL,
  PRIMARY KEY (`id_util`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
