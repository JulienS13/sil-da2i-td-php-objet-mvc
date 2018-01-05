-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 14 nov. 2017 à 08:14
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `alien`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `date de sortie` date NOT NULL,
  `synopsis` text NOT NULL,
  `note` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `date de sortie`, `synopsis`, `note`) VALUES
(1, 'Alien, le huitieme passager', '1979-09-12', 'Le vaisseau commercial Nostromo et son équipage, sept hommes et femmes, rentrent sur Terre avec une importante cargaison de minerai. Mais lors d\'un arrêt forcé sur une planète déserte, l\'officier Kane se fait agresser par une forme de vie inconnue, une arachnide qui étouffe son visage. Après que le docteur de bord lui retire le spécimen, l\'équipage retrouve le sourire et dîne ensemble. Jusqu\'à ce que Kane, pris de convulsions, voit son abdomen perforé par un corps étranger vivant, qui s\'échappe dans les couloirs du vaisseau...', 5);

-- --------------------------------------------------------

--
-- Structure de la table `film_has_personne`
--

DROP TABLE IF EXISTS `film_has_personne`;
CREATE TABLE IF NOT EXISTS `film_has_personne` (
  `id_film` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
  `role` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film_has_personne`
--

INSERT INTO `film_has_personne` (`id_film`, `id_personne`, `role`) VALUES
(1, 1, 'realisateur'),
(1, 2, 'acteur'),
(1, 3, 'acteur'),
(1, 4, 'acteur');

-- --------------------------------------------------------

--
-- Structure de la table `film_has_photo`
--

DROP TABLE IF EXISTS `film_has_photo`;
CREATE TABLE IF NOT EXISTS `film_has_photo` (
  `id_film` int(11) NOT NULL,
  `id_photo` int(11) NOT NULL,
  `role` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film_has_photo`
--

INSERT INTO `film_has_photo` (`id_film`, `id_photo`, `role`) VALUES
(1, 8, 'affiche'),
(1, 9, 'galerie'),
(1, 1, 'galerie'),
(1, 6, 'galerie'),
(1, 7, 'galerie');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `date de naissance` date NOT NULL,
  `biographie` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `date de naissance`, `biographie`) VALUES
(1, 'Ridley', 'Scott', '1937-11-30', 'Né le 30 novembre 1937 (South Shields, Durham - Grande-Bretagne), il est le frère aîné de Tony Scott. Ridley Scott étudie au West Hartpool College of Art et au Royal College of Art de Londres. Au début des années 60, il intègre la British Broadcasting Company (BBC) et devient réalisateur d\'une série policière très populaire sur la chaîne, Z Cars. Il est également chef décorateur sur deux séries de science-fiction, Out of the unknown (1965) et R3 (1964), et devient rapidement l\'un des réalisateurs télé les plus inventifs du moment.\r\n\r\nC\'est en 1977 que Ridley Scott effectue son passage au grand écran avec Les Duellistes, un drame historique porté par Keith Carradine et Harvey Keitel. Le long-métrage obtient le Prix du Jury au Festival de Cannes. Le cinéaste enchaîne alors deux longs-métrages de science-fiction très vite élevés au rang de films cultes : Alien, le huitième passager (1979), où Sigourney Weaver se trouve confrontée à un abominable extraterrestre, et Blade runner (1982), qui voit Harrison Ford incarner un chasseur de primes traquant des Replicants. Pour ce film, le cinéaste affronte ses producteurs et se voit contraint de rajouter une voix off explicative et une fin plus optimiste.\r\n\r\nEn 1985, Ridley Scott connaît son premier échec commercial avec Legend, un film d\'heroic fantasy interprété par Tom Cruise. Il enchaîne alors deux polars, Traquée (1987), où Tom Berenger s\'éprend de la richissime femme dont il doit assurer la protection, et Black rain (1988), où Michael Douglas incarne un flic tenace face à un dangereux yakusa.\r\n\r\nEn 1991, le cinéaste britannique obtient un triomphe public et critique pour Thelma et Louise, road-movie mené tambour battant par Susan Sarandon et Geena Davis, nommé à six reprises aux Oscars, notamment dans la catégorie Meilleur réalisateur. La décennie 90 va toutefois être marquée par quelques déconvenues pour le réalisateur. Ni 1492 : Christophe Colomb (1992), ni Lame de fond (1996) et ni A armes égales (1997) n\'obtiennent les faveurs de la critique et du public. Ridley Scott retourne alors à la production avec la série télévisée The Hunger (1997), adaptée des Prédateurs, film réalisé par son frère Tony en 1983.\r\n\r\nEn 2000, le très rentable (plus de 450 millions de dollars de recettes dans le monde) et primé Gladiator (Oscar du Meilleur film et du Meilleur acteur pour Russell Crowe) témoigne une fois de plus du génie de son metteur en scène, lequel est parvenu à réinventer le genre classique et démodé du péplum. Abonné dès lors aux fresques historiques, il se voit confier la réalisation de projets d\'envergure, tels le violent et réaliste La Chute du faucon noir (2002), basé sur la bataille de Mogadiscio en octobre 1993, et Kingdom of Heaven (2005), ayant pour cadre l\'époque des Croisades.\r\n\r\nRidley Scott, véritable \"touche à tout\", se consacre également à la mise en scène d’œuvres au budget plus restreint et moins axées sur le spectaculaire comme Hannibal (2001), la suite du Silence des agneaux, ou les comédies Les Associés (2003), avec Nicolas Cage, et Une grande année (2007), qui le voit collaborer à nouveau avec Russell Crowe pour un atypique périple provençal. C\'est toujours avec l\'acteur néo-zélandais en vedette qu\'en 2007, Ridley Scott signe American Gangster, thriller également porté par Denzel Washington dans la peau du célèbre malfrat Frank Lucas. Il reste très attaché aux grands bandits américains puisqu\'il produit L\'Assassinat de Jesse James par le lâche Robert Ford avec Brad Pitt la même année. Il passe ensuite côté police, CIA plus précisément, avec Mensonges d\'Etat où il retrouve une vieille connaissance en la personne de Russell Crowe.\r\n\r\nEn 2009, Scott collabore pour la cinquième fois avec son acteur fétiche sur Robin des Bois, en affichant clairement sa volonté de réaliser une sorte de Gladiator médiéval. Côté production, il aide des projets audacieux et pertinents avec sa société Scott Free (Welcome to the Rileys, Le Territoire des Loups, etc.). Il produit ainsi en 2010 le documentaire Life in a Day, réalisé par Kevin McDonald avec l\'aide des internautes du monde entier et du site Youtube. Cet attrait pour les projets ambitieux, le cinéaste l\'a aussi pour ses propres réalisations, comme le montre son grand retour à la science-fiction avec Prometheus en 2012, à la fois préquelle de son chef d’œuvre Alien, et premier volet d\'une future trilogie. Il retrouve Michael Fassbender - à qui il offre le rôle principal - en 2013 juste après Prometheus dans Cartel, un thriller avec Cameron Diaz, Javier Bardem, Penélope Cruz et Brad Pitt.\r\n\r\nRidley Scott revient ensuite au péplum avec Exodus: Gods And Kings dans lequel Christian Bale campe ni plus ni moins que Moïse, avant de renouer avec la science-fiction pour les besoins de Seul sur Mars porté par Matt Damon. Le réalisateur reste ensuite dans la SF en mettant en scène Alien Covenant, la suite de Prometheus.'),
(2, 'Sigourney', 'Weaver', '1949-10-08', 'Fille du président de la chaîne NBC Sylvester Weaver et de la comédienne anglaise Elizabeth Inglis.\r\n\r\nSigourney Weaver suit des cours d\'art dramatique dès le lycée, décroche son diplôme d\'anglais à Stanford et s\'inscrit à la Yale School of Drama de New York. Elle débute sa carrière artistique au théâtre puis à la télévision, avant d\'effectuer ses premiers pas au cinéma sous la direction de Woody Allen, dans la comédie dramatique Annie Hall (1977).\r\n\r\nSigourney Weaver accède au rang de star en 1979, dès son troisième film, avec le personnage d\'Ellen Ripley persécuté par Alien, le huitième passager de Ridley Scott, rôle pour lequel elle est citée à l\'Oscar de la Meilleure actrice. Dans les années 80, cette grande brune (environ 1m80) n\'hésite pas à se démarquer de l\'héroïne qui l\'a fait connaître en s\'illustrant dans des registres aussi variés que le drame de guerre (L\'Année de tous les dangers, 1982) et la comédie fantastique (S.O.S. fantômes, 1984). Aimant incarner des femmes au caractère bien trempé, elle est la business-woman arriviste et impitoyable de Working girl (1988) et la scientifique déterminée Dian Fossey de Gorilles dans la brume (id.), deux films qui lui valent à nouveau deux nominations aux Oscars.\r\n\r\nSigourney Weaver n\'en oublie pas moins l\'officier Ripley qu\'elle retrouve pour trois autres épisodes de la célèbre saga fantastique : Aliens le retour (1986) de James Cameron, Alien 3 (1992) de David Fincher et Alien, la résurrection (1997) de Jean-Pierre Jeunet. Parallèlement à ces prestations, les années 90 sont aussi marquées par ses personnages de femme abusée réclamant vengeance dans La Jeune fille et la mort (1994), de criminologue paranoïaque dans le thriller Copycat (1996), de sorcière dans Blanche-Neige : le plus horrible des contes (1997) et d\'une \"spécialiste\" de l\'adultère dans The Ice Storm (1998).\r\n\r\nAprès le drame Une carte du monde (1999), Sigourney Weaver tourne coup sur coup cinq comédies : Galaxy Quest (id.), Company man (2000), Beautés empoisonnées (2001), Séduction en mode mineur (2002) et La Morsure du lézard (2003). Toujours dans le même registre, on l\'aperçoit dans le film Soyez sympas, rembobinez (2008) du français Michel Gondry. La même année, elle prête également sa voix à l\'affreuse belle-mère du film d\'animation Cendrillon & son prince (pas trop) charmant. Un exercice qu\'elle réitère avec WALL·E (2008), dans lequel elle incarne la voix de l\'ordinateur de bord du vaisseau spatial, et La Légende de Despereaux (2009), où elle officie en tant que narratrice. \r\n\r\nComme personne n\'échappe à ses vieux démons, le genre fantastique rattrape la comédienne en 2003 quand elle intègre le prestigieux casting du Village de M. Night Shyamalan, puis en 2009 lorsqu\'elle retrouve James Cameron, 23 ans après Aliens le retour, pour prendre part à Avatar. Sigourney Weaver y interprète le rôle de Grace Augustine, la scientifique en charge de l\'expérience permettant au personnage Jake Sully, incarné par Sam Worthington, de contrôler le corps cloné d\'un habitant de la planète Pandora. Après cette participation au plus gros succès commercial de tous les temps, l\'actrice change de registre en s\'affichant, en 2011 et 2012, dans deux films mêlant action et espionnage : Identité Secrète et Sans Issue.'),
(3, 'Tom', 'Skerritt', '1933-08-25', 'Après des études d\'histoire de l\'art, Tom Skerrit fait un peu de théâtre et de télévision puis inaugure sa carrière cinématographique avec le film La Guerre est aussi une chasse, où il côtoie le débutant Robert Redford. Il devient dès lors l\'un des plus fameux seconds rôles du cinéma américain, s\'illustrant surtout, dans un premier temps, dans des films fantastiques ou policiers. \r\n\r\nAu début des années 70, M.A.S.H. et Nous sommes tous des voleurs lui donnent l\'occasion de travailler pour Robert Altman. Il travaille également pour Blake Edwards (Deux hommes dans l\'Ouest) mais n\'accède à la reconnaissance qu\'en 1979, avec son rôle du Commandant Dallas dans Alien, le huitième passager de Ridley Scott. Suivent ensuite des prestations remarquées dans Dead Zone (David Cronenberg - 1983), Top gun (à nouveau Ridley Scott - 1986) et La Relève (Clint Eastwood - 1990). \r\n\r\nParallèlement à une intense activité télévisuelle, Tom Skerrit poursuit son aventure sur grand écran. L\'âge aidant, son visage buriné lui permet de camper des rôles plus dramatiques, comme dans Potins de femmes (Herbert Ross - 1989), Et au milieu coule une rivière où il retrouve Robert Redford trente ans après, cette fois-ci en tant que réalisateur, Singles (Cameron Crowe - 1992) ou encore Contact (Robert Zemeckis - 1997).\r\n\r\nEn 2001, Tom Skerrit apparaît dans le western Texas rangers. Deux ans plus tard, il accompagne Bruce Willis et Monica Bellucci dans Les Larmes du soleil, thriller réalisé par Antoine Fuqua.'),
(4, 'Veronica', 'Cartwright', '1949-04-20', 'Veronica Cartwright est une actrice britannique, née le 20 avril 1949 à Bristol.');

-- --------------------------------------------------------

--
-- Structure de la table `personne_has_photo`
--

DROP TABLE IF EXISTS `personne_has_photo`;
CREATE TABLE IF NOT EXISTS `personne_has_photo` (
  `id_personne` int(11) NOT NULL,
  `id_photo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personne_has_photo`
--

INSERT INTO `personne_has_photo` (`id_personne`, `id_photo`) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5);

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE IF NOT EXISTS `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chemin` text CHARACTER SET latin1 NOT NULL,
  `légende` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`id`, `chemin`, `légende`) VALUES
(1, 'img/alien.jpg', 'l\'alien'),
(2, 'img/ridley.jpg', 'Ridley Scott'),
(3, 'img/sigourney.jpg', 'Sigourney Weaver'),
(4, 'img/tom.jpg', 'Tom Skerritt'),
(5, 'img/veronica.jpg', 'Veronica Cartwright'),
(6, 'img/alien_2.jpg', 'Le vaisseau alien'),
(7, 'img/alien_3.jpg', 'Naissance alien'),
(8, 'img/affiche.jpg', 'affiche alien, le huitième passager'),
(9, 'img/alien_4.jpg', 'Sigourney Weaver dans le rôle de Ripley');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
