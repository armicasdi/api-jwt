-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-07-2020 a las 16:45:00
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apiprueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_20_052534_create_productos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `SKU`, `nombre`, `cantidad`, `precio`, `descripcion`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'ug574369', 'ipsam', 724, 938, 'Hatter. \'He won\'t stand beating. Now, if you wouldn\'t squeeze so.\' said the Cat in a shrill, passionate voice. \'Would YOU like cats if you only kept on good terms with him, he\'d do almost anything.', 'https://lorempixel.com/640/480/?90819', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(3, 'nf504156', 'sint', 196, 1403, 'Alice was soon submitted to by the officers of the singers in the air, I\'m afraid, but you might knock, and I never was so full of tears, \'I do wish I could shut up like a writing-desk?\' \'Come, we.', 'https://lorempixel.com/640/480/?83174', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(4, 'vc321033', 'omnis', 805, 303, 'Alice in a low, timid voice, \'If you do. I\'ll set Dinah at you!\' There was not a VERY unpleasant state of mind, she turned to the garden with one finger pressed upon its forehead (the position in.', 'https://lorempixel.com/640/480/?87548', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(5, 'cy563239', 'tempore', 40, 540, 'March Hare and the poor little thing sobbed again (or grunted, it was indeed: she was quite pleased to find any. And yet you incessantly stand on their slates, and then she had never seen such a.', 'https://lorempixel.com/640/480/?25781', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(6, 'bj095968', 'est', 298, 1545, 'Alice alone with the day of the doors of the birds and animals that had slipped in like herself. \'Would it be murder to leave it behind?\' She said it to make out what it was: she was now only ten.', 'https://lorempixel.com/640/480/?76623', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(7, 'mg599658', 'voluptatem', 98, 1871, 'Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King said to the table, but it was impossible to say it out again, and did not feel encouraged to ask any more if you\'d rather not.\'.', 'https://lorempixel.com/640/480/?53258', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(8, 'ym548172', 'eveniet', 248, 568, 'YOUR adventures.\' \'I could tell you how the game was in March.\' As she said to herself, \'if one only knew how to get to,\' said the Hatter: \'it\'s very easy to know what it meant till now.\' \'If that\'s.', 'https://lorempixel.com/640/480/?45467', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(9, 'vt121142', 'nam', 245, 1452, 'Rabbit just under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were INSIDE, you might knock, and I shall be a grin, and she was shrinking rapidly; so she waited. The Gryphon lifted up both.', 'https://lorempixel.com/640/480/?15030', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(10, 'mq024673', 'et', 365, 1473, 'Her first idea was that you think you could only hear whispers now and then, and holding it to be said. At last the Mock Turtle drew a long silence after this, and after a minute or two she stood.', 'https://lorempixel.com/640/480/?83980', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(11, 'dt070486', 'consequatur', 238, 401, 'King said to herself, as she had looked under it, and burning with curiosity, she ran with all speed back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves.', 'https://lorempixel.com/640/480/?58366', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(12, 'tv696393', 'neque', 5, 1710, 'Oh, my dear paws! Oh my dear paws! Oh my dear Dinah! I wonder what they said. The executioner\'s argument was, that if something wasn\'t done about it in her brother\'s Latin Grammar, \'A mouse--of a.', 'https://lorempixel.com/640/480/?34712', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(13, 'tu801034', 'fugit', 705, 181, 'Derision.\' \'I never could abide figures!\' And with that she ran across the field after it, and behind them a new pair of gloves and the pattern on their faces, and the March Hare said to live. \'I\'ve.', 'https://lorempixel.com/640/480/?78441', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(14, 'hh838241', 'fuga', 498, 937, 'YOU?\' Which brought them back again to the jury, who instantly made a memorandum of the other players, and shouting \'Off with her head!\' the Queen to play with, and oh! ever so many out-of-the-way.', 'https://lorempixel.com/640/480/?39868', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(15, 'xp875776', 'ab', 100, 1686, 'Dinn may be,\' said the Eaglet. \'I don\'t like it, yer honour, at all, as the soldiers shouted in reply. \'Please come back again, and that\'s all I can reach the key; and if the Mock Turtle replied.', 'https://lorempixel.com/640/480/?77453', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(16, 'tv241109', 'maiores', 90, 458, 'Alice)--\'and perhaps you haven\'t found it advisable--\"\' \'Found WHAT?\' said the Cat, \'if you don\'t even know what they\'re like.\' \'I believe so,\' Alice replied eagerly, for she had got burnt, and.', 'https://lorempixel.com/640/480/?89304', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(17, 'jo549463', 'quia', 161, 829, 'Alice; and Alice guessed in a low, timid voice, \'If you knew Time as well to say it over) \'--yes, that\'s about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'I.', 'https://lorempixel.com/640/480/?47575', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(18, 'ny107875', 'quo', 931, 1738, 'Hatter, and here the Mock Turtle. \'And how did you begin?\' The Hatter looked at the door-- Pray, what is the same side of WHAT? The other guests had taken advantage of the sense, and the Queen\'s.', 'https://lorempixel.com/640/480/?18807', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(19, 'sv056977', 'aut', 713, 219, 'I used to call him Tortoise--\' \'Why did you manage on the top of his great wig.\' The judge, by the hedge!\' then silence, and then treading on her toes when they liked, and left foot, so as to bring.', 'https://lorempixel.com/640/480/?59844', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(20, 'gp861489', 'explicabo', 853, 769, 'This seemed to be a walrus or hippopotamus, but then she walked up towards it rather timidly, saying to herself, for she could not think of anything to put everything upon Bill! I wouldn\'t be in.', 'https://lorempixel.com/640/480/?33698', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(21, 'ii208293', 'deleniti', 43, 778, 'Alice; \'I daresay it\'s a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\"\' said the Mouse, getting up and straightening itself out again, and she went on: \'--that begins with an M--\'.', 'https://lorempixel.com/640/480/?47385', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(22, 'th440276', 'tempore', 439, 1927, 'Dormouse, after thinking a minute or two, they began solemnly dancing round and get in at the jury-box, or they would call after her: the last few minutes that she ought to tell its age, there was a.', 'https://lorempixel.com/640/480/?17653', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(23, 'qq320205', 'enim', 675, 981, 'Alice thought), and it said in a coaxing tone, and she at once and put it more clearly,\' Alice replied in a melancholy way, being quite unable to move. She soon got it out to the jury, in a low.', 'https://lorempixel.com/640/480/?92959', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(24, 'yl189796', 'nobis', 303, 1235, 'Cat. \'Do you know about this business?\' the King repeated angrily, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and went to school in the sea. The.', 'https://lorempixel.com/640/480/?61370', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(25, 'eg310812', 'maxime', 434, 750, 'On which Seven looked up and ran the faster, while more and more puzzled, but she could get away without speaking, but at the cook, to see if she did not venture to go near the King in a soothing.', 'https://lorempixel.com/640/480/?75231', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(26, 'vk412346', 'minus', 38, 621, 'Alice remarked. \'Right, as usual,\' said the King said, for about the temper of your flamingo. Shall I try the patience of an oyster!\' \'I wish I hadn\'t cried so much!\' Alas! it was looking for the.', 'https://lorempixel.com/640/480/?33453', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(27, 'oc880427', 'autem', 348, 1451, 'Dodo, pointing to Alice again. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t opened it yet,\' said Alice; \'I daresay it\'s a French mouse, come over with William the Conqueror.\'.', 'https://lorempixel.com/640/480/?84082', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(28, 'vr768311', 'quasi', 354, 1304, 'I know!\' exclaimed Alice, who had meanwhile been examining the roses. \'Off with her head!\' Alice glanced rather anxiously at the window.\' \'THAT you won\'t\' thought Alice, as she tucked her arm.', 'https://lorempixel.com/640/480/?70076', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(29, 'yi574175', 'error', 592, 1863, 'And mentioned me to sell you a song?\' \'Oh, a song, please, if the Queen jumped up in a shrill, loud voice, and the Dormouse shall!\' they both cried. \'Wake up, Alice dear!\' said her sister; \'Why.', 'https://lorempixel.com/640/480/?34798', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(30, 'wm370833', 'nisi', 162, 72, 'PRECIOUS nose\'; as an explanation. \'Oh, you\'re sure to happen,\' she said these words her foot slipped, and in a rather offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you.', 'https://lorempixel.com/640/480/?51038', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(31, 'cg019418', 'optio', 817, 847, 'Footman, and began to tremble. Alice looked all round the thistle again; then the Mock Turtle. \'She can\'t explain it,\' said Alice. \'You are,\' said the Hatter. Alice felt a little pattering of feet.', 'https://lorempixel.com/640/480/?87360', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(32, 'ce930872', 'ducimus', 535, 146, 'Alice. \'Why, there they are!\' said the Duchess; \'and the moral of that is--\"Birds of a well--\' \'What did they draw the treacle from?\' \'You can draw water out of court! Suppress him! Pinch him! Off.', 'https://lorempixel.com/640/480/?69799', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(33, 'jr665244', 'excepturi', 661, 1981, 'Hatter: \'I\'m on the slate. \'Herald, read the accusation!\' said the Mouse, sharply and very soon found herself safe in a natural way. \'I thought you did,\' said the King. \'Shan\'t,\' said the Hatter.', 'https://lorempixel.com/640/480/?22003', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(34, 'sf737326', 'beatae', 740, 1626, 'Alice; and Alice looked all round her, calling out in a natural way. \'I thought you did,\' said the Caterpillar, and the Queen jumped up in such long ringlets, and mine doesn\'t go in at the house.', 'https://lorempixel.com/640/480/?82050', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(35, 'pp752602', 'impedit', 223, 718, 'Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I don\'t understand. Where did they live on?\' said the Caterpillar. \'Well, I can\'t remember,\' said the Caterpillar. Here was another long.', 'https://lorempixel.com/640/480/?32323', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(36, 'er392252', 'corporis', 295, 1204, 'I\'ll tell you my adventures--beginning from this side of the garden: the roses growing on it (as she had caught the baby violently up and say \"Who am I to get in at all?\' said the Mouse. \'Of.', 'https://lorempixel.com/640/480/?38093', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(37, 'jr298577', 'non', 870, 1605, 'Puss,\' she began, rather timidly, saying to herself how this same little sister of hers that you think you might do very well as she was now more than Alice could not answer without a grin,\' thought.', 'https://lorempixel.com/640/480/?35666', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(38, 'zy849371', 'dolore', 116, 1429, 'White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Mock Turtle drew a long tail, certainly,\' said Alice hastily; \'but I\'m not Ada,\' she said, \'and see whether it\'s marked.', 'https://lorempixel.com/640/480/?18171', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(39, 'ek270969', 'eos', 681, 375, 'I\'ve got back to the baby, the shriek of the trees under which she concluded that it would be offended again. \'Mine is a very small cake, on which the words \'DRINK ME,\' but nevertheless she uncorked.', 'https://lorempixel.com/640/480/?39399', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(40, 'fd332227', 'dolor', 387, 28, 'Christmas.\' And she squeezed herself up on to the voice of the what?\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you turned a corner, \'Oh my ears and whiskers.', 'https://lorempixel.com/640/480/?48144', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(41, 'br627770', 'vel', 941, 446, 'Has lasted the rest waited in silence. At last the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Hatter, it woke up again with a pair of white kid gloves and the reason is--\' here the Mock.', 'https://lorempixel.com/640/480/?17489', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(42, 'aq827073', 'ut', 457, 1054, 'COULD grin.\' \'They all can,\' said the one who got any advantage from the sky! Ugh, Serpent!\' \'But I\'m not myself, you see.\' \'I don\'t know where Dinn may be,\' said the Cat. \'I don\'t know the meaning.', 'https://lorempixel.com/640/480/?74325', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(43, 'sx080218', 'fuga', 233, 392, 'Alice thought over all she could not remember ever having heard of one,\' said Alice. \'Exactly so,\' said the Mock Turtle, who looked at poor Alice, who had followed him into the earth. Let me think.', 'https://lorempixel.com/640/480/?11291', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(44, 'nw181658', 'doloremque', 258, 463, 'WOULD twist itself round and swam slowly back to the Hatter. \'Does YOUR watch tell you my history, and you\'ll understand why it is to France-- Then turn not pale, beloved snail, but come and join.', 'https://lorempixel.com/640/480/?82326', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(45, 'fs572715', 'totam', 854, 858, 'I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no chance of this, so that altogether, for the garden!\' and she went on, \'What HAVE you been doing here?\' \'May it please.', 'https://lorempixel.com/640/480/?93981', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(46, 'pc252760', 'officiis', 841, 247, 'I to get into her face. \'Wake up, Dormouse!\' And they pinched it on both sides at once. The Dormouse again took a minute or two, it was an uncomfortably sharp chin. However, she soon made out the.', 'https://lorempixel.com/640/480/?67815', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(47, 'dj568882', 'aperiam', 66, 1389, 'And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head made her draw back in their.', 'https://lorempixel.com/640/480/?31589', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(48, 'pm636518', 'aut', 547, 1376, 'So she began: \'O Mouse, do you know why it\'s called a whiting?\' \'I never thought about it,\' added the Dormouse, without considering at all the creatures argue. It\'s enough to try the experiment?\'.', 'https://lorempixel.com/640/480/?79996', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(49, 'lv184162', 'qui', 415, 62, 'Now you know.\' \'Not at first, but, after watching it a bit, if you drink much from a Caterpillar The Caterpillar was the fan she was appealed to by all three dates on their hands and feet at once.', 'https://lorempixel.com/640/480/?84610', '2020-07-20 12:35:34', '2020-07-20 12:35:34'),
(50, 'nt489553', 'ut', 643, 1043, 'It quite makes my forehead ache!\' Alice watched the White Rabbit, with a growl, And concluded the banquet--] \'What IS the use of this elegant thimble\'; and, when it saw Alice. It looked.', 'https://lorempixel.com/640/480/?99428', '2020-07-20 12:35:34', '2020-07-20 12:35:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` int(18) DEFAULT NULL,
  `usuario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `telefono`, `usuario`, `dob`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Arturo Castro', 71506102, 'acastro', '1990-01-23', 'armicasdi@gmail.com', NULL, '$2y$10$OymoRZEx8OhWW7t3zI7v8e4com7GQbQuzp647IcDiDswSDJySv5WW', NULL, '2020-07-20 11:55:57', '2020-07-20 11:55:57'),
(4, 'Miss Nichole Pagac MD', 97589483, 'eliza67', '1976-12-30', 'tara.reinger@example.org', '2020-07-20 12:34:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1RONaeKfNp', '2020-07-20 12:34:34', '2020-07-20 12:34:34'),
(5, 'Tyrese Sawayn', 57439651, 'elsie83', '2017-09-25', 'dustin.schaefer@example.com', '2020-07-20 12:34:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eFfIpQ8QKE', '2020-07-20 12:34:34', '2020-07-20 12:34:34'),
(6, 'Mary Rowe', 21981473, 'eleanore.jakubowski', '1970-07-11', 'antonina67@example.com', '2020-07-20 12:34:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3y9ucUJxMP', '2020-07-20 12:34:34', '2020-07-20 12:34:34'),
(7, 'Enrique Morar', 83920593, 'dooley.anastasia', '2004-08-26', 'ebony.bayer@example.net', '2020-07-20 12:34:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fMM95NcIWQ', '2020-07-20 12:34:34', '2020-07-20 12:34:34'),
(8, 'Elinor Reichel Sr.', 90301263, 'larry21', '1984-08-08', 'elenora49@example.org', '2020-07-20 12:34:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IJRgebOEUv', '2020-07-20 12:34:34', '2020-07-20 12:34:34'),
(9, 'Mariah Ankunding Jr.', 13998128, 'gfay', '1988-01-02', 'dare.alejandra@example.net', '2020-07-20 12:34:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w4Nz4CxKH5', '2020-07-20 12:34:34', '2020-07-20 12:34:34'),
(10, 'Eula Fisher', 93293458, 'heller.oscar', '1996-10-22', 'bparker@example.org', '2020-07-20 12:34:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NJ9V8IQr9I', '2020-07-20 12:34:34', '2020-07-20 12:34:34'),
(11, 'Scarlett Turner Sr.', 15585544, 'nolan.katherine', '2005-12-06', 'okuneva.geovany@example.com', '2020-07-20 12:34:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vJpf6BCkg1', '2020-07-20 12:34:34', '2020-07-20 12:34:34'),
(12, 'Dr. Terrance Okuneva Jr.', 71346086, 'olind', '1990-05-26', 'mayert.jamel@example.com', '2020-07-20 12:34:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dlNAaZd6st', '2020-07-20 12:34:34', '2020-07-20 12:34:34'),
(13, 'Annabel Hahn', 91903062, 'colten.balistreri', '2018-06-04', 'maryse.fadel@example.org', '2020-07-20 12:34:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1LpmSEr9O3', '2020-07-20 12:34:34', '2020-07-20 12:34:34'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-20 13:58:28', '2020-07-20 13:58:28'),
(16, 'Arturo Castro', 71506102, NULL, '1990-01-23', 'yo90otravez@gmail.com', NULL, '$2y$10$W9GWVROeZeFLhqgq4BDshOSqvj2UkGLFY2KtvDsYdU7g4jWv8KXQa', NULL, '2020-07-20 14:06:29', '2020-07-20 14:06:29'),
(17, 'Arturo Castro', 71506102, 'yolo7arturo', '1990-01-23', 'yo907otravez@gmail.com', NULL, NULL, NULL, '2020-07-20 14:09:46', '2020-07-20 14:09:46'),
(18, 'Arturo Castro', 71506102, 'yolo77arturo', '1990-01-23', 'yo9076otravez@gmail.com', NULL, '$2y$10$1v31B431RDG/bup8MonwFe7MDiJjW31LD.HM3CNll4Nqdb24adwfi', NULL, '2020-07-20 14:14:46', '2020-07-20 14:14:46'),
(19, 'Administrador', 25144715, 'admin', '1990-01-23', 'admin@company.com', NULL, '$2y$10$MwtcAsX/sob2FgUHKC7Ade5.PXOUb6GlsiJbLpaTXN7GBPj/T6Jrm', NULL, '2020-07-20 14:39:45', '2020-07-20 14:39:45');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_usuario_unique` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
