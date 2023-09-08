-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 07 sep. 2023 à 15:11
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
-- Base de données : `commerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `Num_Client` int NOT NULL,
  `Nom_Client` varchar(40) NOT NULL,
  `Adresse_Client` varchar(60) NOT NULL,
  PRIMARY KEY (`Num_Client`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `Num_Commande` int NOT NULL,
  `Date_Commande` date NOT NULL,
  `Montant_Commande` double NOT NULL,
  `Num_Client` int NOT NULL,
  PRIMARY KEY (`Num_Commande`),
  KEY `Num_Client` (`Num_Client`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `detail_commande`
--

DROP TABLE IF EXISTS `detail_commande`;
CREATE TABLE IF NOT EXISTS `detail_commande` (
  `Num_Commande` int NOT NULL,
  `Num_Produit` int NOT NULL,
  `Quantite_cde` int NOT NULL,
  PRIMARY KEY (`Num_Commande`,`Num_Produit`),
  KEY `Num_Produit` (`Num_Produit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `Num_Produit` int NOT NULL,
  `Nom_Produit` varchar(40) NOT NULL,
  `Prix_Unitaire` double NOT NULL,
  PRIMARY KEY (`Num_Produit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
