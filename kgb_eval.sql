-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 16 nov. 2022 à 10:40
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kgb_eval`
--

-- --------------------------------------------------------

--
-- Structure de la table `agent`
--

CREATE TABLE `agent` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prénom` varchar(50) NOT NULL,
  `Date de naissance` date NOT NULL,
  `Code id` varchar(50) NOT NULL,
  `Spécialité` varchar(80) NOT NULL,
  `Pseudo` varchar(80) NOT NULL,
  `MDP` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `agent`
--

INSERT INTO `agent` (`Id`, `Nom`, `Prénom`, `Date de naissance`, `Code id`, `Spécialité`, `Pseudo`, `MDP`) VALUES
(1, 'Yavlov', 'Boris', '1995-05-23', '10101', 'Sabotage/ Filature', 'Imdralcan', 'Imdralcan@teSto275'),
(2, 'Petrish', 'Natasha', '1987-09-01', '10102', 'Vol/ Infiltration', 'Restaport', 'Restaport587///mP'),
(3, 'Wanikka', 'Yelena', '1990-06-16', '10103', 'Infiltration/ Assassinat', 'Tilopalorea', 'Tilopalorea*tUrpaL98'),
(4, 'Kzaditsch', 'Vlad', '1987-02-26', '10104', 'Filature', 'Metoulditera', 'Metoulditera778@*91M'),
(5, 'Podiatz', 'Jorgh', '1986-03-08', '10105', 'Langues', 'Raptoruscardo', 'RaptoruscardoNz*620@ZaT'),
(6, 'Piotre', 'Ilav', '1982-12-19', '10106', 'Renseignement/ Vol', 'Zaporishnedou', 'Zaporishnedou00TzSAm1216');

-- --------------------------------------------------------

--
-- Structure de la table `agents_missions`
--

CREATE TABLE `agents_missions` (
  `Id_agent` int(11) NOT NULL,
  `Id_mission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `mission`
--

CREATE TABLE `mission` (
  `Id` int(11) NOT NULL,
  `Titre` varchar(80) NOT NULL,
  `Description` text NOT NULL,
  `Nom de code` varchar(80) NOT NULL,
  `Pays` varchar(80) NOT NULL,
  `Effectif agent` int(11) NOT NULL,
  `Effectif contact` int(11) NOT NULL,
  `Effectif cible` int(11) NOT NULL,
  `Nombre de planque` int(11) NOT NULL,
  `Type de mission` varchar(80) NOT NULL,
  `Statut de mission` varchar(50) NOT NULL,
  `Spécialité requise` varchar(80) NOT NULL,
  `Date de début` date NOT NULL,
  `Date de fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mission`
--

INSERT INTO `mission` (`Id`, `Titre`, `Description`, `Nom de code`, `Pays`, `Effectif agent`, `Effectif contact`, `Effectif cible`, `Nombre de planque`, `Type de mission`, `Statut de mission`, `Spécialité requise`, `Date de début`, `Date de fin`) VALUES
(1, 'Documents nucléaire', 'Des documents attestant de la fabrication de bombes nucléaire type Sarmate 2, capable de raser un pays comme l\'Espagne, sera prochainement mise en œuvre par l\'Iran. Il est essentiel que le scientifique Référent assignés à cette recherche disparaissent  le plus rapidement possible et sans laisser de traces.', 'Papercut', 'Iran', 1, 1, 1, 1, 'Recherche/Exécution', 'Active', 'Sabotage', '2022-09-21', '2023-01-28'),
(2, 'Plans', ' En l\'état actuelle des choses, avec notre opération spéciale en Ukraine nous devons prendre les devants car nous sommes menacés par l\'Otan. Nous avons besoin des plans du lanceur de SpaceX afin de fabriquer un satellite de surveillance mondial.', 'Loslam', 'USA', 1, 2, 1, 2, 'récupération de données', 'Active', ' vol', '2022-09-21', '2023-09-28'),
(3, 'Entraide', 'Afin de renforcer nos liens avec la chine, ils nous ont demandé de nous occuper de Nancy Pélarsy qui apparemment exècre Xi DinLing. Elle doit disparaitre pour cela utiliser le poison nous parait le plus approprié pour ne laisser aucune trace.', 'Adelisme', 'USA', 1, 1, 1, 3, 'Exécution', 'En préparation', 'Infiltration / Assassinat', '2022-11-01', '2023-04-01'),
(4, 'Ciblage', 'Un groupe se faisant appeler \'les retissant\' s\'oppose au Kremlin et est donc une menace pour notre mère patrie. De par nos renseignements c\'est le lieutenant de ce groupe qui gère tout le côté relationnel, nous voulons une surveillance accrue de celui-ci afin de connaitre la totalité de ses contacts et ses déplacements. Une fois tous les renseignements nécessaires récupérés, faire disparaitre celui-ci.', 'Ripper', 'Russie', 1, 1, 1, 1, 'Filature', 'Active', 'Filature', '2022-09-21', '2023-09-28'),
(5, 'Amitier', 'Depuis le commencement de l\'opération spéciale mené en Ukraine, nous devons avoir le soutien des Chinois qui n\'ont pas l\'air pressé de nous l\'accorder. Nous allons donc prendre les devants en subtilisant des données compromettantes sur le président Xi Pongji.', 'Raturi', 'Chine', 1, 1, 1, 1, 'Réquisition', 'En préparation', 'Vol/Filature', '2022-12-19', '2023-05-19'),
(6, 'Documentaire', 'Un journaliste du nom de François Durant a mené une enquête sur le Donbass en 2015, après une bataille acharnée avec sa direction audio-visuelle il se prépare à le diffuser sur l\'antenne TV nationale français. Il faut à tout prix l\'empêcher pour éviter un mouvement de prise de partie. Peu nous importe votre façon de procéder.', 'Elastor', 'France', 1, 1, 1, 3, 'Vol/Destruction', 'En préparation', ' Vol', '2022-09-26', '2023-04-01');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `agents_missions`
--
ALTER TABLE `agents_missions`
  ADD KEY `Id_agent` (`Id_agent`),
  ADD KEY `Id_mission` (`Id_mission`);

--
-- Index pour la table `mission`
--
ALTER TABLE `mission`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agent`
--
ALTER TABLE `agent`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `mission`
--
ALTER TABLE `mission`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `agents_missions`
--
ALTER TABLE `agents_missions`
  ADD CONSTRAINT `agents_missions_ibfk_1` FOREIGN KEY (`Id_agent`) REFERENCES `agent` (`Id`),
  ADD CONSTRAINT `agents_missions_ibfk_2` FOREIGN KEY (`Id_mission`) REFERENCES `mission` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
