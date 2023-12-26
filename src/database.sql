-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : lun. 04 déc. 2023 à 13:45
-- Version du serveur : 8.1.0
-- Version de PHP : 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `service-web`
--
CREATE DATABASE IF NOT EXISTS `service-web` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `service-web`;

-- --------------------------------------------------------

--
-- Structure de la table `dictline`
--

CREATE TABLE `dictline` (
  `id` int NOT NULL,
  `key` varchar(40) DEFAULT NULL,
  `value` varchar(40) DEFAULT NULL,
  `dict_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `dictline`
--

INSERT INTO `dictline` (`id`, `key`, `value`, `dict_id`) VALUES
(1, 'A', '.-', 1),
(2, 'B', '-...', 1),
(3, 'C', '-.-.', 1),
(4, 'D', '-..', 1),
(5, 'E', '.', 1),
(6, 'F', '..-.', 1),
(7, 'G', '--.', 1),
(8, 'H', '....', 1),
(9, 'I', '..', 1),
(10, 'J', '.---', 1),
(11, 'K', '-.-', 1),
(12, 'L', '.-..', 1),
(13, 'M', '--', 1),
(14, 'N', '-.', 1),
(15, 'O', '---', 1),
(16, 'P', '.--.', 1),
(17, 'Q', '--.-', 1),
(18, 'R', '.-.', 1),
(19, 'S', '...', 1),
(20, 'T', '-', 1),
(21, 'U', '..-', 1),
(22, 'V', '...-', 1),
(23, 'W', '.--', 1),
(24, 'X', '-..-', 1),
(25, 'Y', '-.--', 1),
(26, 'Z', '--..', 1),
(27, '1', '.----', 1),
(28, '2', '..---', 1),
(29, '3', '...--', 1),
(30, '4', '....-', 1),
(31, '5', '.....', 1),
(32, '6', '-....', 1),
(33, '7', '--...', 1),
(34, '8', '---..', 1),
(35, '9', '----.', 1),
(36, '0', '-----', 1);

-- --------------------------------------------------------

--
-- Structure de la table `dicts`
--

CREATE TABLE `dicts` (
  `id` int NOT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `dicts`
--

INSERT INTO `dicts` (`id`, `name`) VALUES
(1, 'Morse');

-- --------------------------------------------------------

--
-- Structure de la table `trads`
--

CREATE TABLE `trads` (
  `id` int NOT NULL,
  `word` varchar(40) DEFAULT NULL,
  `trad` varchar(40) DEFAULT NULL,
  `dict_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `trads`
--

INSERT INTO `trads` (`id`, `word`, `trad`, `dict_id`) VALUES
(2, 'Rayane', '.-..--.--.--..', 1),
(3, 'Rayane JERBI', '.-..--.--.--.. .---..-.-.....', 1);


--
-- Index pour les tables déchargées
--

--
-- Index pour la table `dictline`
--
ALTER TABLE `dictline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dict_id` (`dict_id`),
  ADD KEY `ix_dictline_id` (`id`);

--
-- Index pour la table `dicts`
--
ALTER TABLE `dicts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_dicts_id` (`id`);

--
-- Index pour la table `trads`
--
ALTER TABLE `trads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dict_id` (`dict_id`),
  ADD KEY `ix_trads_id` (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `dictline`
--
ALTER TABLE `dictline`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `dicts`
--
ALTER TABLE `dicts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `trads`
--
ALTER TABLE `trads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `dictline`
--
ALTER TABLE `dictline`
  ADD CONSTRAINT `dictline_ibfk_1` FOREIGN KEY (`dict_id`) REFERENCES `dicts` (`id`);

--
-- Contraintes pour la table `trads`
--
ALTER TABLE `trads`
  ADD CONSTRAINT `trads_ibfk_1` FOREIGN KEY (`dict_id`) REFERENCES `dicts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
