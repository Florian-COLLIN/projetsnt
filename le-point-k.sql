-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 17 Janvier 2021 à 18:39
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
  `mainCategory` int(11) NOT NULL,
  `image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `author`, `date`, `time`, `mainCategory`, `image`) VALUES
(1, 'Le nucléaire, une bonne source d\'énergie ?', 2, '2020-02-17', '12:00:00', 1, 1),
(2, 'Faut-il interdire le glyphosate ?', 3, '2020-02-17', '12:32:51', 1, 2),
(3, 'Linux ou Windows, lequel vous est le plus adapté ?', 2, '2020-02-17', '13:02:10', 3, 3);

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
(1, 1, '<p><em>Avec la fermeture de Fessenheim entamée début mars, la question du nucléaire est de nouveau remise sur table avec des opposition fortes dans les deux camps. Mais qu\'en est-il de cette énergie contestée ?</em></p>\n\n<p>Aujourd\'hui, l\'Homme a besoin d\'énergie pour vivre, et il n\'y a pas non plus une infinité de manières de créer de l\'énergie. \nOn a tendance à séparer deux types de sources d’énergies, les renouvelables et les non renouvelables.\nDans les sources d’énergies renouvelables, on peut y retrouver l’éolien, l’hydraulique, la géothermie, le photovoltaïque...\nParmi les sources d’énergies non renouvelables, on peut trouver le gaz, le pétrole, le charbon, ... Mais aussi l\'énergie nucléaire.\nCette dernière, malgré de grandes controverses, est massivement utilisée en France avec plus de 70 % de la production de l\'hexagone. Mais cette énergie est-elle aussi dangereuse qu\'on le prétend ? Pour cela, il faut d\'abord en comprendre le fonctionnement.\nParmi les manières de produire de l’énergie avec le nucléaire, il y a la fission, et la fusion.</p>\n\n<p>La fission, c\'est le fait de casser en deux un noyau lourd a l\'aide d\'un neutron, cette réaction émet une très forte production de chaleur et l\'émission de deux neutrons, ce qui permet une réaction en chaîne.\nDans les centrales nucléaires, en général, ce sont généralement des noyaux d’uranium qui sont cassés en des isotopes du krypton et du baryum).\nUn des avantages de la fission, c\'est que nous la maîtrisons , nous sommes capables de l\'utiliser pour produire de l\'énergie (centrales nucléaires actuelles).\nLes désavantages de la fission, c\'est que nous ne savons pas encore comment se débarrasser proprement des déchets nucléaires, et que nos réserves d\'uranium sont assez limitées sur Terre, de plus, les dégâts d\'un potentiel accident sont dévastateurs (Fukushima , Tchernobyl). Malgré cela, des projets de stockage à long terme (~300 000 ans) sont étudiés, particulièrement à Bure en Meuse ou un  centre de recherche à été installé pour étudier la question, et des réacteurs plus sûrs et moins polluants (EPR) commencent à être construits à travers le globe.</p>\n\n<p>Au contraire, la fusion, c\'est le fait de fusionner deux atomes légers en un atome plus lourd.\nL\'exemple le plus flagrant est le Soleil. A l\'intérieur de notre étoile, il y a à chaque instant des milliards de réactions de fusion entre deux atomes d\'hydrogène qui forment un atome d\'hélium (le cas le plus général et le plus simple), et cela émet énormément énergie, beaucoup plus que la fission. \nActuellement, des recherches sont en cours, par exemple, au sud de la France, on est en train de construire un Tokamak (projet ITER), le but est de faire fusionner ensemble des noyaux de deutérium et tritium (qui sont des isotopes de l’hydrogène) afin de créer un noyau d’hélium.\nLes avantages de la fusion, c\'est qu\'elle libère beaucoup plus d\'énergie que la fission (car la différence d’énergie entre les atomes de deutérium et de tritium et l’atome d’hélium est plus grande que la différence d’énergie entre de l’Uranium et des isotopes du krypton et du baryum) : on a des rendements bien plus intéréssants.\nAussi, elle ne pollue quasiment pas, les réserves de deutérium et tritium sont telles que nous en avons pour plusieurs millions d\'années à tout utiliser.\nDe plus, si jamais il y a un accident, les dégâts ne toucheront que le réacteur lui même, il n’y a pas de déchets radioactifs.\nLes désavantages de la fusion, c\'est que pour l\'instant, nous ne la maîtrisons pas encore assez pour pouvoir espérer produire de l’énergie avec, car les tokamaks consomment plus d\'énergie qu\'ils en produisent, la seule solution étant de les faire à grande échelle pour compenser la gourmandise énergétique de l\'installation, comme le fait ITER.</p>\n\n<p>Ainsi, nous venons de voir que le nucléaire est une très bonne source d’énergie, surtout au niveau écologique/environnemental, même si ce n’est pas encore la source d’énergie parfaite, elle a quand même un moindre impact sur l’environnement que les hydrocarbures et un meilleur rendement que des sources d’énergie renouvelables, comme l’éolien ou le photovoltaique. Car à notre époque, il paraît plus intéressant de promouvoir l\'écologie à court terme (nucléaire) que celle à long terme (énergies fossiles polluantes mais sans déchets) .</p>\n\n<p>Mais il y a quand même d’autres sources d’énergies intéressantes, comme l’énergie hydraulique par exemple, qui représente un grand atout dont nous parlerons dans notre prochain numéro.</p>\n\n<p class="aligndroite">Nathan</p>\n\n<h2>Sources :</h2>\n\n<ul>\n<li>https://fr.wikipedia.org/wiki/Fusion_nucléaire.htm</li>\n<li>https://nuclear.duke-energy.com/2013/01/30/fission-vs-fusion-whats-the-difference</li>\n<li>https://fr.wikipedia.org/wiki/Fission_nucléaire</li>\n</ul>', 2, '2020-02-17', '12:00:00'),
(2, 1, '<p><em>Avec la fermeture de Fessenheim entamée début mars, la question du nucléaire est de nouveau remise sur table avec des oppositions fortes dans les deux camps. Mais qu\'en est-il de cette énergie contestée ?</em></p>\r\n\r\n<p>Aujourd\'hui, l\'Homme a besoin d\'énergie pour vivre, et il n\'y a pas non plus une infinité de manières de créer de l\'énergie. \r\nOn a tendance à séparer deux types de sources d’énergie, les renouvelables et les non renouvelables.\r\nDans les sources d’énergies renouvelables, on peut y retrouver l’éolien, l’hydraulique, la géothermie, le photovoltaïque...\r\nParmi les sources d’énergies non renouvelables, on peut trouver le gaz, le pétrole, le charbon, ... Mais aussi l\'énergie nucléaire.\r\nCette dernière, malgré de grandes controverses, est massivement utilisée en France avec plus de 70 % de la production de l\'hexagone. Mais cette énergie est-elle aussi dangereuse qu\'on le prétend ? Pour cela, il faut d\'abord en comprendre le fonctionnement.\r\nParmi les manières de produire de l’énergie avec le nucléaire, il y a la fission, et la fusion.</p>\r\n\r\n<p>La fission, c\'est le fait de casser en deux un noyau lourd à l’aide d\'un neutron, cette réaction émet une très forte production de chaleur et l\'émission de deux neutrons, ce qui permet une réaction en chaîne.\r\nDans les centrales nucléaires, en général, ce sont généralement des noyaux d’uranium qui sont cassés en des isotopes du krypton et du baryum).\r\nUn des avantages de la fission, c\'est que nous la maîtrisons, et nous sommes capables donc de l\'utiliser pour produire de l\'énergie (centrales nucléaires actuelles).\r\nLes désavantages de la fission, c\'est que nous ne savons pas encore comment se débarrasser proprement des déchets nucléaires, et que nos réserves d\'uranium sont assez limitées sur Terre, de plus, les dégâts d\'un potentiel accident sont dévastateurs (Fukushima , Tchernobyl). Malgré cela, des projets de stockage à long terme (≈ 300 000 ans) sont étudiés, particulièrement à Bure dans la Meuse où un centre de recherche a été installé pour étudier la question, et des réacteurs plus sûrs et moins polluants (EPR) commencent à être construits à travers le globe.</p>\r\n\r\n<p>Au contraire, la fusion, c\'est le fait de fusionner deux atomes légers en un atome plus lourd.\r\nL\'exemple le plus flagrant est le Soleil. A l\'intérieur de notre étoile, il y a à chaque instant des milliards de réactions de fusion entre deux atomes d\'hydrogène qui forment un atome d\'hélium (le cas le plus général et le plus simple), et cela émet énormément énergie, beaucoup plus que la fission. \r\nActuellement, des recherches sont en cours ; par exemple, au sud de la France, on est en train de construire un Tokamak (projet ITER), le but étant de faire fusionner ensemble des noyaux de deutérium et tritium (qui sont des isotopes de l’hydrogène) afin de créer un noyau d’hélium.\r\nLes avantages de la fusion, c\'est qu\'elle libère beaucoup plus d\'énergie que la fission (car la différence d’énergie entre les atomes de deutérium et de tritium et l’atome d’hélium est plus grande que la différence d’énergie entre de l’Uranium et des isotopes du krypton et du baryum) : on a des rendements bien plus intéressants.\r\nAussi, elle ne pollue quasiment pas, et les réserves de deutérium et tritium sont telles que nous en avons pour plusieurs millions d\'années à tout utiliser.\r\nDe plus, si jamais il y a un accident, les dégâts ne toucheront que le réacteur lui même, car il n’y a pas de déchets radioactifs.\r\nLes désavantages de la fusion, c\'est que pour l\'instant, nous ne la maîtrisons pas encore assez pour pouvoir espérer produire de l’énergie avec, car les tokamaks consomment plus d\'énergie qu\'ils en produisent, la seule solution étant de les faire à grande échelle pour compenser la gourmandise énergétique de l\'installation, comme le fait ITER.</p>\r\n\r\n<p>Ainsi, nous venons de voir que le nucléaire est une très bonne source d’énergie, surtout au niveau écologique/environnemental, et même si ce n’est pas encore la source d’énergie parfaite, elle a quand même un bien moindre impact sur l’environnement que les hydrocarbures et un rendement meilleur que des sources d’énergie renouvelables, comme l’éolien ou le photovoltaïque. Car à notre époque, il paraît plus intéressant de promouvoir l\'écologie à court terme (nucléaire) que celle à long terme (énergies fossiles polluantes mais sans déchets).</p>\r\n\r\n<p>Mais il y a quand même d’autres sources d’énergie intéressantes, comme l’énergie hydraulique par exemple, qui représente un grand atout dont nous parlerons dans notre prochain numéro.</p>\r\n\r\n<p class="aligndroite">Nathan</p>\r\n\r\n<h3>Sources :</h3>\r\n\r\n<ul>\r\n<li><a href="https://fr.wikipedia.org/wiki/Fusion_nucléaire">fr.wikipedia.org/wiki/Fusion_nucléaire</a></li>\r\n<li><a href="https://nuclear.duke-energy.com/2013/01/30/fission-vs-fusion-whats-the-difference">https://nuclear.duke-energy.com/2013/01/30/fission-vs-fusion-whats-the-difference</a></li>\r\n<li><a href="https://fr.wikipedia.org/wiki/Fission_nucléaire">fr.wikipedia.org/wiki/Fission_nucléaire</a></li>\r\n</ul>', 4, '2021-01-16', '19:40:07'),
(3, 2, '<p>Haïs par beaucoup, vénéré par d’autres, le glyphosate est aujourd’hui le symbole des pesticides et de l’agriculture industrielle. Au parlement européen, la question de l’interdiction de ce produit revient régulièrement. Mais qu’en est-il vraiment ? Quel est son réel impact environnemental ? Existe-t-il des alternatives ? Faut-il réellement l’interdire ?</p>\r\n\r\n<p>Tout d’abord, commençons par poser quelques bases. Le glyphosate est un herbicide (désherbant) de synthèse, actuellement le plus utilisé au monde avec près de 720 000 tonnes de produit écoulé en 2018 (et près de 9 000 tonnes en France en 2017). Sa molécule a été découverte en 1950 par Henri Martin (chimiste suisse) et quelques années plus tard ses propriétés désherbante fût mises en évidence par John Franz, qui travaillait pour la tristement célèbre multinationale « Monsanto ». C’est ainsi que le glyphosate fut commercialisé en étant mélangé à d’autres produits augmentant son efficacité en 1974 sous le nom de « roundup » (tombée dans le domaine public en 2000, cette molécule ne rapporte plus rien a Monsanto). Son fonctionnement se base sur un blocage d’une enzyme présente essentiellement  dans les plantes, ce qui en fait un produit <strong>peu dangereux pour les animaux</strong>. Aujourd’hui nous remarquons que de plus en plus de personnes réclament son interdiction et celles-ci justifient son interdiction en donnant 3 arguments principaux : il « menace notre santé » (citations provenant du site d’Europe écologie les verts), il « menace les animaux et les plantes » et « il existe des alternatives meilleures pour l’environnement». Vérifions alors tout ça.&gt;</p>\r\n\r\n<p>De nombreuses études on été faites sur les impacts du glyphosate sur la santé humaine mais il n’y a aujourd’hui encore aucun consensus scientifique sur cette question, les conclusions étant contradictoires... et encore aujourd’hui des études sont en œuvre pour évaluer sa toxicité… Petit résumé donc :</p>\r\n\r\n<ul>\r\n<li>En 2009 , dans « The WHO Recommended Classification of Pesticides by Hazard », l’OMS (l’Organisation Mondiale de la Santé) classa le glyphosate dans le groupe III des pesticides, le groupe des pesticides « Slightly hazardous » (légèrement dangereux).</li>\r\n<li>En Mars 2015, Le CIRC (Centre International de Recherche sur le Cancer) le définît comme cancérogène « probable ». Cependant, dans la même année, en novembre, l’EFSA (l’autorité Européenne de sécurité des aliments) déclara le glyphosate comme non cancérigène.</li>\r\n<li>En Mai 2016 l’OMS le considéra comme « improbable cancérigène par voie alimentaire ».</li>\r\n<li>En mars 2017 , l’ECHA (l’agence Européenne des produits chimiques) déclara le glyphosate comme « non cancérigène ».</li>\r\n</ul>\r\n\r\n<p>Difficile de se faire un avis tranché… Mais ce n’est pas tout ! Le pire dans cette histoire est que nous pouvons remettre en cause chaque affirmations ! Et effectivement, d’une part celles disant que le glyphosate n’est pas cancérigène en pensant que les études qui ont conclus cela ont été financée par l’industrie du glyphosate et donc que l’étude fût biaisée, et d’une autre part celles concluant que le glyphosate est nocif en disant que la dose auxquelles les consommateurs sont exposée sont minimes voir négligeable (ce qui fait l’impact c’est la dose, et oui, même l’eau en grande quantité peut être toxique !).\r\nAinsi, nous pouvons conclure qu’il est difficile de savoir quel est sa réelle influence sur notre santé... mais que, si cette substance est utilisée <strong>convenablement</strong> avec un dosage adéquat, les doses auxquelles nous sommes exposés en tant que consommateurs sont <strong>négligeables</strong> et l’argument seul de l’impact sur la santé <strong>ne suffit pas à justifier son interdiction</strong> (il pourrait en revanche justifier des restrictions sur son utilisations pour minimiser l’exposition auxquels nous sommes confrontés).</p>\r\n\r\n<p>Quand à son impact sur l’environnement, il est là encore difficile de savoir exactement sa dangerosité. Mais nous pouvons remarquer tout d’abord que sa <strong>molécule</strong> (C<em>3H</em>8NO_5P) <strong>ne contient aucun métaux lourds</strong>, qui pourraient rester et polluer les sols lors de la dégradation de la molécule, et que celle ci se <strong>dégrade facilement par la biologie du sol</strong> (la quantité de glyphosate est divisée par 1000 tout les ans dans un sol, contrairement à la bouille bordelaise (fongicide) par exemple, largement utilisée en agriculture biologique, qui contient du cuivre qui va rester dans le sol et le polluer). <strong>Le glyphosate n’engendre donc pas de pollution irréversible</strong>.</p>\r\n\r\n<p>La molécule est de plus en plus présente dans les nappes phréatiques, les rivières, les courts d’eau… mais encore une fois les doses sont négligeables par rapports aux doses catastrophiques de nitrates retrouvées dans certaines régions. \r\nAussi, Il est souvent dit que cette molécule « stérilise » un sol agricole en lui privant de ses micros organismes. Pourtant,  des analyses sur des sols d’agriculteurs qui pratiquent le « semis direct » (technique de culture qui consiste à ne pas travailler les sols, à le nourrir et à le couvrir que l’on développera dans un prochain numéro) avec une utilisation régulière de glyphosate, ont montré qu’il y avait une quantité de micro organismes et de vers de terre comparable à celle que l’on peut voir dans un sol de prairie naturelle. Ainsi, le glyphosate ne serait donc <strong>pas si destructeur que ce que l’on peut entendre</strong> par rapport à d’autres pesticides autorisés. D’ailleurs, ses conséquences sur l’environnement sont si faibles que si l’on devait l’interdire, on devrait alors , si l’on est cohérent, interdire tout les insecticides et fongicides plus polluant que lui en agriculture, ce qui ferait de toute les exploitations agricoles des fermes bio, qui ne produirait plus assez pour que la France garde sa sécurité alimentaire, et il faudrait importer encore plus de nourriture (ce qui n’est pas bien pour le bilan carbone), mais c’est un autre débat (que nous aborderons dans un prochain numéro). L’argument de la pollution qu’engendre le glyphosate n’est donc pas un argument justifiant non plus son interdiction.</p>\r\n\r\n<p>Passons au dernier argument principal… Existe-t-il alors des alternatives plus respectueuses de l’environnement ? Là est tout le problème. Pour pour ce qui est des alternatives chimiques, il n’y en a pas qui soit suffisamment économiquement viable pour l’agriculture et qui soit meilleures pour l’environnement. Et pour ce qui est des alternative techniques, on entend partout « l’agriculture biologique, ça marche ça ! » et « la permaculture, ça marche aussi ça ! »… Sauf que dans ces affirmations principales que l’on entend régulièrement ne sont pas, à court terme, viables. Pour le cas de l’agriculture biologique, lorsqu’il s’agit de faire du maraîchage (cultures de légumes et de fruit sur petites surface),  vis à vis de l’environnement, il peut il y avoir de très bon résultats. Mais lorsqu’il s’agit de cultiver des céréales, les résultats sur l’environnement manquent à l’appel (et les rendements aussi), on en parlera dans un prochain numéro… Quand à la permaculture, cela pourrais fonctionner mais à grande échelle cela prendrais très longtemps à se mettre en place… chacun ne pouvant obtenir rapidement de surfaces à cultiver... <b>Les alternatives au glyphosate ne sont donc pas réellement viable</b>.</p>\r\n\r\n<p>Alors, faut il vraiment l’interdire ? A <b>long terme, la réponse est oui</b>. Mais à <b>court terme</b>, en raison de l’absence d’alternatives, de la nécessité absolue du glyphosate en « semis direct sous couvert végétal » - qui n’est peut être que la seule agriculture céréalière à grande échelle réellement durable - et de son impact relativement faible sur l’environnement et sur l’homme lorsqu’il est utilisé correctement, <b>la réponse est non­</b>.</p>\r\n\r\n<p class="justify-content-end"><i>Sol nu, sol foutu</i><br /> Hector Leclerc</p>\r\n\r\n<h3>Sources</h3>\r\n\r\n<ul>\r\n<li>Ver de terre production et travaux de Lucien Seguy</li>\r\n<li>The WHO recommended classification of pesticides by hazard and guidelines to classification 2009 - OMS</li>\r\n<li>(https://fr.wikipedia.org/wiki/Glyphosate)</li>\r\n<li>(https://www.terre-net.fr/observatoire-technique-culturale/strategie-technique-culturale/article/le-glyphosate-ne-nuit-pas-a-la-vie-du-sol-contrairement-aux-engrais-et-au-labour-217-126581.html)</li>\r\n<li>(https://hal.univ-lorraine.fr/tel-01752951/document)</li>\r\n<li>(https://www.francetvinfo.fr/sante/environnement-et-sante/)glyphosate-une-nouvelle-etude-independante-pour-evaluer-sa-dangerosite_3209555.html)</li>\r\n</ul>\r\n', 3, '2020-02-17', '12:32:51'),
(4, 3, '<p>Les ordinateurs ont besoin de systèmes d\'exploitation pour pouvoir être utilisés, et parmi ceux-là, on retrouve Windows et Linux ( on ne parlera pas de Mac ici, peut-être dans un prochain article ;) ). Mais lequel est le plus adapté pour vous ?</p>\r\n\r\n<h3>Le prix</h3>\r\n\r\n<p>Contrairement à Windows, dont le prix officiel varie de 145 à 256€ en fonction des licenses sur la <a href="https://www.microsoft.com/fr-fr/store/b/windows?irgwc=1&amp;OCID=AID2000142_aff_7809_1246483&amp;tduid=%28ir__phoorqywuskftwktkk0sohz3zv2xiogz26ns9gph00%29%287809%29%281246483%29%28%284e1f584396a15dee536e386078146dbb%29%28152407%29%28999853%29%28%29%28%29%29%284e1f584396a15dee536e386078146dbb%29&amp;irclickid=_phoorqywuskftwktkk0sohz3zv2xiogz26ns9gph00">boutique microsoft</a> (oui, on peut en trouver moins cher si l\'on cherche sur Internet, mais attention quand même aux offres trop belles pour être vraies ou vraiment légales ;) ), la majorité des distributions Linux sont gratuites. Avec Linux, vous n\'avez pas besoin de sortir le porte-monnaie pour avoir un système d\'exploitation stable et complet :) .</p>\r\n\r\n<h3>Il n\'y a pas qu\'une seule distribution basée sur le noyau Linux</h3>\r\n\r\n<p>En effet, le monde de Linux est vaste, et il n\'y a pas qu\'un seul système d\'exploitation basé sur Linux, il y en a plusieurs, et pour citer les plus célèbres : Ubuntu, Debian, Arch, Fedora, OpenSuse, Mint, ...\r\nEt chacun à ses qualités et ses défauts, et vous pouvez choisir lequel vous convient le mieux pour votre utilisation quotidienne ou professionnelle.</p>\r\n\r\n<h3>La facilité d\'utilisation</h3>\r\n\r\n<p>Contrairement aux idées reçues, il y a des distributions Linux faciles d\'utilisation, en 2020, plus besoin d\'être un <em>nerd</em> pour pouvoir utiliser Linux. Par exemple, les développeurs d\'Ubuntu ont fait de gros efforts au niveau de l\'utilisation de ce système.\r\nMême si Windows vous permet de faire beaucoup de choses simplement avec votre souris, avec Linux aussi, vous n\'êtes pas obligés d\'utiliser une console pour une utilisation basique. Mais cette dernière, très puissante sur Linux, permet de faire des choses très rapidement.</p>\r\n\r\n<h3>les applications</h3>\r\n\r\n<p>En effet, dû à sa longue domination du marché, quasiment toutes les nouvelles applications qui sortent tournent sur Windows, et pas forcément sur Linux, même si le cross-compiling existe ( pas besoin de développer plusieurs fois vos applications ), mais ce dernier présente quand même des limites.Vous avez aussi sur Windows pleins d\'applications fares, qui ne sont pas compatibles Linux comme la célèbre suite Microsoft Office (Word, Excel, PowerPoint…) , ou encore les suites Adobes.\r\nMais il y a quand même des applications pour Linux, vous pouvez faire de la bureautique avec OpenOffice, ou LibreOffice, éditer des photos avec Gimp, créer de la 3d avec Blender, éditer des vidéos avec OpenShot ( même si là, j\'avoue que les applications Adobe sont meilleures pour le montage vidéo ;) ), éditer des fichiers audio avec Audacity ...</p>\r\n\r\n<h3>Les mises à jour</h3>\r\n\r\n<p>Vous en avez assez des mises à jour abusives de Windows, qui vous coupent de votre travail et qui rend votre ordinateur inutilisable pendant un certain moment sans prévenir ? \r\nSur Linux, vous avez un contrôle total sur vos mises à jour, c\'est vous qui décidez de les faire, quand les faires, et lesquelles faire.\r\nMais je tiens quand même à préciser que les mises à jour sont importantes et que c\'est risqué de ne pas les faires, car elles apportent souvent des correctifs de sécurité nécéssaires pour votre ordinateur.</p>\r\n\r\n<h3>La customisation</h3>\r\n\r\n<p>Ça commence à être un peu redondant, mais avec une distribution Linux, si jamais vous avez un problème, ou vous n\'aimez tout simplement pas l\'interface graphique actuelle de votre Linux, et bien vous pouvez la changer assez facilement. Par exemple, vous n\'aimez pas l\'interface GNOME, et bien en quelques manipulations, vous pouvez la changer en une autre, par exemple : Lxde, KDE, ou d\'autres.\r\nAvec Linux, vous pouvez même utiliser votre ordinateur sans aucune interface graphique !</p>\r\n\r\n<h3>La sécurité</h3>\r\n\r\n<p>Sur Linux, vous pouvez être tranquille niveau sécurité, le noyau Linux est très bien sécurisé, et grâce à l\'open source, beaucoup de personnes compétentes peuvent vérifier le noyau linux afin d\'y trouver des problèmes et de les corriger. Alors que Microsoft cache le code de son système, donc les problèmes sont bien plus durs à trouver, et il faut attendre que les développeurs de Microsoft corrigent le bug s\'ils le veulent bien.\r\nEn plus, Windows étant l\'un des OS les plus utilisés, c\'est aussi l\'un des plus visés des hackers.\r\nAussi, le système Linux étant bien organisé et sécurisé, vous n\'avez même pas besoin d\'antivirus, alors que sur Windows, entre Windows Defender qui prend 20% de vos performances en continu, ou Avast qui est lui-même un virus...</p>\r\n\r\n<h3>La vie privée</h3>\r\n\r\n<p>Eh oui, c\'est connu, Windows ne se gêne pas pour vous espionner, pour vous piquer vos données, savoir quelles applications vous utilisez, et pendant combien de temps, savoir à qui vous parlez et qu\'est-ce que vous dîtes, fouiller vos fichiers persos... En effet, Microsoft sait tout de vous. Et même s\'il est possible de désactiver certaines options dans les paramètres, Microsoft vous espionne quand même, et vu que le code de Windows est caché, qui sait ce qu\'ils peuvent bien faire...\r\nAlors qu\'avec un système Linux, vous pouvez être tranquille de ce côté-là, et si vous ne me croyez pas, vous pouvez allez voir vous-même le code de votre système d\'exploitation ;).</p>\r\n\r\n<h3>Les performances</h3>\r\n\r\n<p>Toutes les distributions Linux sont toutes différentes, et si certaines demandent pas mal de ressources, il y en a qui sont très légères, et qui peuvent tourner sur des vieux PC.</p>\r\n\r\n<p>Par exemple,</p>\r\n\r\n<h4>Voici la configuration minimum de Windows 10...</h4>\r\n\r\n<ul>\r\n<li><strong>CPU :</strong> 1 GHz ou +</li>\r\n<li><strong>RAM :</strong> 2 GB RAM</li>\r\n<li><strong>Espace Disque :</strong> 16 GB (32-bit) ou 20 GB (64-bit)</li>\r\n</ul>\r\n\r\n<p>Et du côté de Linux,</p>\r\n\r\n<h4>Voici la configuration minimale de Lubuntu 16.04...</h4>\r\n\r\n<ul>\r\n<li><strong>RAM :</strong> 512 MB ( 1 GB recommandé )</li>\r\n<li><strong>CPU :</strong> pentium 4 ou Pentium M ou AMD K8</li>\r\n</ul>\r\n\r\n<h4>...Ou celle de Zorin OS Lite</h4>\r\n\r\n<ul>\r\n<li><strong>RAM :</strong> 512 MB</li>\r\n<li><strong>CPU :</strong> 700 MHz 1 Coeur</li>\r\n<li><strong>Espace Disque :</strong> 8 GB</li>\r\n</ul>\r\n\r\n<h4>...Ou même celle de Puppy Linux</h4>\r\n\r\n<ul>\r\n<li><strong>RAM :</strong> 256 MB</li>\r\n<li><strong>CPU :</strong> 600 MHz</li>\r\n</ul>\r\n\r\n<p>Et si l\'on veut même aller plus loin, il y a une distribution linux qui s\'appelle Damn Small Linux, et qui tourne avec des processeurs qui datent de 1989, et qui ne demande que 8 MB de RAM minimum pour une utilisation basique, et 16 MB si l\'on veut aller sur le web.</p>\r\n\r\n<h3>Les jeux</h3>\r\n\r\n<p>Bon sur ce point, je le concède, Windows est meilleur que Linux, mais ce dernier n\'est pas non plus a la ramasse, et s\'il n\'y a pas un catalogue bien fourni de jeux natifs sur Linux, une grande majorité des jeux steam tournent sur Linux grâce à Proton, et bien d\'autres qui ne sont pas sur steam tournent sur Linux grâce à wine. Des logiciels ont étés crées pour rendre les jeux plus accessibles sur Linux, conne Lutris par exemple.</p>\r\n\r\n<p>Pour conclure, chaque système d\'exploitation a ses qualités et ses défauts, et chacun est libre de choisir son système d\'exploitation sur son ordinateur, même si la plupart des ordinateurs ont déjà Windows 10 préinstallé.</p>\r\n\r\n<p class="justify-content-end">Nathan</p>\r\n\r\n<h3>Sources</h3>\r\n\r\n<ul>\r\n<li>https://www.google.com/amp/s/www.systemrequirementslab.com/cyri/requirements/windows-10/13543/amp</li>\r\n<li>https://lubuntu.me/xenial-released/</li>\r\n<li>https://itsfoss.com/lightweight-linux-beginners/</li>\r\n<li>https://simple.m.wikipedia.org/wiki/Damn<em>Small</em>Linux</li>\r\n</ul>\r\n', 2, '2020-02-17', '13:02:10'),
(5, 3, '<p>Les ordinateurs ont besoin de systèmes d\'exploitation pour pouvoir être utilisés, et parmi ceux-là, on retrouve Windows et Linux ( on ne parlera pas de Mac ici, peut-être dans un prochain article ;) ). Mais lequel est le plus adapté pour vous ?</p>\r\n\r\n<h3>Le prix</h3>\r\n\r\n<p>Contrairement à Windows, dont le prix officiel varie de 145 à 256€ en fonction des licenses sur la <a href="https://www.microsoft.com/fr-fr/store/b/windows?irgwc=1&OCID=AID2000142_aff_7809_1246483&tduid=%28ir__phoorqywuskftwktkk0sohz3zv2xiogz26ns9gph00%29%287809%29%281246483%29%28%284e1f584396a15dee536e386078146dbb%29%28152407%29%28999853%29%28%29%28%29%29%284e1f584396a15dee536e386078146dbb%29&irclickid=_phoorqywuskftwktkk0sohz3zv2xiogz26ns9gph00">boutique microsoft</a> (oui, on peut en trouver moins cher si l\'on cherche sur Internet, mais attention quand même aux offres trop belles pour être vraies ou vraiment légales ;) ), la majorité des distributions Linux sont gratuites. Avec Linux, vous n\'avez pas besoin de sortir le porte-monnaie pour avoir un système d\'exploitation stable et complet :) .</p>\r\n\r\n<h3>Il n\'y a pas qu\'une seule distribution basée sur le noyau Linux</h3>\r\n\r\n<p>En effet, le monde de Linux est vaste, et il n\'y a pas qu\'un seul système d\'exploitation basé sur Linux, il y en a plusieurs, et pour citer les plus célèbres : Ubuntu, Debian, Arch, Fedora, OpenSuse, Mint, ...\r\nEt chacun à ses qualités et ses défauts, et vous pouvez choisir lequel vous convient le mieux pour votre utilisation quotidienne ou professionnelle.</p>\r\n\r\n<h3>La facilité d\'utilisation</h3>\r\n\r\n<p>Contrairement aux idées reçues, il y a des distributions Linux faciles d\'utilisation, en 2020, plus besoin d\'être un <em>nerd</em> pour pouvoir utiliser Linux. Par exemple, les développeurs d\'Ubuntu ont fait de gros efforts au niveau de l\'utilisation de ce système.\r\nMême si Windows vous permet de faire beaucoup de choses simplement avec votre souris, avec Linux aussi, vous n\'êtes pas obligés d\'utiliser une console pour une utilisation basique. Mais cette dernière, très puissante sur Linux, permet de faire des choses très rapidement.</p>\r\n\r\n<h3>les applications</h3>\r\n\r\n<p>En effet, dû à sa longue domination du marché, quasiment toutes les nouvelles applications qui sortent tournent sur Windows, et pas forcément sur Linux, même si le cross-compiling existe ( pas besoin de développer plusieurs fois vos applications ), mais ce dernier présente quand même des limites.Vous avez aussi sur Windows pleins d\'applications fares, qui ne sont pas compatibles Linux comme la célèbre suite Microsoft Office (Word, Excel, PowerPoint…) , ou encore les suites Adobes.\r\nMais il y a quand même des applications pour Linux, vous pouvez faire de la bureautique avec OpenOffice, ou LibreOffice, éditer des photos avec Gimp, créer de la 3d avec Blender, éditer des vidéos avec OpenShot ( même si là, j\'avoue que les applications Adobe sont meilleures pour le montage vidéo ;) ), éditer des fichiers audio avec Audacity ...</p>\r\n\r\n<h3>Les mises à jour</h3>\r\n\r\n<p>Vous en avez assez des mises à jour abusives de Windows, qui vous coupent de votre travail et qui rend votre ordinateur inutilisable pendant un certain moment sans prévenir ? \r\nSur Linux, vous avez un contrôle total sur vos mises à jour, c\'est vous qui décidez de les faire, quand les faires, et lesquelles faire.\r\nMais je tiens quand même à préciser que les mises à jour sont importantes et que c\'est risqué de ne pas les faires, car elles apportent souvent des correctifs de sécurité nécéssaires pour votre ordinateur.</p>\r\n\r\n<h3>La customisation</h3>\r\n\r\n<p>Ça commence à être un peu redondant, mais avec une distribution Linux, si jamais vous avez un problème, ou vous n\'aimez tout simplement pas l\'interface graphique actuelle de votre Linux, et bien vous pouvez la changer assez facilement. Par exemple, vous n\'aimez pas l\'interface GNOME, et bien en quelques manipulations, vous pouvez la changer en une autre, par exemple : Lxde, KDE, ou d\'autres.\r\nAvec Linux, vous pouvez même utiliser votre ordinateur sans aucune interface graphique !</p>\r\n\r\n<h3>La sécurité</h3>\r\n\r\n<p>Sur Linux, vous pouvez être tranquille niveau sécurité, le noyau Linux est très bien sécurisé, et grâce à l\'open source, beaucoup de personnes compétentes peuvent vérifier le noyau linux afin d\'y trouver des problèmes et de les corriger. Alors que Microsoft cache le code de son système, donc les problèmes sont bien plus durs à trouver, et il faut attendre que les développeurs de Microsoft corrigent le bug s\'ils le veulent bien.\r\nEn plus, Windows étant l\'un des OS les plus utilisés, c\'est aussi l\'un des plus visés des hackers.\r\nAussi, le système Linux étant bien organisé et sécurisé, vous n\'avez même pas besoin d\'antivirus, alors que sur Windows, entre Windows Defender qui prend 20% de vos performances en continu, ou Avast qui est lui-même un virus...</p>\r\n\r\n<h3>La vie privée</h3>\r\n\r\n<p>Eh oui, c\'est connu, Windows ne se gêne pas pour vous espionner, pour vous piquer vos données, savoir quelles applications vous utilisez, et pendant combien de temps, savoir à qui vous parlez et qu\'est-ce que vous dîtes, fouiller vos fichiers persos... En effet, Microsoft sait tout de vous. Et même s\'il est possible de désactiver certaines options dans les paramètres, Microsoft vous espionne quand même, et vu que le code de Windows est caché, qui sait ce qu\'ils peuvent bien faire...\r\nAlors qu\'avec un système Linux, vous pouvez être tranquille de ce côté-là, et si vous ne me croyez pas, vous pouvez allez voir vous-même le code de votre système d\'exploitation ;).</p>\r\n\r\n<h3>Les performances</h3>\r\n\r\n<p>Toutes les distributions Linux sont toutes différentes, et si certaines demandent pas mal de ressources, il y en a qui sont très légères, et qui peuvent tourner sur des vieux PC.</p>\r\n\r\n<p>Par exemple,</p>\r\n\r\n<h4>Voici la configuration minimum de Windows 10...</h4>\r\n\r\n<ul>\r\n<li><strong>CPU :</strong> 1 GHz ou +</li>\r\n<li><strong>RAM :</strong> 2 GB RAM</li>\r\n<li><strong>Espace Disque :</strong> 16 GB (32-bit) ou 20 GB (64-bit)</li>\r\n</ul>\r\n\r\n<p>Et du côté de Linux,</p>\r\n\r\n<h4>Voici la configuration minimale de Lubuntu 16.04...</h4>\r\n\r\n<ul>\r\n<li><strong>RAM :</strong> 512 MB ( 1 GB recommandé )</li>\r\n<li><strong>CPU :</strong> pentium 4 ou Pentium M ou AMD K8</li>\r\n</ul>\r\n\r\n<h4>...Ou celle de Zorin OS Lite</h4>\r\n\r\n<ul>\r\n<li><strong>RAM :</strong> 512 MB</li>\r\n<li><strong>CPU :</strong> 700 MHz 1 Coeur</li>\r\n<li><strong>Espace Disque :</strong> 8 GB</li>\r\n</ul>\r\n\r\n<h4>...Ou même celle de Puppy Linux</h4>\r\n\r\n<ul>\r\n<li><strong>RAM :</strong> 256 MB</li>\r\n<li><strong>CPU :</strong> 600 MHz</li>\r\n</ul>\r\n\r\n<p>Et si l\'on veut même aller plus loin, il y a une distribution linux qui s\'appelle Damn Small Linux, et qui tourne avec des processeurs qui datent de 1989, et qui ne demande que 8 MB de RAM minimum pour une utilisation basique, et 16 MB si l\'on veut aller sur le web.</p>\r\n\r\n<h3>Les jeux</h3>\r\n\r\n<p>Bon sur ce point, je le concède, Windows est meilleur que Linux, mais ce dernier n\'est pas non plus a la ramasse, et s\'il n\'y a pas un catalogue bien fourni de jeux natifs sur Linux, une grande majorité des jeux steam tournent sur Linux grâce à Proton, et bien d\'autres qui ne sont pas sur steam tournent sur Linux grâce à wine. Des logiciels ont étés crées pour rendre les jeux plus accessibles sur Linux, conne Lutris par exemple.</p>\r\n\r\n<p>Pour conclure, chaque système d\'exploitation a ses qualités et ses défauts, et chacun est libre de choisir son système d\'exploitation sur son ordinateur, même si la plupart des ordinateurs ont déjà Windows 10 préinstallé.</p>\r\n\r\n<p class="justify-content-end">Nathan</p>\r\n\r\n<h3>Sources</h3>\r\n\r\n<ul>\r\n<li>https://www.google.com/amp/s/www.systemrequirementslab.com/cyri/requirements/windows-10/13543/amp</li>\r\n<li>https://lubuntu.me/xenial-released/</li>\r\n<li>https://itsfoss.com/lightweight-linux-beginners/</li>\r\n<li>https://simple.m.wikipedia.org/wiki/Damn<em>Small</em>Linux</li>\r\n</ul>\r\n', 4, '2021-01-17', '15:26:24'),
(16, 2, '<p>Haïs par beaucoup, vénéré par d’autres, le glyphosate est aujourd’hui le symbole des pesticides et de l’agriculture industrielle. Au parlement européen, la question de l’interdiction de ce produit revient régulièrement. Mais qu’en est-il vraiment ? Quel est son réel impact environnemental ? Existe-t-il des alternatives ? Faut-il réellement l’interdire ?</p>\r\n\r\n<p>Tout d’abord, commençons par poser quelques bases. Le glyphosate est un herbicide (désherbant) de synthèse, actuellement le plus utilisé au monde avec près de 720 000 tonnes de produit écoulé en 2018 (et près de 9 000 tonnes en France en 2017). Sa molécule a été découverte en 1950 par Henri Martin (chimiste suisse) et quelques années plus tard ses propriétés désherbante fût mises en évidence par John Franz, qui travaillait pour la tristement célèbre multinationale « Monsanto ». C’est ainsi que le glyphosate fut commercialisé en étant mélangé à d’autres produits augmentant son efficacité en 1974 sous le nom de « roundup » (tombée dans le domaine public en 2000, cette molécule ne rapporte plus rien a Monsanto). Son fonctionnement se base sur un blocage d’une enzyme présente essentiellement  dans les plantes, ce qui en fait un produit <strong>peu dangereux pour les animaux</strong>. Aujourd’hui nous remarquons que de plus en plus de personnes réclament son interdiction et celles-ci justifient son interdiction en donnant 3 arguments principaux : il « menace notre santé » (citations provenant du site d’Europe écologie les verts), il « menace les animaux et les plantes » et « il existe des alternatives meilleures pour l’environnement». Vérifions alors tout ça.></p>\r\n\r\n<p>De nombreuses études on été faites sur les impacts du glyphosate sur la santé humaine mais il n’y a aujourd’hui encore aucun consensus scientifique sur cette question, les conclusions étant contradictoires... et encore aujourd’hui des études sont en œuvre pour évaluer sa toxicité… Petit résumé donc :</p>\r\n\r\n<ul>\r\n<li>En 2009 , dans « The WHO Recommended Classification of Pesticides by Hazard », l’OMS (l’Organisation Mondiale de la Santé) classa le glyphosate dans le groupe III des pesticides, le groupe des pesticides « Slightly hazardous » (légèrement dangereux).</li>\r\n<li>En Mars 2015, Le CIRC (Centre International de Recherche sur le Cancer) le définît comme cancérogène « probable ». Cependant, dans la même année, en novembre, l’EFSA (l’autorité Européenne de sécurité des aliments) déclara le glyphosate comme non cancérigène.</li>\r\n<li>En Mai 2016 l’OMS le considéra comme « improbable cancérigène par voie alimentaire ».</li>\r\n<li>En mars 2017, l’ECHA (l’agence Européenne des produits chimiques) déclara le glyphosate comme « non cancérigène ».</li>\r\n</ul>\r\n\r\n<p>Difficile de se faire un avis tranché… Mais ce n’est pas tout ! Le pire dans cette histoire est que nous pouvons remettre en cause chaque affirmations ! Et effectivement, d’une part celles disant que le glyphosate n’est pas cancérigène en pensant que les études qui ont conclus cela ont été financée par l’industrie du glyphosate et donc que l’étude fût biaisée, et d’une autre part celles concluant que le glyphosate est nocif en disant que la dose auxquelles les consommateurs sont exposée sont minimes voir négligeable (ce qui fait l’impact c’est la dose, et oui, même l’eau en grande quantité peut être toxique !).\r\nAinsi, nous pouvons conclure qu’il est difficile de savoir quel est sa réelle influence sur notre santé... mais que, si cette substance est utilisée <strong>convenablement</strong> avec un dosage adéquat, les doses auxquelles nous sommes exposés en tant que consommateurs sont <strong>négligeables</strong> et l’argument seul de l’impact sur la santé <strong>ne suffit pas à justifier son interdiction</strong> (il pourrait en revanche justifier des restrictions sur son utilisations pour minimiser l’exposition auxquels nous sommes confrontés).</p>\r\n\r\n<p>Quand à son impact sur l’environnement, il est là encore difficile de savoir exactement sa dangerosité. Mais nous pouvons remarquer tout d’abord que sa <strong>molécule</strong> (C<em>3H</em>8NO_5P) <strong>ne contient aucun métaux lourds</strong>, qui pourraient rester et polluer les sols lors de la dégradation de la molécule, et que celle ci se <strong>dégrade facilement par la biologie du sol</strong> (la quantité de glyphosate est divisée par 1000 tout les ans dans un sol, contrairement à la bouille bordelaise (fongicide) par exemple, largement utilisée en agriculture biologique, qui contient du cuivre qui va rester dans le sol et le polluer). <strong>Le glyphosate n’engendre donc pas de pollution irréversible</strong>.</p>\r\n\r\n<p>La molécule est de plus en plus présente dans les nappes phréatiques, les rivières, les courts d’eau… mais encore une fois les doses sont négligeables par rapports aux doses catastrophiques de nitrates retrouvées dans certaines régions. \r\nAussi, Il est souvent dit que cette molécule « stérilise » un sol agricole en lui privant de ses micros organismes. Pourtant,  des analyses sur des sols d’agriculteurs qui pratiquent le « semis direct » (technique de culture qui consiste à ne pas travailler les sols, à le nourrir et à le couvrir que l’on développera dans un prochain numéro) avec une utilisation régulière de glyphosate, ont montré qu’il y avait une quantité de micro organismes et de vers de terre comparable à celle que l’on peut voir dans un sol de prairie naturelle. Ainsi, le glyphosate ne serait donc <strong>pas si destructeur que ce que l’on peut entendre</strong> par rapport à d’autres pesticides autorisés. D’ailleurs, ses conséquences sur l’environnement sont si faibles que si l’on devait l’interdire, on devrait alors , si l’on est cohérent, interdire tout les insecticides et fongicides plus polluant que lui en agriculture, ce qui ferait de toute les exploitations agricoles des fermes bio, qui ne produirait plus assez pour que la France garde sa sécurité alimentaire, et il faudrait importer encore plus de nourriture (ce qui n’est pas bien pour le bilan carbone), mais c’est un autre débat (que nous aborderons dans un prochain numéro). L’argument de la pollution qu’engendre le glyphosate n’est donc pas un argument justifiant non plus son interdiction.</p>\r\n\r\n<p>Passons au dernier argument principal… Existe-t-il alors des alternatives plus respectueuses de l’environnement ? Là est tout le problème. Pour pour ce qui est des alternatives chimiques, il n’y en a pas qui soit suffisamment économiquement viable pour l’agriculture et qui soit meilleures pour l’environnement. Et pour ce qui est des alternative techniques, on entend partout « l’agriculture biologique, ça marche ça ! » et « la permaculture, ça marche aussi ça ! »… Sauf que dans ces affirmations principales que l’on entend régulièrement ne sont pas, à court terme, viables. Pour le cas de l’agriculture biologique, lorsqu’il s’agit de faire du maraîchage (cultures de légumes et de fruit sur petites surface),  vis à vis de l’environnement, il peut il y avoir de très bon résultats. Mais lorsqu’il s’agit de cultiver des céréales, les résultats sur l’environnement manquent à l’appel (et les rendements aussi), on en parlera dans un prochain numéro… Quand à la permaculture, cela pourrais fonctionner mais à grande échelle cela prendrais très longtemps à se mettre en place… chacun ne pouvant obtenir rapidement de surfaces à cultiver... <b>Les alternatives au glyphosate ne sont donc pas réellement viable</b>.</p>\r\n\r\n<p>Alors, faut il vraiment l’interdire ? A <b>long terme, la réponse est oui</b>. Mais à <b>court terme</b>, en raison de l’absence d’alternatives, de la nécessité absolue du glyphosate en « semis direct sous couvert végétal » - qui n’est peut être que la seule agriculture céréalière à grande échelle réellement durable - et de son impact relativement faible sur l’environnement et sur l’homme lorsqu’il est utilisé correctement, <b>la réponse est non­</b>.</p>\r\n\r\n<p class="justify-content-end"><i>Sol nu, sol foutu</i><br /> Hector Leclerc</p>\r\n\r\n<h3>Sources</h3>\r\n\r\n<ul>\r\n<li>Ver de terre production et travaux de Lucien Seguy</li>\r\n<li>The WHO recommended classification of pesticides by hazard and guidelines to classification 2009 - OMS</li>\r\n<li>(https://fr.wikipedia.org/wiki/Glyphosate)</li>\r\n<li>(https://www.terre-net.fr/observatoire-technique-culturale/strategie-technique-culturale/article/le-glyphosate-ne-nuit-pas-a-la-vie-du-sol-contrairement-aux-engrais-et-au-labour-217-126581.html)</li>\r\n<li>(https://hal.univ-lorraine.fr/tel-01752951/document)</li>\r\n<li>(https://www.francetvinfo.fr/sante/environnement-et-sante/)glyphosate-une-nouvelle-etude-independante-pour-evaluer-sa-dangerosite_3209555.html)</li>\r\n</ul>\r\n', 4, '2021-01-17', '15:54:20');
INSERT INTO `articles-contents` (`id`, `article`, `content`, `author`, `date`, `time`) VALUES
(17, 2, '<p>Haïs par beaucoup, vénéré par d’autres, le glyphosate est aujourd’hui le symbole des pesticides et de l’agriculture industrielle. Au parlement européen, la question de l’interdiction de ce produit revient régulièrement. Mais qu’en est-il vraiment ? Quel est son réel impact environnemental ? Existe-t-il des alternatives ? Faut-il réellement l’interdire ?</p>\r\n\r\n<p>Tout d’abord, commençons par poser quelques bases. Le glyphosate est un herbicide (désherbant) de synthèse, actuellement le plus utilisé au monde avec près de 720 000 tonnes de produit écoulé en 2018 (et près de 9 000 tonnes en France en 2017). Sa molécule a été découverte en 1950 par Henri Martin (chimiste suisse) et quelques années plus tard ses propriétés désherbante fût mises en évidence par John Franz, qui travaillait pour la tristement célèbre multinationale « Monsanto ». C’est ainsi que le glyphosate fut commercialisé en étant mélangé à d’autres produits augmentant son efficacité en 1974 sous le nom de « roundup » (tombée dans le domaine public en 2000, cette molécule ne rapporte plus rien a Monsanto). Son fonctionnement se base sur un blocage d’une enzyme présente essentiellement  dans les plantes, ce qui en fait un produit <strong>peu dangereux pour les animaux</strong>. Aujourd’hui nous remarquons que de plus en plus de personnes réclament son interdiction et celles-ci justifient son interdiction en donnant 3 arguments principaux : il « menace notre santé » (citations provenant du site d’Europe écologie les verts), il « menace les animaux et les plantes » et « il existe des alternatives meilleures pour l’environnement». Vérifions alors tout ça.></p>\r\n\r\n<p>De nombreuses études on été faites sur les impacts du glyphosate sur la santé humaine mais il n’y a aujourd’hui encore aucun consensus scientifique sur cette question, les conclusions étant contradictoires... et encore aujourd’hui des études sont en œuvre pour évaluer sa toxicité… Petit résumé donc :</p>\r\n\r\n<ul>\r\n<li>En 2009 , dans « The WHO Recommended Classification of Pesticides by Hazard », l’OMS (l’Organisation Mondiale de la Santé) classa le glyphosate dans le groupe III des pesticides, le groupe des pesticides « Slightly hazardous » (légèrement dangereux).</li>\r\n<li>En Mars 2015, Le CIRC (Centre International de Recherche sur le Cancer) le définît comme cancérogène « probable ». Cependant, dans la même année, en novembre, l’EFSA (l’autorité Européenne de sécurité des aliments) déclara le glyphosate comme non cancérigène.</li>\r\n<li>En Mai 2016 l’OMS le considéra comme « improbable cancérigène par voie alimentaire ».</li>\r\n<li>En mars 2017, l’ECHA (l’agence Européenne des produits chimiques) déclara le glyphosate comme « non cancérigène ».</li>\r\n</ul>\r\n\r\n<p>Difficile de se faire un avis tranché… Mais ce n’est pas tout ! Le pire dans cette histoire est que nous pouvons remettre en cause chaque affirmations ! Et effectivement, d’une part celles disant que le glyphosate n’est pas cancérigène en pensant que les études qui ont conclus cela ont été financée par l’industrie du glyphosate et donc que l’étude fût biaisée, et d’une autre part celles concluant que le glyphosate est nocif en disant que la dose auxquelles les consommateurs sont exposée sont minimes voir négligeable (ce qui fait l’impact c’est la dose, et oui, même l’eau en grande quantité peut être toxique !).\r\nAinsi, nous pouvons conclure qu’il est difficile de savoir quel est sa réelle influence sur notre santé... mais que, si cette substance est utilisée <strong>convenablement</strong> avec un dosage adéquat, les doses auxquelles nous sommes exposés en tant que consommateurs sont <strong>négligeables</strong> et l’argument seul de l’impact sur la santé <strong>ne suffit pas à justifier son interdiction</strong> (il pourrait en revanche justifier des restrictions sur son utilisations pour minimiser l’exposition auxquels nous sommes confrontés).</p>\r\n\r\n<p>Quand à son impact sur l’environnement, il est là encore difficile de savoir exactement sa dangerosité. Mais nous pouvons remarquer tout d’abord que sa <strong>molécule</strong> (C<em>3H</em>8NO_5P) <strong>ne contient aucun métaux lourds</strong>, qui pourraient rester et polluer les sols lors de la dégradation de la molécule, et que celle ci se <strong>dégrade facilement par la biologie du sol</strong> (la quantité de glyphosate est divisée par 1000 tout les ans dans un sol, contrairement à la bouille bordelaise (fongicide) par exemple, largement utilisée en agriculture biologique, qui contient du cuivre qui va rester dans le sol et le polluer). <strong>Le glyphosate n’engendre donc pas de pollution irréversible</strong>.</p>\r\n\r\n<p>La molécule est de plus en plus présente dans les nappes phréatiques, les rivières, les courts d’eau… mais encore une fois les doses sont négligeables par rapports aux doses catastrophiques de nitrates retrouvées dans certaines régions. \r\nAussi, Il est souvent dit que cette molécule « stérilise » un sol agricole en lui privant de ses micros organismes. Pourtant,  des analyses sur des sols d’agriculteurs qui pratiquent le « semis direct » (technique de culture qui consiste à ne pas travailler les sols, à le nourrir et à le couvrir que l’on développera dans un prochain numéro) avec une utilisation régulière de glyphosate, ont montré qu’il y avait une quantité de micro organismes et de vers de terre comparable à celle que l’on peut voir dans un sol de prairie naturelle. Ainsi, le glyphosate ne serait donc <strong>pas si destructeur que ce que l’on peut entendre</strong> par rapport à d’autres pesticides autorisés. D’ailleurs, ses conséquences sur l’environnement sont si faibles que si l’on devait l’interdire, on devrait alors , si l’on est cohérent, interdire tout les insecticides et fongicides plus polluant que lui en agriculture, ce qui ferait de toute les exploitations agricoles des fermes bio, qui ne produirait plus assez pour que la France garde sa sécurité alimentaire, et il faudrait importer encore plus de nourriture (ce qui n’est pas bien pour le bilan carbone), mais c’est un autre débat (que nous aborderons dans un prochain numéro). L’argument de la pollution qu’engendre le glyphosate n’est donc pas un argument justifiant non plus son interdiction.</p>\r\n\r\n<p>Passons au dernier argument principal… Existe-t-il alors des alternatives plus respectueuses de l’environnement ? Là est tout le problème. Pour pour ce qui est des alternatives chimiques, il n’y en a pas qui soit suffisamment économiquement viable pour l’agriculture et qui soit meilleures pour l’environnement. Et pour ce qui est des alternative techniques, on entend partout « l’agriculture biologique, ça marche ça ! » et « la permaculture, ça marche aussi ça ! »… Sauf que dans ces affirmations principales que l’on entend régulièrement ne sont pas, à court terme, viables. Pour le cas de l’agriculture biologique, lorsqu’il s’agit de faire du maraîchage (cultures de légumes et de fruit sur petites surface),  vis à vis de l’environnement, il peut il y avoir de très bon résultats. Mais lorsqu’il s’agit de cultiver des céréales, les résultats sur l’environnement manquent à l’appel (et les rendements aussi), on en parlera dans un prochain numéro… Quand à la permaculture, cela pourrais fonctionner mais à grande échelle cela prendrais très longtemps à se mettre en place… chacun ne pouvant obtenir rapidement de surfaces à cultiver... <b>Les alternatives au glyphosate ne sont donc pas réellement viable</b>.</p>\r\n\r\n<p>Alors, faut il vraiment l’interdire ? A <b>long terme, la réponse est oui</b>. Mais à <b>court terme</b>, en raison de l’absence d’alternatives, de la nécessité absolue du glyphosate en « semis direct sous couvert végétal » - qui n’est peut être que la seule agriculture céréalière à grande échelle réellement durable - et de son impact relativement faible sur l’environnement et sur l’homme lorsqu’il est utilisé correctement, <b>la réponse est non­</b>.</p>\r\n\r\n<p class="d-flex justify-content-end"><i>Sol nu, sol foutu</i><br /> Hector Leclerc</p>\r\n\r\n<h3>Sources</h3>\r\n\r\n<ul>\r\n<li>Ver de terre production et travaux de Lucien Seguy</li>\r\n<li>The WHO recommended classification of pesticides by hazard and guidelines to classification 2009 - OMS</li>\r\n<li>(https://fr.wikipedia.org/wiki/Glyphosate)</li>\r\n<li>(https://www.terre-net.fr/observatoire-technique-culturale/strategie-technique-culturale/article/le-glyphosate-ne-nuit-pas-a-la-vie-du-sol-contrairement-aux-engrais-et-au-labour-217-126581.html)</li>\r\n<li>(https://hal.univ-lorraine.fr/tel-01752951/document)</li>\r\n<li>(https://www.francetvinfo.fr/sante/environnement-et-sante/)glyphosate-une-nouvelle-etude-independante-pour-evaluer-sa-dangerosite_3209555.html)</li>\r\n</ul>\r\n', 4, '2021-01-17', '18:15:35');

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
(3, 'Sciences', '28d', 1),
(4, 'Santé', 'f00', 1),
(5, 'Culture', '80a', 1);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `images`
--

INSERT INTO `images` (`id`, `name`) VALUES
(1, 'centrale-nucleaire.jpg'),
(2, 'glyphosate.jpg'),
(3, 'linuxvswindows.svg');

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
(1, 'alois', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Aloïs Coquillard', ''),
(2, 'nathan', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Nathan Cerisara', ''),
(3, 'hector', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Hector Leclerc', ''),
(4, 'thibauld', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Thibauld Scelles', ''),
(5, 'thomas', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Thomas Pichot', ''),
(6, 'victoria', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Victoria Davis--Gutter', ''),
(7, 'edouard', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Édouard Gaucher', ''),
(8, 'yassine', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Yassine Romann', '');

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
(4, 4),
(5, 5),
(6, 6);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `articles-contents`
--
ALTER TABLE `articles-contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
