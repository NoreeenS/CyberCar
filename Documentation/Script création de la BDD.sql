-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2022 at 10:14 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cybercar`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(5) DEFAULT NULL,
  `prénom` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `noTel` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `prénom`, `nom`, `adresse`, `noTel`, `email`) VALUES
(NULL, 'Tom', 'Cat', 'Phoenix', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employées`
--

CREATE TABLE `employées` (
  `idEmp` int(3) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Adresse` varchar(80) NOT NULL,
  `Telephone` varchar(15) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Fonction` varchar(50) NOT NULL,
  `Civilite` varchar(15) NOT NULL,
  `SituationConjugale` varchar(15) NOT NULL,
  `NbrEnfant` int(20) NOT NULL,
  `AntecedentMedical` varchar(50) NOT NULL,
  `DateEmbauche` varchar(50) NOT NULL,
  `Salaire` double NOT NULL,
  `CongeRestant` varchar(50) NOT NULL,
  `DateFinContrat` varchar(50) NOT NULL,
  `motDePasse` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employées`
--

INSERT INTO `employées` (`idEmp`, `Nom`, `Prenom`, `Adresse`, `Telephone`, `Mail`, `Fonction`, `Civilite`, `SituationConjugale`, `NbrEnfant`, `AntecedentMedical`, `DateEmbauche`, `Salaire`, `CongeRestant`, `DateFinContrat`, `motDePasse`) VALUES
(1, 'RAKOTONDRAMANANA', 'Lafatra', 'Sodnac', '0057785672', 'Lafatra@gmail.com', 'Admin', 'Homme', 'Celibat', 0, 'Aucun', '1970-01-01', 25000, '30', '1970-01-01', ''),
(2, 'Sooltangos', 'Noreen', 'Phnx', '0057589858', 'Noreen@gmail.com', 'Admin', 'Femme', 'Celibat', 0, 'Aucun', '2020-06-26', 25000, '30', '2022-06-26', ''),
(3, 'Mbae', 'Dine', 'QB', '0057898587', 'Dine@gmail.com', 'Admin', 'Homme', 'Celibat', 0, 'Aucun', '1970-01-01', 25000, '30', '1970-01-01', ''),
(4, 'Tom', 'test', 'QB', '0057898587', 'admin', 'admin', 'Homme', 'Celibat', 0, 'Aucun', '1970-01-01', 25000, '30', '1970-01-01', 'ven1'),
(5, 'Jean', 'test', 'QB', '0057898587', 'rh', 'RH', 'Homme', 'Celibat', 0, 'Aucun', '1970-01-01', 25000, '30', '1970-01-01', 'rh1'),
(6, 'Ann', 'test', 'QB', '0057898587', 'manager', 'manager', 'Femme', 'Celibat', 0, 'Aucun', '1970-01-01', 25000, '30', '1970-01-01', 'man1'),
(7, 'Ekko', 'test', 'QB', '0057898587', 'vendeur', 'vendeur', 'Homme', 'Celibat', 0, 'Aucun', '1970-01-01', 25000, '30', '1970-01-01', 'ven1'),
(8, 'Senna', 'test', 'QB', '0057898587', 'administrateur', 'administrateur', 'Femme', 'Celibat', 0, 'Aucun', '1970-01-01', 25000, '30', '1970-01-01', 'ven1'),
(9, 'Lucian', 'test', 'QB', '0057898587', 'Dine@gmail.com', 'Admin', 'Homme', 'Celibat', 0, 'Aucun', '1970-01-01', 25000, '30', '1970-01-01', '');

-- --------------------------------------------------------

--
-- Table structure for table `vente`
--

CREATE TABLE `vente` (
  `id_vente` int(5) NOT NULL,
  `id_voiture` int(5) DEFAULT NULL,
  `vendeur` varchar(50) DEFAULT NULL,
  `testDrive` char(1) DEFAULT NULL,
  `facture` double(8,2) DEFAULT NULL,
  `DateLivraison` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voiture`
--

CREATE TABLE `voiture` (
  `idVoiture` int(10) NOT NULL,
  `Marque` varchar(15) NOT NULL,
  `Modele` varchar(15) NOT NULL,
  `DateFabrication` date NOT NULL,
  `Couleur` varchar(10) NOT NULL,
  `stock` int(10) DEFAULT NULL,
  `entrepot` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voiture`
--

INSERT INTO `voiture` (`idVoiture`, `Marque`, `Modele`, `DateFabrication`, `Couleur`, `stock`, `entrepot`) VALUES
(1, 'Nissan', 'aucun idée', '2022-06-10', 'rouge', 10, 'Port Louis'),
(2, 'Nissan', 'aucun idée', '2022-06-10', 'rouge', 10, 'Baie du Tombeau'),
(3, 'Nissan', 'aucun idée', '2022-06-10', 'rouge', 10, 'Plaissance'),
(4, 'Nissan', 'aucun idée', '2022-06-10', 'rouge', 10, 'Phoenix');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employées`
--
ALTER TABLE `employées`
  ADD PRIMARY KEY (`idEmp`);

--
-- Indexes for table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`id_vente`);

--
-- Indexes for table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`idVoiture`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employées`
--
ALTER TABLE `employées`
  MODIFY `idEmp` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vente`
--
ALTER TABLE `vente`
  MODIFY `id_vente` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voiture`
--
ALTER TABLE `voiture`
  MODIFY `idVoiture` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
