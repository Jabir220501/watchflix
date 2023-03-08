-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 21 feb 2023 om 19:00
-- Serverversie: 10.4.27-MariaDB
-- PHP-versie: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `watchflix`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `movie_video`
--

CREATE TABLE `movie_video` (
  `id` int(11) NOT NULL,
  `video_access` text DEFAULT 'Free',
  `tmdb_id` text NOT NULL,
  `imdb_id` text DEFAULT NULL,
  `movie_genre_id` text DEFAULT NULL,
  `upcoming` text DEFAULT NULL,
  `video_title` text DEFAULT NULL,
  `video_description` text DEFAULT NULL,
  `video_poster` varchar(2555) DEFAULT NULL,
  `video_backdrop` text DEFAULT NULL,
  `actor_id` text DEFAULT NULL,
  `director_id` text DEFAULT NULL,
  `rating` text DEFAULT NULL,
  `views` mediumtext DEFAULT NULL,
  `status` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `movie_video`
--

INSERT INTO `movie_video` (`id`, `video_access`, `tmdb_id`, `imdb_id`, `movie_genre_id`, `upcoming`, `video_title`, `video_description`, `video_poster`, `video_backdrop`, `actor_id`, `director_id`, `rating`, `views`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Free', '315162', 'tt3915174', 'Puss in Boots: The Last Wishhh', 'No', 'Puss in Boots: The Last Wish', 'Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.', '/kuf6dutpsT0vSVehic3EZIqkOBt.jpg', '/tGwO4xcBjhXC0p5qlkw37TrH6S6.jpg', 'Puss in Boots: The Last Wish', '', '7.9', NULL, 'Inactive', '2023-02-12 20:44:46', NULL),
(11, 'Free', '555604', 'tt1488589', 'Animation, Fantasy, Drama, ', 'Yes', 'Guillermo del Toro\'s Pinocchio', 'During the rise of fascism in Mussolini\'s Italy, a wooden boy brought magically to life struggles to live up to his father\'s expectations.', '/vx1u0uwxdlhV2MUzj4VlcMB0N6m.jpg', '/e782pDRAlu4BG0ahd777n8zfPzZ.jpg', '', '', '7.7', NULL, 'Active', '2023-02-12 22:24:41', NULL),
(13, 'Paid', '335787', 'tt1464335', 'Action, Adventure, ', 'Yes', 'Uncharted', 'A young street-smart, Nathan Drake and his wisecracking partner Victor “Sully” Sullivan embark on a dangerous pursuit of “the greatest treasure never found” while also tracking clues that may lead to Nathan’s long-lost brother.', '/rJHC1RUORuUhtfNb4Npclx0xnOf.jpg', '/aEGiJJP91HsKVTEPy1HhmN0wRLm.jpg', '', '', '6.3', NULL, 'Active', '2023-02-15 17:07:35', NULL),
(14, 'Free', '414906', 'tt1877830', 'Crime, Mystery, Thriller, ', 'No', 'The Batman', 'In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.', '/74xTEgt7R36Fpooo50r9T25onhq.jpg', '/b0PlSFdDwbyK0cf5RxwDpaOJQvQ.jpg', '', '', '7.8', NULL, 'Active', '2023-02-15 18:10:13', NULL),
(16, 'Free', '640146', 'tt10954600', 'Ant-Man and the Wasp: Quantumania', 'Yes', 'Ant-Man and the Wasp: Quantumania', 'Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope\'s parents Janet van Dyne and Hank Pym, and Scott\'s daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.', '/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg', '/8YFL5QQVPy3AgrEQxNYVSgiPEbe.jpg', 'Adventure, Science Fiction, Comedy, ', '', '6', NULL, 'Active', '2023-02-16 13:23:23', NULL),
(17, 'Free', '76600', 'tt1630029', 'Science Fiction, Adventure, Action, ', 'No', 'Avatar: The Way of Water', 'Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.', '/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg', '/s16H6tpK2utvwDtzZ8Qy4qm5Emw.jpg', '', '', '7.8', NULL, 'Active', '2023-02-16 15:15:59', NULL),
(18, 'Free', '615777', 'tt10640346', 'Drama, Comedy, ', 'No', 'Babylon', 'A tale of outsized ambition and outrageous excess, tracing the rise and fall of multiple characters in an era of unbridled decadence and depravity during Hollywood\'s transition from silent films and to sound films in the late 1920s.', '/wjOHjWCUE0YzDiEzKv8AfqHj3ir.jpg', '/gwRMwljwHoNCyyJVgMA2XC4qPUU.jpg', '', '', '7.6', NULL, 'Active', '2023-02-16 15:16:54', NULL),
(19, 'Free', '436270', 'tt6443346', 'Black Adam', 'Yes', 'Black Adam', 'Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods—and imprisoned just as quickly—Black Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world.', '/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg', '/bQXAqRx2Fgc46uCVWgoPz5L5Dtr.jpg', 'Fantasy, Action, Science Fiction, ', '', '6.4', NULL, 'Active', '2023-02-19 15:25:08', NULL),
(20, 'Free', '1003580', 'tt22769820', 'Animation, Action, Science Fiction, ', 'No', 'Legion of Super-Heroes', 'Kara, devastated by the loss of Krypton, struggles to adjust to her new life on Earth. Her cousin, Superman, mentors her and suggests she leave their space-time to attend the Legion Academy in the 31st century, where she makes new friends and a new enemy: Brainiac 5. Meanwhile, she must contend with a mysterious group called the Dark Circle as it searches for a powerful weapon held in the Academy’s vault.', '/3whQLi8RI7h2h2Si2KTDFJxfEcR.jpg', '/jhi3K0rN46SSu9wEu6zYVCOeVtH.jpg', '', '', '5.8', NULL, 'Active', '2023-02-19 15:25:18', NULL),
(23, 'Free', '542196', 'tt7319486', 'War, Action, ', 'No', 'Wolf Hound', 'Inspired by the real-life German special operations unit KG 200 that shot down, repaired, and flew Allied aircraft as Trojan horses, \"Wolf Hound\" takes place in 1944 German-occupied France and follows the daring exploits of Jewish-American fighter pilot Captain David Holden. Ambushed behind enemy lines, Holden must rescue a captured B-17 Flying Fortress crew, evade a ruthless enemy stalking him at every turn, and foil a plot that could completely alter the outcome of World War II.', '/gHC0eFvXXNokP3sSNCTG2uks87R.jpg', '/vLPSvAt1CnfmDCeqG3zkFh0s6S4.jpg', '', '', '3.8', NULL, 'Active', '2023-02-19 15:25:57', NULL),
(25, 'Free', '1045944', 'tt23546646', 'Animation, Family, Adventure, ', 'No', 'The Boss Baby: Christmas Bonus', 'Christmas Eve takes a twisty turn when the Boss Baby accidentally swaps places with one of Santa\'s elves and gets stranded at the North Pole.', '/iMmMxF6f2OonUrXrHKBLSYAhXly.jpg', '/nITzFbM1JS7WEvFjjGL0kCb2yPr.jpg', '', '', '5.2', NULL, 'Active', '2023-02-19 15:26:20', NULL),
(35, 'Free', '846433', 'tt14857730', 'Action, Thriller, Drama, ', 'No', 'The Enforcer', 'A noir thriller set in Miami, the film follows an enforcer who discovers his femme fatale boss has branched out into cyber sex trafficking, putting a young runaway he’s befriended at risk. He sacrifices everything to save the young girl from the deadly organization he’s spent his life building.', '/pXC8JJbfnRWtbD8i2yKFqqWEO4X.jpg', '/Aqldsq65Nj1KAkQD2MzkZsAk5N5.jpg', '', '', '5.2', NULL, 'Active', '2023-02-21 16:17:18', NULL),
(36, 'Free', '599019', 'tt9719256', 'Animation, Family, Adventure, ', 'No', 'Big Trip 2: Special Delivery ', 'It has been a year since Mic Mic and Oscar returned from their incredible adventure. And now, after a diabolical plan by Vulture to sabotage the delivery of the Grizzly cub to his opponent in the American presidential elections, Mic Mic, Oscar, Panda teenager and Stork set off on another great adventure as they ride a zeppelin to return little Grizzly to its rightful parents and save the American elections and the whole continent from an erupting volcano.', '/dabXVfrAFfhDte8XVemom3mTJog.jpg', '/isGINC82PZmMblEJP2rBAvSlX37.jpg', '', '', '6.8', NULL, 'Active', '2023-02-21 16:19:58', NULL),
(37, 'Free', '676547', 'tt9271672', 'Horror, Thriller, ', 'No', 'Prey for the Devil', 'In response to a global rise in demonic possessions, the Catholic Church reopens exorcism schools to train priests in the Rite of Exorcism. On this spiritual battlefield, an unlikely warrior rises: a young nun, Sister Ann. Thrust onto the spiritual frontline with fellow student Father Dante, Sister Ann finds herself in a battle for the soul of a young girl and soon realizes the Devil has her right where he wants her.', '/iCvgemXf2Kpr2LvpDmt5J9NhjKM.jpg', '/94kQGMiFbs5MUTlt7kj9dewsMDi.jpg', '', '', '5.2', NULL, 'Active', '2023-02-21 16:20:46', NULL),
(38, 'Free', '996727', 'tt15441472', 'Action, Thriller, Mystery, Crime, Horror, ', 'No', 'The Price We Pay', 'After a pawn shop robbery goes askew, two criminals take refuge at a remote farmhouse to try to let the heat die down, but find something much more menacing.', '/8fwJt0qZieQ7dKaiiqehObWpXYT.jpg', '/f9PSbuMeBS5CuHEOVyymg5lcq8J.jpg', '', '', '6.1', NULL, 'Active', '2023-02-21 16:21:03', NULL),
(39, 'Free', '361743', 'tt1745960', 'Action, Drama, ', 'No', 'Top Gun: Maverick', 'After more than thirty years of service as one of the Navy’s top aviators, and dodging the advancement in rank that would ground him, Pete “Maverick” Mitchell finds himself training a detachment of TOP GUN graduates for a specialized mission the likes of which no living pilot has ever seen.', '/62HCnUTziyWcpDaBO2i1DX17ljH.jpg', '/AaV1YIdWKnjAIAOe8UUKBFm327v.jpg', '', '', '8.3', NULL, 'Active', '2023-02-21 16:21:17', NULL),
(40, 'Free', '1003580', 'tt22769820', 'Animation, Action, Science Fiction, ', 'No', 'Legion of Super-Heroes', 'Kara, devastated by the loss of Krypton, struggles to adjust to her new life on Earth. Her cousin, Superman, mentors her and suggests she leave their space-time to attend the Legion Academy in the 31st century, where she makes new friends and a new enemy: Brainiac 5. Meanwhile, she must contend with a mysterious group called the Dark Circle as it searches for a powerful weapon held in the Academy’s vault.', '/3whQLi8RI7h2h2Si2KTDFJxfEcR.jpg', '/jhi3K0rN46SSu9wEu6zYVCOeVtH.jpg', '', '', '5.8', NULL, 'Active', '2023-02-21 16:21:36', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `recently_watched`
--

CREATE TABLE `recently_watched` (
  `id` int(11) NOT NULL,
  `video_type` varchar(100) DEFAULT NULL,
  `user_id` varchar(9999) DEFAULT NULL,
  `video_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `series_lang_id` int(11) NOT NULL,
  `series_genres` text NOT NULL,
  `upcoming` varchar(10) NOT NULL DEFAULT 'No',
  `series_access` varchar(255) NOT NULL DEFAULT 'Paid',
  `series_name` varchar(500) NOT NULL,
  `series_info` text NOT NULL,
  `director_id` text DEFAULT NULL,
  `series_poster` varchar(500) NOT NULL,
  `series_backdrop` varchar(2555) NOT NULL,
  `tmdb_id` varchar(100) NOT NULL,
  `imdb_id` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `series`
--

INSERT INTO `series` (`id`, `series_lang_id`, `series_genres`, `upcoming`, `series_access`, `series_name`, `series_info`, `director_id`, `series_poster`, `series_backdrop`, `tmdb_id`, `imdb_id`, `rating`, `status`) VALUES
(26, 0, 'Animation, Action & Adventure, Sci-Fi & Fantasy, ', 'No', 'Paid', 'Avatar: The Last Airbender', 'In a war-torn world of elemental magic, a young boy reawakens to undertake a dangerous mystic quest to fulfill his destiny as the Avatar, and bring peace to the world.', NULL, '/cHFZA8Tlv03nKTGXhLOYOLtqoSm.jpg', '/nLKYAJCEi6OQVji1HJIxSQ74H9s.jpg', ' 246', NULL, '8.7', 'Active'),
(30, 0, 'Action & Adventure, Animation, Drama, Family, Sci-Fi & Fantasy, ', 'No', 'Paid', 'The Legend of Korra', 'Avatar Korra, a headstrong, rebellious, feisty young woman who continually challenges and breaks with tradition, is on her quest to become a fully realized Avatar. In this story, the Avatar struggles to find balance within herself.', NULL, '/nhP0VGO2GSZbL4PUgmA6Vja48aM.jpg', '/hmrNfrUl3FFaymDj6Iw5oKQjIs2.jpg', '33880', NULL, '8.3', 'Active'),
(31, 0, 'Drama, Action & Adventure, ', 'No', 'Paid', 'The Last of Us', 'Twenty years after modern civilization has been destroyed, Joel, a hardened survivor, is hired to smuggle Ellie, a 14-year-old girl, out of an oppressive quarantine zone. What starts as a small job soon becomes a brutal, heartbreaking journey, as they both must traverse the United States and depend on each other for survival.', NULL, '/uKvVjHNqB5VmOrdxqAt2F7J78ED.jpg', '/uDgy6hyPd82kOHh6I95FLtLnj6p.jpg', '100088', NULL, '8.8', 'Active'),
(32, 0, 'Crime, Drama, Soap, ', 'No', 'Paid', 'The Lord of the Skies', 'Set in the 1990s, these are the life and times of Amado Carrillo Fuentes, a man who became the head of the Juárez cartel. Nicknamed “El Señor de los Cielos” (Lord of the Skies) because of the large fleet of airplanes he used to transport drugs, he was also known for washing more than $200 million through Colombia to finance his huge fleet. He is described as the most powerful drug trafficker of his time.', NULL, '/Ag7VUdnrRz5Qpq3Yn3E5OCvFnu0.jpg', '/iN9uULLaSx7h21tcR9io2dnARjw.jpg', '44953', NULL, '7.9', 'Active'),
(33, 0, 'Sci-Fi & Fantasy, Drama, Action & Adventure, ', 'No', 'Paid', 'Game of Thrones', 'Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night\'s Watch, is all that stands between the realms of men and icy horrors beyond.', NULL, '/7WUHnWGx5OO145IRxPDUkQSh4C7.jpg', '/2OMB0ynKlyIenMJWI2Dy9IWT4c.jpg', '1399', NULL, '8.4', 'Active'),
(34, 0, 'Mystery, Crime, Drama, ', 'No', 'Paid', 'You', 'A dangerously charming, intensely obsessive young man goes to extreme measures to insert himself into the lives of those he is transfixed by.', NULL, '/7bEYwjUvlJW7GerM8GYmqwl4oS3.jpg', '/2ZNFu0hkSVtAI6LRWGIlCPNd1Tj.jpg', '78191', NULL, '8.1', 'Active'),
(35, 0, 'Animation, Action & Adventure, Sci-Fi & Fantasy, ', 'No', 'Paid', 'Pokémon', 'Join Ash accompanied by his partner Pikachu, as he travels through many regions, meets new friends and faces new challenges on his quest to become a Pokémon Master.', NULL, '/rOuGm07PxBhEsK9TaGPRQVJQm1X.jpg', '/6pZNbFriwBLUdVfC2dWaV9UpEtj.jpg', '60572', NULL, '7.7', 'Active'),
(36, 0, 'Animation, Sci-Fi & Fantasy, Action & Adventure, ', 'No', 'Paid', 'Dragon Ball Z', 'The adventures of Earth\'s martial arts defender, Son Goku, continue with a new family and the revelation of his alien origins. Now Goku and his allies must defend the planet from an onslaught of new extraterrestrial enemies.', NULL, '/jB9l4mp0bzBgzE5y4tvBH6AMeMk.jpg', '/ydf1CeiBLfdxiyNTpskM0802TKl.jpg', '12971', NULL, '8.3', 'Active'),
(37, 0, 'Animation, Sci-Fi & Fantasy, Family, Action & Adventure, Comedy, ', 'No', 'Paid', 'The Owl House', 'An animated fantasy-comedy series that follows Luz, a self-assured teenage girl who accidentally stumbles upon a portal to a magical world where she befriends a rebellious witch, Eda, and an adorably tiny warrior, King. Despite not having magical abilities, Luz pursues her dream of becoming a witch by serving as Eda\'s apprentice at the Owl House and ultimately finds a new family in an unlikely setting.', NULL, '/zqjSex7DZn7p4dU7mMktdJ8zQV5.jpg', '/cHyY5z4txdVyGtYMvBJhCqCcJso.jpg', '92685', NULL, '8.7', 'Active'),
(38, 0, 'Animation, Action & Adventure, Sci-Fi & Fantasy, ', 'No', 'Paid', 'Naruto', 'In another world, ninja are the ultimate power, and in the Village Hidden in the Leaves live the stealthiest ninja in the land. Twelve years earlier, the fearsome Nine-Tailed Fox terrorized the village and claimed many lives before it was subdued and its spirit sealed within the body of a baby boy. That boy, Naruto Uzumaki, has grown up to become a ninja-in-training who\'s more interested in pranks than in studying ninjutsu.. but Naruto is determined to become the greatest ninja ever!', NULL, '/vauCEnR7CiyBDzRCeElKkCaXIYu.jpg', '/xuJ0F9RfKvVSJNDg2usurQ9WvY5.jpg', '46260', NULL, '8.4', 'Active'),
(39, 0, 'Comedy, Drama, ', 'No', 'Paid', 'Ginny & Georgia', 'Angsty and awkward fifteen year old Ginny Miller often feels more mature than her thirty year old mother, the irresistible and dynamic Georgia Miller. After years on the run, Georgia desperately wants to put down roots in picturesque New England and give her family something they\'ve never had... a normal life. But it\'s not all carpool and Kombucha as Georgia\'s past threatens her and her family\'s new way of life... and Georgia will do anything to protect her family.', NULL, '/j1yqOSVVskSYpYreNT0VeD1S3Dq.jpg', '/hVMoqvXs5j9ffun56tZ5YhliSD9.jpg', '117581', NULL, '8.1', 'Active'),
(40, 0, 'Crime, Drama, Mystery, Action & Adventure, ', 'No', 'Paid', 'Arrow', 'Spoiled billionaire playboy Oliver Queen is missing and presumed dead when his yacht is lost at sea. He returns five years later a changed man, determined to clean up the city as a hooded vigilante armed with a bow.', NULL, '/gKG5QGz5Ngf8fgWpBsWtlg5L2SF.jpg', '/vNnLAKmoczRlNarxyGrrw0KSOeX.jpg', '1412', NULL, '6.8', 'Active');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slider_title` varchar(255) DEFAULT NULL,
  `slider_description` varchar(255) DEFAULT NULL,
  `slider_rate` varchar(10) DEFAULT NULL,
  `slider_genre` varchar(25) DEFAULT NULL,
  `slider_img` varchar(2555) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usertype` varchar(25) DEFAULT 'user',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_image` mediumtext DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `password`, `user_image`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.com', 'admin', NULL, '2023-02-08 18:09:10', NULL),
(2, 'user', 'user', 'user@user.com', 'user', NULL, '2023-02-08 18:12:58', NULL),
(24, 'user', 'User 2', 'user2@user.com', 'user', NULL, '2023-02-16 00:02:22', NULL);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `movie_video`
--
ALTER TABLE `movie_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `recently_watched`
--
ALTER TABLE `recently_watched`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `movie_video`
--
ALTER TABLE `movie_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT voor een tabel `recently_watched`
--
ALTER TABLE `recently_watched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT voor een tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
