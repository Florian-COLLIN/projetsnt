-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 11 Novembre 2020 à 14:57
-- Version du serveur :  5.7.32-0ubuntu0.16.04.1
-- Version de PHP :  7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `le-point-k`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `admins`
--

INSERT INTO `admins` (`id`, `user`) VALUES
(1, 2),
(2, 4);

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `author` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `main-category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `author`, `date`, `time`, `main-category`) VALUES
(1, 'Le nucléaire, une bonne source d\'énergie ?', 2, '2020-02-17', '12:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `articles-contents`
--

CREATE TABLE `articles-contents` (
  `id` int(11) NOT NULL,
  `article` int(11) NOT NULL,
  `content` text COLLATE utf8_general_mysql500_ci NOT NULL,
  `author` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `articles-contents`
--

INSERT INTO `articles-contents` (`id`, `article`, `content`, `author`, `date`, `time`) VALUES
(1, 1, '<p><em>Avec la fermeture de Fessenheim entamée début mars, la question du nucléaire est de nouveau remise sur table avec des opposition fortes dans les deux camps. Mais qu\'en est-il de cette énergie contestée ?</em></p>\r\n\r\n<p>Aujourd\'hui, l\'Homme a besoin d\'énergie pour vivre, et il n\'y a pas non plus une infinité de manières de créer de l\'énergie. \r\nOn a tendance à séparer deux types de sources d’énergies, les renouvelables et les non renouvelables.\r\nDans les sources d’énergies renouvelables, on peut y retrouver l’éolien, l’hydraulique, la géothermie, le photovoltaïque...\r\nParmi les sources d’énergies non renouvelables, on peut trouver le gaz, le pétrole, le charbon, ... Mais aussi l\'énergie nucléaire.\r\nCette dernière, malgré de grandes controverses, est massivement utilisée en France avec plus de 70 % de la production de l\'hexagone. Mais cette énergie est-elle aussi dangereuse qu\'on le prétend ? Pour cela, il faut d\'abord en comprendre le fonctionnement.\r\nParmi les manières de produire de l’énergie avec le nucléaire, il y a la fission, et la fusion.</p>\r\n\r\n<p>La fission, c\'est le fait de casser en deux un noyau lourd a l\'aide d\'un neutron, cette réaction émet une très forte production de chaleur et l\'émission de deux neutrons, ce qui permet une réaction en chaîne.\r\nDans les centrales nucléaires, en général, ce sont généralement des noyaux d’uranium qui sont cassés en des isotopes du krypton et du baryum).\r\nUn des avantages de la fission, c\'est que nous la maîtrisons , nous sommes capables de l\'utiliser pour produire de l\'énergie (centrales nucléaires actuelles).\r\nLes désavantages de la fission, c\'est que nous ne savons pas encore comment se débarrasser proprement des déchets nucléaires, et que nos réserves d\'uranium sont assez limitées sur Terre, de plus, les dégâts d\'un potentiel accident sont dévastateurs (Fukushima , Tchernobyl). Malgré cela, des projets de stockage à long terme (~300 000 ans) sont étudiés, particulièrement à Bure en Meuse ou un  centre de recherche à été installé pour étudier la question, et des réacteurs plus sûrs et moins polluants (EPR) commencent à être construits à travers le globe.</p>\r\n\r\n<p>Au contraire, la fusion, c\'est le fait de fusionner deux atomes légers en un atome plus lourd.\r\nL\'exemple le plus flagrant est le Soleil. A l\'intérieur de notre étoile, il y a à chaque instant des milliards de réactions de fusion entre deux atomes d\'hydrogène qui forment un atome d\'hélium (le cas le plus général et le plus simple), et cela émet énormément énergie, beaucoup plus que la fission. \r\nActuellement, des recherches sont en cours, par exemple, au sud de la France, on est en train de construire un Tokamak (projet ITER), le but est de faire fusionner ensemble des noyaux de deutérium et tritium (qui sont des isotopes de l’hydrogène) afin de créer un noyau d’hélium.\r\nLes avantages de la fusion, c\'est qu\'elle libère beaucoup plus d\'énergie que la fission (car la différence d’énergie entre les atomes de deutérium et de tritium et l’atome d’hélium est plus grande que la différence d’énergie entre de l’Uranium et des isotopes du krypton et du baryum) : on a des rendements bien plus intéréssants.\r\nAussi, elle ne pollue quasiment pas, les réserves de deutérium et tritium sont telles que nous en avons pour plusieurs millions d\'années à tout utiliser.\r\nDe plus, si jamais il y a un accident, les dégâts ne toucheront que le réacteur lui même, il n’y a pas de déchets radioactifs.\r\nLes désavantages de la fusion, c\'est que pour l\'instant, nous ne la maîtrisons pas encore assez pour pouvoir espérer produire de l’énergie avec, car les tokamaks consomment plus d\'énergie qu\'ils en produisent, la seule solution étant de les faire à grande échelle pour compenser la gourmandise énergétique de l\'installation, comme le fait ITER.</p>\r\n\r\n<p>Ainsi, nous venons de voir que le nucléaire est une très bonne source d’énergie, surtout au niveau écologique/environnemental, même si ce n’est pas encore la source d’énergie parfaite, elle a quand même un moindre impact sur l’environnement que les hydrocarbures et un meilleur rendement que des sources d’énergie renouvelables, comme l’éolien ou le photovoltaique. Car à notre époque, il paraît plus intéressant de promouvoir l\'écologie à court terme (nucléaire) que celle à long terme (énergies fossiles polluantes mais sans déchets) .</p>\r\n\r\n<p>Mais il y a quand même d’autres sources d’énergies intéressantes, comme l’énergie hydraulique par exemple, qui représente un grand atout dont nous parlerons dans notre prochain numéro.</p>\r\n\r\n<p class="aligndroite">Nathan</p>\r\n\r\n<h2>Sources :</h2>\r\n\r\n<ul>\r\n<li>https://fr.wikipedia.org/wiki/Fusion_nucléaire.htm</li>\r\n<li>https://nuclear.duke-energy.com/2013/01/30/fission-vs-fusion-whats-the-difference</li>\r\n<li>https://fr.wikipedia.org/wiki/Fission_nucléaire</li>\r\n</ul>', 2, '2020-02-17', '12:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_general_mysql500_ci NOT NULL,
  `color` varchar(6) COLLATE utf8_general_mysql500_ci NOT NULL,
  `menu` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `color`, `menu`) VALUES
(1, 'Écologie', '0b2', 1),
(2, 'Politique & International', 'fd0', 1),
(3, 'Sciences & Technologie', '28d', 1),
(4, 'Santé', 'f00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `images`
--

INSERT INTO `images` (`id`, `name`) VALUES
(1, 'centrale-nucleaire-1.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `article` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `content` text COLLATE utf8_general_mysql500_ci NOT NULL,
  `user` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `password` text COLLATE utf8_general_mysql500_ci NOT NULL,
  `realname` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `realname`, `email`) VALUES
(1, 'alois', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Aloïs COQUILLARD', ''),
(2, 'nathan', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Nathan CERISARA', ''),
(3, 'hector', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Hector LECLERC', ''),
(4, 'thib', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Thib. S.', '');

-- --------------------------------------------------------

--
-- Structure de la table `writers`
--

CREATE TABLE `writers` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `writers`
--

INSERT INTO `writers` (`id`, `user`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `articles-contents`
--
ALTER TABLE `articles-contents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `articles-contents`
--
ALTER TABLE `articles-contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
