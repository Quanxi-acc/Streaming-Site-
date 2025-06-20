-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 14 avr. 2025 à 02:39
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `netflix`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `idActeur` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `dateN` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`idActeur`, `nom`, `prenom`, `dateN`) VALUES
(12, 'Pitt ', 'Brad', '1963-12-18'),
(13, 'Bonham ', 'Helena', '1966-05-26'),
(14, 'DiCaprio ', 'Leonardo', '2006-11-17'),
(15, 'Brando ', 'Marlon', '1924-04-03'),
(16, 'Hamil ', 'Mark', '1951-09-25'),
(17, 'Travolta ', 'John ', '1954-02-18'),
(18, 'Hanks ', 'Tom ', '1956-07-09'),
(19, 'Bale ', 'Christian ', '1970-07-30'),
(20, 'Neeson ', 'Liam ', '1952-06-07'),
(21, 'Kang-ho', 'Song', '1967-01-17'),
(22, 'Gosling ', 'Ryan ', '1980-11-12'),
(23, 'Stone', ' Emma', '1988-11-06'),
(24, 'Cranston ', 'Bryan ', '1956-03-07'),
(25, 'Clarke ', 'Emilia ', '1986-10-23'),
(26, 'Bobby Brown ', 'Millie ', '2004-02-19'),
(27, 'Colman ', 'Olivia ', '1974-01-30'),
(28, 'Pascal ', 'Pedro ', '1975-04-02'),
(29, 'Aniston ', 'Jennifer ', '1969-02-11'),
(30, 'Murphy ', 'Cillian ', '1976-05-25');

-- --------------------------------------------------------

--
-- Structure de la table `comptenetflix`
--

CREATE TABLE `comptenetflix` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `pp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `comptenetflix`
--

INSERT INTO `comptenetflix` (`id`, `nom`, `pp`) VALUES
(17, 'Evann', NULL),
(18, 'Evann', NULL),
(19, 'Toto', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `idFilm` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `annee` int(11) DEFAULT NULL,
  `fkGenre` int(11) DEFAULT NULL,
  `fkType` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `lien_bande_annonce` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`idFilm`, `nom`, `annee`, `fkGenre`, `fkType`, `image`, `lien_bande_annonce`) VALUES
(1, 'Fight Club', 1999, 4, 3, '../Image/Fight Club.jpg\n', 'https://www.youtube.com/watch?v=rNfdHlm2RTc&ab_channel=DigitalCin%C3%A9'),
(4, 'Titanic', 1997, 10, 3, '../Image/Titanic.jpg', 'https://www.youtube.com/watch?v=LD8dyWYuX0g&ab_channel=20thCenturyStudiosFR'),
(5, 'Le Parrain', 1972, 4, 3, '../Image/Le Parrain.jpg', 'https://www.youtube.com/watch?v=bmtuIhesQWA&ab_channel=FilmsActu'),
(6, 'Pulp Fiction', 1994, 4, 3, '../Image/Pulp Fiction.jpg', 'https://www.youtube.com/watch?v=tGpTpVyI_OQ&ab_channel=Miramax'),
(7, 'Inception', 2010, 7, 3, '../Image/Inception.jpg', 'https://www.youtube.com/watch?v=CPTIgILtna8&ab_channel=WarnerBros.France'),
(9, 'Forrest Gump', 1994, 4, 3, '../Image/Forrest Gump.jpg', 'https://www.youtube.com/watch?v=GRe3ZsXAZE4&ab_channel=Cin%C3%A9Vor'),
(10, 'The Dark Knight', 2008, 11, 3, '../Image/The Dark Night.jpg', 'https://www.youtube.com/watch?v=TQfATDZY5Y4&ab_channel=Legendary'),
(11, 'La Liste de Schindler', 1993, 15, 3, '../Image/La Liste de Schindler.jpg', 'https://www.youtube.com/watch?v=ONWtyxzl-GE&ab_channel=UniversalPicturesFrance'),
(13, 'Parasite ', 2019, 7, 3, '../Image/Parasite.jpg', 'https://www.youtube.com/watch?v=BboKKBYx7-0&ab_channel=LeHuffPost'),
(14, 'La La Land', 2016, 16, 3, '../Image/La La Land.jpg', 'https://www.youtube.com/watch?v=0pdqf4P9MB8&ab_channel=LionsgateMovies'),
(15, 'Game of Thrones', 2011, 4, 4, '../Image/Game of Thrones.jpg', 'https://www.youtube.com/watch?v=aAF12LNAeNI&ab_channel=WarnerBros.France'),
(16, 'Stranger Things', 2016, 13, 4, '../Image/Stranger Things.jpg', 'https://www.youtube.com/watch?v=l7nzodXfVsg&ab_channel=NetflixFrance'),
(17, 'The Crown', 2016, 15, 4, '../Image/The Crown.jpg', 'https://www.youtube.com/watch?v=wjdCxLXfRPM&ab_channel=NetflixFrance'),
(18, 'The Mandalorian', 2019, 13, 4, '../Image/The Mandalorian.jpg', 'https://www.youtube.com/watch?v=3QJypub6Yag&ab_channel=StarWarsFR'),
(19, 'Friends', 1994, 5, 4, '../Image/Friends.jpg', 'https://www.youtube.com/watch?v=-6-rrJIL-nM&ab_channel=WarnerBros.France'),
(20, 'Peaky Blinders', 2013, 11, 4, '../Image/Peaky Blinders.jpg', 'https://www.youtube.com/watch?v=j3tX27beCpY&ab_channel=CorneilleProduction');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `idGenre` int(11) NOT NULL,
  `genre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`idGenre`, `genre`) VALUES
(4, 'Drame'),
(5, 'Comédie'),
(6, 'Horreur'),
(7, 'Thriller '),
(8, 'Thriller psychologique'),
(10, 'Romance'),
(11, 'Crime'),
(13, 'Science-fiction'),
(14, 'Aventure'),
(15, 'Historique'),
(16, 'Musical');

-- --------------------------------------------------------

--
-- Structure de la table `jouer`
--

CREATE TABLE `jouer` (
  `fkFilm` int(11) NOT NULL,
  `fkActeur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jouer`
--

INSERT INTO `jouer` (`fkFilm`, `fkActeur`) VALUES
(1, 12),
(4, 14),
(5, 15),
(6, 17),
(7, 14),
(9, 18),
(10, 19),
(11, 20),
(13, 21),
(14, 22),
(15, 25),
(16, 26),
(17, 27),
(18, 28),
(19, 29),
(20, 30);

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `idRea` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `dateN` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`idRea`, `nom`, `prenom`, `dateN`) VALUES
(4, 'Norton ', 'Edward', '1969-08-18'),
(5, 'Cameron ', 'James ', '1954-08-16'),
(6, 'Coppola ', 'Francis Ford', '1939-04-07'),
(7, 'Lucas ', 'George ', '1944-05-14'),
(8, 'Tarantino ', 'Quentin ', '1963-02-27'),
(9, 'Nolan ', 'Christopher ', '1970-07-30'),
(10, 'Zemeckis ', 'Robert ', '1952-05-14'),
(11, 'Spielberg ', 'Steven ', '1946-12-18'),
(12, 'Joon-ho', ' Bong', '1969-09-14'),
(13, 'Chazelle ', ' Damien ', '1985-01-19'),
(14, 'Gilligan ', 'Vince ', '1967-02-27'),
(15, 'Benioff ', 'David ', '1970-09-25'),
(16, 'Weiss ', 'D.B. ', '1971-04-23'),
(17, 'Duffer ', 'Matt ', '1984-02-15'),
(18, 'Duffer ', 'Ross ', '1984-02-15'),
(20, 'Morgan ', 'Peter ', '1963-04-10'),
(21, 'Favreau ', 'Jon ', '1966-10-19'),
(22, 'Crane ', 'David ', '1957-08-13'),
(23, 'Knight ', 'Steven ', '1959-08-05');

-- --------------------------------------------------------

--
-- Structure de la table `realiser`
--

CREATE TABLE `realiser` (
  `fkFilm` int(11) NOT NULL,
  `fkRea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `realiser`
--

INSERT INTO `realiser` (`fkFilm`, `fkRea`) VALUES
(1, 4),
(4, 5),
(5, 6),
(6, 8),
(7, 9),
(9, 10),
(10, 9),
(11, 11),
(13, 12),
(14, 13),
(15, 15),
(16, 17),
(17, 20),
(18, 21),
(19, 22),
(20, 23);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `idType` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`idType`, `type`) VALUES
(3, 'Film'),
(4, 'Série'),
(5, 'Long métrage');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `pseudo` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `datenaissance` date DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `motdepasse` varchar(100) DEFAULT NULL,
  `admin` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `pseudo`, `email`, `datenaissance`, `genre`, `motdepasse`, `admin`) VALUES
(7, 'Terrier', 'Evann', 'Admin', 'admin@sio.com', '2025-02-01', 'homme', 'Admin', 1),
(9, 'Terrier', 'Evann', 'User', 'user@sio.com', '2001-01-01', 'homme', 'User', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`idActeur`);

--
-- Index pour la table `comptenetflix`
--
ALTER TABLE `comptenetflix`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`idFilm`),
  ADD KEY `fkGenre` (`fkGenre`),
  ADD KEY `fkType` (`fkType`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`idGenre`);

--
-- Index pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD PRIMARY KEY (`fkFilm`,`fkActeur`),
  ADD KEY `fkActeur` (`fkActeur`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`idRea`);

--
-- Index pour la table `realiser`
--
ALTER TABLE `realiser`
  ADD PRIMARY KEY (`fkFilm`,`fkRea`),
  ADD KEY `fkRea` (`fkRea`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`idType`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `idActeur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `comptenetflix`
--
ALTER TABLE `comptenetflix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `idFilm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `idGenre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `idRea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `idType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `fkGenre` FOREIGN KEY (`fkGenre`) REFERENCES `genre` (`idGenre`),
  ADD CONSTRAINT `fkType` FOREIGN KEY (`fkType`) REFERENCES `type` (`idType`);

--
-- Contraintes pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD CONSTRAINT `fkActeur` FOREIGN KEY (`fkActeur`) REFERENCES `acteur` (`idActeur`),
  ADD CONSTRAINT `fkFilm2` FOREIGN KEY (`fkFilm`) REFERENCES `film` (`idFilm`);

--
-- Contraintes pour la table `realiser`
--
ALTER TABLE `realiser`
  ADD CONSTRAINT `fkFilm` FOREIGN KEY (`fkFilm`) REFERENCES `film` (`idFilm`),
  ADD CONSTRAINT `fkRea` FOREIGN KEY (`fkRea`) REFERENCES `realisateur` (`idRea`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
