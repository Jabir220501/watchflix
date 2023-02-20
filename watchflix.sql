-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 20 feb 2023 om 00:03
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
(22, 'Free', '1041513', 'tt22695080', 'Encanto at the Hollywood Bowl', 'Yes', 'Encanto at the Hollywood Bowl', 'A taped performance of the Encanto Live-to-Film Concert Experience at the Hollywood Bowl. The original cast puts on a miracle of a concert as they sing the favorite songs, accompanied by a full orchestra and 50 person ensemble, and the Hollywood Bowl transforms into Casita!', '/sa3Ku5yNVjp8NloWxJoI9dQjvOi.jpg', '/tsjXBo4LmzV0Bb9hdrz25tzX5GD.jpg', 'Music, ', '', '7.5', NULL, 'Active', '2023-02-19 15:25:42', NULL),
(23, 'Free', '542196', 'tt7319486', 'War, Action, ', 'No', 'Wolf Hound', 'Inspired by the real-life German special operations unit KG 200 that shot down, repaired, and flew Allied aircraft as Trojan horses, \"Wolf Hound\" takes place in 1944 German-occupied France and follows the daring exploits of Jewish-American fighter pilot Captain David Holden. Ambushed behind enemy lines, Holden must rescue a captured B-17 Flying Fortress crew, evade a ruthless enemy stalking him at every turn, and foil a plot that could completely alter the outcome of World War II.', '/gHC0eFvXXNokP3sSNCTG2uks87R.jpg', '/vLPSvAt1CnfmDCeqG3zkFh0s6S4.jpg', '', '', '3.8', NULL, 'Active', '2023-02-19 15:25:57', NULL),
(25, 'Free', '1045944', 'tt23546646', 'Animation, Family, Adventure, ', 'No', 'The Boss Baby: Christmas Bonus', 'Christmas Eve takes a twisty turn when the Boss Baby accidentally swaps places with one of Santa\'s elves and gets stranded at the North Pole.', '/iMmMxF6f2OonUrXrHKBLSYAhXly.jpg', '/nITzFbM1JS7WEvFjjGL0kCb2yPr.jpg', '', '', '5.2', NULL, 'Active', '2023-02-19 15:26:20', NULL),
(31, 'Free', '634649', 'tt10872600', 'Spider-Man: No Way Homee', 'No', 'Spider-Man: No Way Home', 'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.', '/uJYYizSuA9Y3DCs0qS4qWvHfZg4.jpg', '/14QbnygCuTO0vl7CAFmPf1fgZfV.jpg', 'Spider-Man: No Way Home', '', '8.2', NULL, 'Active', '2023-02-19 20:00:51', NULL),
(32, 'Free', '399566', 'tt5034838', 'Godzilla vs. Konggg', 'No', 'Godzilla vs. Kong', 'In a time when monsters walk the Earth, humanity’s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.', '/pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg', '/inJjDhCjfhh3RtrJWBmmDqeuSYC.jpg', 'Godzilla vs. Kong', '', '6.3', NULL, 'Active', '2023-02-19 20:57:25', NULL);

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
  `upcoming` int(1) NOT NULL DEFAULT 0,
  `series_access` varchar(255) NOT NULL DEFAULT 'Paid',
  `series_name` varchar(500) NOT NULL,
  `series_info` text NOT NULL,
  `director_id` text DEFAULT NULL,
  `series_poster` varchar(500) NOT NULL,
  `tmdb_id` varchar(100) NOT NULL,
  `imdb_id` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `series`
--

INSERT INTO `series` (`id`, `series_lang_id`, `series_genres`, `upcoming`, `series_access`, `series_name`, `series_info`, `director_id`, `series_poster`, `tmdb_id`, `imdb_id`, `rating`, `status`) VALUES
(1, 2, '2,1,5', 0, 'Paid', 'The Terminal List', 'A former Navy SEAL officer investigates why his entire platoon was ambushed during a high-stakes covert mission.', NULL, 'upload/images/TheTerminalList-1.jpg', '', NULL, '8.2', 'Active');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT voor een tabel `recently_watched`
--
ALTER TABLE `recently_watched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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