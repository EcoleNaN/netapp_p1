-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 06 fév. 2019 à 01:17
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nan_mailing`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant_1_18`
--

CREATE TABLE `etudiant_1_18` (
  `id_etudiant` int(11) NOT NULL,
  `nom_etud` varchar(50) NOT NULL,
  `prenoms` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `numero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant_1_18`
--

INSERT INTO `etudiant_1_18` (`id_etudiant`, `nom_etud`, `prenoms`, `email`, `numero`) VALUES
(1, 'sande', 'franck oscar', 'francksande@live.ca', '77832982'),
(2, 'doumbia', 'aboudramane', 'aboudramane1.doumbia@uvci.edu.ci', '48990150'),
(3, 'yves', 'mousouba', 'michael.yves@uvci.edu.ci', '09004930');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant_2_19`
--

CREATE TABLE `etudiant_2_19` (
  `id_etudiant` int(11) NOT NULL,
  `nom_etudiant` varchar(100) NOT NULL,
  `prenom_etudiant` varchar(100) NOT NULL,
  `mail_etudiant` varchar(100) NOT NULL,
  `numero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant_2_19`
--

INSERT INTO `etudiant_2_19` (`id_etudiant`, `nom_etudiant`, `prenom_etudiant`, `mail_etudiant`, `numero`) VALUES
(1, 'kouakou', 'yao mardochée', 'mardoche.kouakou@uvci.edu.ci', '1245454'),
(2, 'n\'gouan', 'appia jean jaures', 'appia.ngouan@uvci.edu.ci', '77855222'),
(3, 'hamdan', 'lamia', 'lamia.hamdan@uvci.edu.ci', '55415255'),
(4, 'bamba', 'oualama', 'oualama.bamba@uvci.edu.ci', '452223333'),
(5, 'diabagate', 'assana', 'assana.diabagate@uvci.edu.ci', '54784855');

-- --------------------------------------------------------

--
-- Structure de la table `nan_plus`
--

CREATE TABLE `nan_plus` (
  `id_etud` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenoms` varchar(100) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `nan_plus`
--

INSERT INTO `nan_plus` (`id_etud`, `nom`, `prenoms`, `numero`, `email`) VALUES
(1, 'sangare', 'mohamed', '45454545', 'mohamed@gmail.com'),
(2, 'kouakou', 'moussa', '45858585', 'moussa.kouakou@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `login`, `password`) VALUES
(1, 'admin@nan.ci', '6143914f5b6e06029f07357cfe1bbaed');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiant_1_18`
--
ALTER TABLE `etudiant_1_18`
  ADD PRIMARY KEY (`id_etudiant`);

--
-- Index pour la table `etudiant_2_19`
--
ALTER TABLE `etudiant_2_19`
  ADD PRIMARY KEY (`id_etudiant`);

--
-- Index pour la table `nan_plus`
--
ALTER TABLE `nan_plus`
  ADD PRIMARY KEY (`id_etud`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiant_1_18`
--
ALTER TABLE `etudiant_1_18`
  MODIFY `id_etudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `etudiant_2_19`
--
ALTER TABLE `etudiant_2_19`
  MODIFY `id_etudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `nan_plus`
--
ALTER TABLE `nan_plus`
  MODIFY `id_etud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
