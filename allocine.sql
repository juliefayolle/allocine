-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 17 Janvier 2018 à 15:27
-- Version du serveur: 5.7.20
-- Version de PHP: 7.0.26-2+ubuntu14.04.1+deb.sury.org+2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `allocine`
--

-- --------------------------------------------------------

--
-- Structure de la table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_bin NOT NULL,
  `poster` text COLLATE utf8_bin NOT NULL,
  `abstract` longtext COLLATE utf8_bin NOT NULL,
  `released_date` year(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=72 ;

--
-- Contenu de la table `movie`
--

INSERT INTO `movie` (`id`, `title`, `poster`, `abstract`, `released_date`, `created_date`, `updated_date`) VALUES
(18, 'La ligne verte', '19254683.jpg', '<p>Paul Edgecomb, Gardien-chef du p&eacute;nitencier de Cold Mountain en 1935, &eacute;tait charg&eacute; de veiller au bon d&eacute;roulement des ex&eacute;cutions capitales. Parmi les prisonniers se trouvait un colosse du nom de John Coffey...</p>\r\n', 2000, '2018-01-15 10:11:48', '2018-01-16 15:41:43'),
(19, 'Tu ne tueras point', '507759.jpg', '<p>1945, alors que la guerre dans le Pacifique fait rage et que les forces am&eacute;ricaines m&egrave;nent l&rsquo;une des batailles les plus acharn&eacute;es du conflit sur l&rsquo;&icirc;le d&rsquo;Okinawa, un soldat s&rsquo;est distingu&eacute;. Fid&egrave;le &agrave; ses convictions et arm&eacute; de son seul courage, il a sauv&eacute; la vie de dizaines de soldats bless&eacute;s.</p>\r\n', 2016, '2018-01-15 10:11:58', '2018-01-16 15:46:09'),
(20, 'Le roi lion', '19858447.jpg', '<p>Le long combat de Simba le lionceau pour acc&eacute;der &agrave; son rang de roi des animaux, apr&egrave;s que le fourbe Scar, son oncle, a tu&eacute; son p&egrave;re et pris sa place.</p>\r\n', 1994, '2018-01-15 10:12:10', '2018-01-16 15:43:58'),
(22, 'Intouchables', '1588248.jpg', '<p>La rencontre improbable, touchante et dr&ocirc;le entre un riche aristocrate, t&eacute;trapl&eacute;gique depuis un accident de parapente, et un jeune de banlieue engag&eacute; par hasard pour &ecirc;tre son aide &agrave; domicile...</p>\r\n', 2011, '2018-01-15 10:12:28', '2018-01-16 15:40:07'),
(23, 'Seven', '19255605.jpg', '<p>John Doe a decid&eacute; de nettoyer la societ&eacute; des maux qui la rongent en commettant sept meurtres bases sur les sept pech&eacute;s capitaux.</p>\r\n', 1996, '2018-01-15 10:12:37', '2018-01-16 15:44:28'),
(24, 'Lalaland', '169386.jpg', '<p>Au c&oelig;ur de Los Angeles, une actrice en devenir pr&eacute;nomm&eacute;e Mia sert des caf&eacute;s entre deux auditions. De son c&ocirc;t&eacute;, Sebastian, passionn&eacute; de jazz, joue du piano dans des clubs miteux pour assurer sa subsistance. Tous deux sont bien loin de la vie r&ecirc;v&eacute;e &agrave; laquelle ils aspirent&hellip;</p>\r\n', 2017, '2018-01-15 10:11:24', '2018-01-16 15:43:01'),
(25, 'Vice versa', '571071.jpg', '<p>Au Quartier G&eacute;n&eacute;ral, le centre de contr&ocirc;le situ&eacute; dans la t&ecirc;te de la petite Riley, 11 ans, cinq &Eacute;motions sont au travail. Lorsque la famille de Riley emm&eacute;nage dans une grande ville, avec tout ce que cela peut avoir d&rsquo;effrayant, les &Eacute;motions ont fort &agrave; faire pour guider la jeune fille durant cette difficile transition.</p>\r\n', 2015, '2018-01-15 10:11:15', '2018-01-16 15:46:24'),
(26, 'La rage au ventre', '376925.jpg', '<p>Champion du monde de boxe, Billy Hope m&egrave;ne une existence fastueuse avec sa superbe femme et sa fille qu&rsquo;il aime plus que tout. Lorsque sa femme est tu&eacute;e, son monde s&rsquo;&eacute;croule. Il va devoir se battre pour trouver la voie de la r&eacute;demption et regagner ainsi la garde de sa fille.</p>\r\n', 2015, '2018-01-15 10:11:04', '2018-01-16 15:42:18'),
(27, 'Titanic', '20051394.jpg', '<p>Southampton, 10 avril 1912. Le paquebot le plus grand et le plus moderne du monde, r&eacute;put&eacute; pour son insubmersibilit&eacute;, le &quot;Titanic&quot;, appareille pour son premier voyage. Quatre jours plus tard, il heurte un iceberg. A son bord, un artiste pauvre et une grande bourgeoise tombent amoureux.</p>\r\n', 1998, '2018-01-15 10:10:52', '2018-01-16 15:45:57'),
(43, 'Jumanji : Bienvenue dans la jungle', '0517792.jpg', '<p>Le destin de quatre lyc&eacute;ens en retenue bascule lorsqu&rsquo;ils sont aspir&eacute;s dans le monde de Jumanji. Apr&egrave;s avoir d&eacute;couvert une vieille console contenant un jeu vid&eacute;o dont ils n&rsquo;avaient jamais entendu parler, les quatre jeunes se retrouvent myst&eacute;rieusement propuls&eacute;s au c&oelig;ur de la jungle de Jumanji, dans le corps de leurs avatars. Ils vont rapidement d&eacute;couvrir que l&rsquo;on ne joue pas &agrave; Jumanji, c&rsquo;est le jeu qui joue avec vous&hellip; Pour revenir dans le monde r&eacute;el, il va leur falloir affronter les pires dangers et triompher de l&rsquo;ultime aventure. Sinon, ils resteront &agrave; jamais prisonniers de Jumanji&hellip;</p>\r\n', 2017, '2018-01-12 16:25:07', '2018-01-16 15:41:12'),
(44, 'Ant man', '305731.jpg', '<p>Scott Lang, cambrioleur de haut vol, va devoir apprendre &agrave; se comporter en h&eacute;ros et aider son mentor, le Dr Hank Pym, &agrave; prot&eacute;ger le secret de son spectaculaire costume d&rsquo;Ant-Man, afin d&rsquo;affronter une effroyable menace&hellip;</p>\r\n', 2015, '2018-01-12 16:26:34', '2018-01-16 11:46:10'),
(51, 'Interstellar', '158828.jpg', '<p>Le film raconte les aventures d&rsquo;un groupe d&rsquo;explorateurs qui utilisent une faille r&eacute;cemment d&eacute;couverte dans l&rsquo;espace-temps afin de repousser les limites humaines et partir &agrave; la conqu&ecirc;te des distances astronomiques dans un voyage interstellaire.</p>\r\n', 2014, '2018-01-16 14:44:04', '2018-01-16 14:44:04'),
(53, 'Harry Potter 1', '89be62d577431cdeaf8387ee106a674a.jpg', '<p>Harry Potter, un jeune orphelin, est &eacute;lev&eacute; par son oncle et sa tante qui le d&eacute;testent. Ces derniers lui ont racont&eacute; que ses parents &eacute;taient morts dans un accident de voiture. Le jour de son onzi&egrave;me anniversaire, Harry re&ccedil;oit la visite d&#39;Hagrid. Celui-ci lui r&eacute;v&egrave;le qu&#39;il est en fait le fils de deux puissants magiciens et qu&#39;il poss&egrave;de lui aussi des pouvoirs. Le gar&ccedil;on accepte alors de suivre des cours &agrave; Poudlard.</p>\r\n', 2001, '2018-01-16 16:25:54', '2018-01-16 16:41:27'),
(54, 'DrÃ´les de petites bÃªtes', '0995685.jpg', '<p>Lorsqu&rsquo;Apollon, un grillon baladin au grand c&oelig;ur, arrive au village des petites b&ecirc;tes, il ne tarde pas &agrave; perturber la vie du Royaume tout entier&hellip; Pi&eacute;g&eacute; par la cousine de la Reine Marguerite, la jalouse et diabolique Huguette, Apollon est accus&eacute; d&rsquo;avoir enlev&eacute; la souveraine, semant la panique dans la ruche&hellip;</p>\r\n', 2017, '2018-01-17 15:00:05', '2018-01-17 15:00:05'),
(55, 'Moi, moche et mÃ©chant 3', '527507.jpg', '<p>Dans ce troisi&egrave;me volet, Balthazar Bratt, un ancien enfant star reste&nbsp;obnubil&eacute;&nbsp;par le r&ocirc;le qu&#39;il a interpr&eacute;t&eacute; dans les ann&eacute;es 80. Il va devenir l&#39;ennemi jur&eacute; de Gru.</p>\r\n', 2017, '2018-01-17 15:01:01', '2018-01-17 15:01:24'),
(56, 'Moi, moche et mÃ©chant', '19494202.jpg', '<p>Dans un charmant quartier r&eacute;sidentiel d&eacute;limit&eacute; par des cl&ocirc;tures de bois blanc et orn&eacute; de rosiers fleurissants se dresse une b&acirc;tisse noire entour&eacute;e d&rsquo;une pelouse en friche. Cette fa&ccedil;ade sinistre cache un secret : Gru, un m&eacute;chant vilain, entour&eacute; d&rsquo;une myriade de sous-fifres et arm&eacute; jusqu&rsquo;aux dents, qui, &agrave; l&rsquo;insu du voisinage, complote le plus gros casse de tous les temps : voler la lune (Oui, la lune !)...<br />\r\nGru affectionne toutes sortes de sales joujoux. Il poss&egrave;de une multitude de v&eacute;hicules de combat a&eacute;rien et terrestre et un arsenal de rayons immobilisants et r&eacute;tr&eacute;cissants avec lesquels il an&eacute;antit tous ceux qui osent lui barrer la route... jusqu&rsquo;au jour o&ugrave; il tombe nez &agrave; nez avec trois petites orphelines qui voient en lui quelqu&rsquo;un de tout &agrave; fait diff&eacute;rent : un papa.<br />\r\nLe plus grand vilain de tous les temps se retrouve confront&eacute; &agrave; sa plus dure &eacute;preuve : trois fillettes pr&eacute;nomm&eacute;es Margo, Edith et Agnes.</p>\r\n', 2010, '2018-01-17 15:02:33', '2018-01-17 15:02:33'),
(57, 'Moi, moche et mÃ©chant 2', '20532087.jpg', '<p>Ayant abandonn&eacute; la super-criminalit&eacute; et mis de c&ocirc;t&eacute; ses activit&eacute;s funestes pour se consacrer &agrave; la paternit&eacute; et &eacute;lever Margo, &Eacute;dith et Agn&egrave;s, Gru, et avec lui, le Professeur N&eacute;fario et les Minions, doivent se trouver de nouvelles occupations. Alors qu&rsquo;il commence &agrave; peine &agrave; s&rsquo;adapter &agrave; sa nouvelle vie tranquille de p&egrave;re de famille, une organisation ultrasecr&egrave;te, menant une lutte acharn&eacute;e contre le Mal &agrave; l&rsquo;&eacute;chelle plan&eacute;taire, vient frapper &agrave; sa porte. Soudain, c&rsquo;est &agrave; Gru, et &agrave; sa nouvelle co&eacute;quipi&egrave;re Lucy, que revient la responsabilit&eacute; de r&eacute;soudre une s&eacute;rie de m&eacute;faits spectaculaires. Apr&egrave;s tout, qui mieux que l&rsquo;ex plus m&eacute;chant m&eacute;chant de tous les temps, pourrait attraper celui qui rivalise pour lui voler la place qu&rsquo;il occupait encore r&eacute;cemment.<br />\r\nRejoignant nos h&eacute;ros, on d&eacute;couvre : Floyd, le propri&eacute;taire du salon Eagle Postiche Club pour hommes et suspect num&eacute;ro 1 du crime le plus abject jamais perp&eacute;tr&eacute; depuis le d&eacute;part de Gru &agrave; la retraite ; Silas de Lamolef&egrave;s, le super-espion &agrave; la t&ecirc;te de l&rsquo;Agence Vigilance de Lynx, patron de Lucy, dont le nom de famille est une source in&eacute;puisable d&rsquo;amusement pour les Minions ; Antonio, le si mielleux objet de l&rsquo;affection naissante de Margo, et Eduardo Perez, le p&egrave;re d&rsquo;Antonio, propri&eacute;taire du restaurant Salsa &amp; Salsa et l&rsquo;homme qui se cache peut-&ecirc;tre derri&egrave;re le masque d&rsquo;El Macho, le plus impitoyable et, comme son nom l&rsquo;indique, m&eacute;chant macho que la terre ait jamais port&eacute;.</p>\r\n', 2013, '2018-01-17 15:03:36', '2018-01-17 15:03:36'),
(58, 'Cars 3', '499210.jpg', '<p>D&eacute;pass&eacute; par une nouvelle g&eacute;n&eacute;ration de bolides ultra-rapides, le c&eacute;l&egrave;bre&nbsp;Flash McQueen&nbsp;se retrouve mis sur la touche d&rsquo;un sport qu&rsquo;il adore. Pour revenir dans la course et prouver, en souvenir de&nbsp;Doc Hudson,&nbsp;que le n&deg; 95 a toujours sa place dans la&nbsp;Piston Cup,&nbsp;il devra faire preuve d&rsquo;ing&eacute;niosit&eacute;.</p>\r\n', 2017, '2018-01-17 15:04:23', '2018-01-17 15:04:23'),
(59, 'Cars', '309645.jpg', '<p>Flash McQueen, une splendide voiture de course toute neuve promise au succ&egrave;s, d&eacute;couvre que dans la vie, ce n&#39;est pas de franchir la ligne d&#39;arriv&eacute;e qui compte, mais le parcours que l&#39;on a suivi. Parti pour participer &agrave; la prestigieuse Piston Cup, il atterrit suite &agrave; une d&eacute;viation dans la petite ville tranquille de Radiator Springs, sur la Route 66.<br />\r\nMcQueen va apprendre &agrave; conna&icirc;tre Sally (une &eacute;l&eacute;gante Porsche 2002), Doc Hudson (une Hudson Hornet 1951 au pass&eacute; myst&eacute;rieux), et Mater (une d&eacute;panneuse rouill&eacute;e mais &agrave; qui on peut faire confiance). Ils vont l&#39;aider &agrave; d&eacute;couvrir qu&#39;il y a des choses plus importantes que les troph&eacute;es, la gloire et les&nbsp;<em>sponsors</em>...</p>\r\n', 2006, '2018-01-17 15:05:51', '2018-01-17 15:05:51'),
(60, 'Cars 2', '19770156.jpg', '<p>Dans Cars 2, Flash McQueen, la star des circuits automobiles, et son fid&egrave;le compagnon Martin la d&eacute;panneuse reprennent la route pour de nouvelles aventures. Les voil&agrave; partis pour courir le tout premier Grand Prix Mondial, qui sacrera la voiture la plus rapide du monde ! Mais la route du championnat est pleine d&rsquo;impr&eacute;vus, de d&eacute;viations et de surprises hilarantes, surtout lorsque Martin se retrouve entra&icirc;n&eacute; dans une histoire comme il n&rsquo;en arrive qu&rsquo;&agrave; lui : une affaire d&rsquo;espionnage international ! Ecartel&eacute; entre son d&eacute;sir d&rsquo;assister Flash McQueen dans cette course particuli&egrave;rement difficile et celui de mener &agrave; bien une mission d&rsquo;espionnage top secr&egrave;te, Martin se lance dans un voyage bourr&eacute; d&rsquo;action et une course-poursuite explosive sur les routes du Japon et de l&rsquo;Europe, suivi par ses amis et regard&eacute; par le monde entier. Sur la route, Flash et Martin trouveront de l&rsquo;action, de l&rsquo;humour effr&eacute;n&eacute; et de tout nouveaux personnages &ndash; agents secrets, redoutables m&eacute;chants et adversaires d&eacute;cid&eacute;s sur les circuits automobiles&hellip;</p>\r\n', 2011, '2018-01-17 15:06:37', '2018-01-17 15:06:37'),
(61, 'Rebelle', '20186089.jpg', '<p>Merida, la fille du roi Fergus est bien d&eacute;cid&eacute;e &agrave; suivre son propre chemin dans la vie. Elle d&eacute;fie une tradition mill&eacute;naire sacr&eacute;e aux yeux de trois seigneurs du royaume, et sans l&rsquo;avoir voulu, elle va d&eacute;cha&icirc;ner le chaos dans le royaume.</p>\r\n', 2012, '2018-01-17 15:07:44', '2018-01-17 15:07:44'),
(62, 'Les 101 Dalmatiens', '20193459.jpg', '<p>Pongo et Perdita, deux magnifiques dalmatiens, deviennent parents de quinze b&eacute;b&eacute;s chiens. Mais l&rsquo;inf&acirc;me Cruella convoite les chiots. Un soir, ses sbires font main basse sur la port&eacute;e. Pongo et Perdita se lancent alors dans un plan de sauvetage d&eacute;sesp&eacute;r&eacute;...</p>\r\n', 1961, '2018-01-17 15:08:45', '2018-01-17 15:08:45'),
(63, 'Le monde secret des Emojis', '324652.jpg', '<p>L&#39;histoire du Monde secret des &eacute;mojis prend place dans l&rsquo;univers secret des smartphones. Dans l&#39;application Messages, Textopolis est une ville anim&eacute;e o&ugrave; vivent les &eacute;motic&ocirc;nes, qui esp&egrave;rent toutes &ecirc;tre s&eacute;lectionn&eacute;es par le propri&eacute;taire du t&eacute;l&eacute;phone</p>\r\n', 2017, '2018-01-17 15:10:42', '2018-01-17 15:10:42'),
(64, 'Anastasia', '366053.jpg', '<p>Saint-P&eacute;tersbourg, 1917. Comment l&#39;imp&eacute;ratrice Marie et sa petite fille Anastasia vont &ecirc;tre sauv&eacute;es du funeste sort, provoqu&eacute; par la revolution, qui s&#39;abat sur la famille imp&eacute;riale, par un jeune employ&eacute; de cuisine : Dimitri...</p>\r\n', 1998, '2018-01-17 15:11:47', '2018-01-17 15:11:47'),
(65, 'La princesse et le grenouille', '19224122.jpg', '<p>Un conte qui se d&eacute;roule &agrave; la Nouvelle-Orl&eacute;ans, dans le l&eacute;gendaire quartier fran&ccedil;ais, o&ugrave; vit une jeune fille nomm&eacute;e Tiana.</p>\r\n', 2010, '2018-01-17 15:12:29', '2018-01-17 15:12:29'),
(66, 'La belle et le clochard', '18798038.jpg', '<p>Les aventures amoureuses de Lady, ravissant cocker et de Clochard le batard, perturb&eacute;es par tante Sarah et ses deux adorables chats siamois, Si et Am, diaboliques et sournois.</p>\r\n', 1955, '2018-01-17 15:13:10', '2018-01-17 15:13:10'),
(67, 'Aladdin', '004115.jpg', '<p>Comment Aladdin, gr&acirc;ce &agrave; la felonie du grand vizir, va se procurer la lampe magique qui h&eacute;berge le fameux g&eacute;nie et nous entra&iuml;ner dans la plus &eacute;tonnante des aventures.</p>\r\n', 1993, '2018-01-17 15:13:45', '2018-01-17 15:13:45'),
(68, 'Toy Story', '18778479.jpg', '<p>Quand Andy quitte sa chambre, ses jouets se mettent &agrave; mener leur propre vie sous la houlette du cowboy Woody. D&eacute;barque alors Buzz l&#39;&eacute;clair, intr&eacute;pide aventurier de l&#39;espace venu d&#39;une lointaine galaxie, qui va semer la zizanie dans ce petit monde.</p>\r\n', 1996, '2018-01-17 15:14:33', '2018-01-17 15:14:33'),
(69, 'Rox et Rouky', '18957097.jpg', '<p>Rox le renard et Rouky le chien sont les meilleurs amis du monde. Mais cette amiti&eacute; est menac&eacute;e lorsque le ma&icirc;tre de Rouky devient chasseur...</p>\r\n', 1981, '2018-01-17 15:15:33', '2018-01-17 15:15:33'),
(70, 'Dumbo', '18747864.jpg', '<p>Par un beau matin de printemps, une cigogne livre un nouveau-n&eacute; &agrave; Madame Jumbo, une femelle &eacute;l&eacute;phant pensionnaire d&#39;un cirque itin&eacute;rant. A sa grande surprise, sa prog&eacute;niture arborre des oreilles d&eacute;mesur&eacute;ment grandes, ce qui lui vaut d&#39;&ecirc;tre surnomm&eacute; Dumbo par ses cong&eacute;n&egrave;res m&eacute;prisants. Rejet&eacute; de tous, le pauvre animal trouve dans une petite souris malicieuse...</p>\r\n', 1947, '2018-01-17 15:16:28', '2018-01-17 15:16:28'),
(71, 'Demain tout commence', '314978.jpg', '<p>Samuel vit sa vie sans attaches ni responsabilit&eacute;s, au bord de la mer sous le soleil du sud de la France, pr&egrave;s des gens qu&rsquo;il aime et avec qui il travaille sans trop se fatiguer. Jusqu&rsquo;&agrave; ce qu&rsquo;une de ses anciennes conqu&ecirc;tes lui laisse sur les bras un b&eacute;b&eacute; de quelques mois, Gloria : sa fille ! Incapable de s&rsquo;occuper d&rsquo;un b&eacute;b&eacute; et bien d&eacute;cid&eacute; &agrave; rendre l&rsquo;enfant &agrave; sa m&egrave;re, Samuel se pr&eacute;cipite &agrave; Londres pour tenter de la retrouver, sans succ&egrave;s. 8 ans plus tard, alors que Samuel et Gloria ont fait leur vie &agrave; Londres et sont devenus ins&eacute;parables, la m&egrave;re de Gloria revient dans leur vie pour r&eacute;cup&eacute;rer sa fille&hellip;</p>\r\n', 2016, '2018-01-17 15:25:33', '2018-01-17 15:25:33');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) CHARACTER SET latin1 NOT NULL,
  `password` varchar(32) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `login`, `password`) VALUES
(1, 'admin', 'df54a95e18db094cef5c0f31b48a8348');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
