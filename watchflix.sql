-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 16 feb 2023 om 22:59
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
(2, 'Paid', '877703', 'tt15486810', 'Action, Fa', 'No', 'Teen Wolf: The Movie', 'The wolves are howling once again, as a terrifying ancient evil emerges in Beacon Hills. Scott McCall, no longer a teenager yet still an Alpha, must gather new allies and reunite trusted friends to fight back against this powerful and deadly enemy.', '/wAkpPm3wcHRqZl8XjUI3Y2chYq2.jpg', '/96SADhPnkXnVN3KaRKsDeBovLcm.jpg', '', '', '5.7', NULL, 'Active', '2023-02-12 20:42:31', NULL),
(3, 'Free', '24428', 'tt0848228', 'Science Fi', 'Yes', 'The Avengers', 'When an unexpected enemy emerges and threatens global safety and security, Nick Fury, director of the international peacekeeping agency known as S.H.I.E.L.D., finds himself in need of a team to pull the world back from the brink of disaster. Spanning the globe, a daring recruitment effort begins!', '/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg', '/9BBTo63ANSmhC4e6r62OJFuK2GL.jpg', '', '', '8.0', NULL, 'Active', '2023-02-12 20:43:22', NULL),
(4, 'Free', '315162', 'tt3915174', 'Animation,', 'Yes', 'Puss in Boots: The Last Wish', 'Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.', '/kuf6dutpsT0vSVehic3EZIqkOBt.jpg', '/tGwO4xcBjhXC0p5qlkw37TrH6S6.jpg', '', '', '7.9', NULL, 'Inactive', '2023-02-12 20:44:46', NULL),
(11, 'Free', '555604', 'tt1488589', 'Animation, Fantasy, Drama, ', 'Yes', 'Guillermo del Toro\'s Pinocchio', 'During the rise of fascism in Mussolini\'s Italy, a wooden boy brought magically to life struggles to live up to his father\'s expectations.', '/vx1u0uwxdlhV2MUzj4VlcMB0N6m.jpg', '/e782pDRAlu4BG0ahd777n8zfPzZ.jpg', '', '', '7.7', NULL, 'Active', '2023-02-12 22:24:41', NULL),
(13, 'Paid', '335787', 'tt1464335', 'Action, Adventure, ', 'Yes', 'Uncharted', 'A young street-smart, Nathan Drake and his wisecracking partner Victor “Sully” Sullivan embark on a dangerous pursuit of “the greatest treasure never found” while also tracking clues that may lead to Nathan’s long-lost brother.', '/rJHC1RUORuUhtfNb4Npclx0xnOf.jpg', '/aEGiJJP91HsKVTEPy1HhmN0wRLm.jpg', '', '', '6.3', NULL, 'Active', '2023-02-15 17:07:35', NULL),
(14, 'Free', '414906', 'tt1877830', 'Crime, Mystery, Thriller, ', 'No', 'The Batman', 'In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.', '/74xTEgt7R36Fpooo50r9T25onhq.jpg', '/b0PlSFdDwbyK0cf5RxwDpaOJQvQ.jpg', '', '', '7.8', NULL, 'Active', '2023-02-15 18:10:13', NULL),
(16, 'Free', '640146', 'tt10954600', 'Adventure, Science Fiction, Comedy, ', 'no', 'Ant-Man and the Wasp: Quantumania', 'Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope\'s parents Janet van Dyne and Hank Pym, and Scott\'s daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.', '/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg', '/8YFL5QQVPy3AgrEQxNYVSgiPEbe.jpg', '', '', '6', NULL, 'Active', '2023-02-16 13:23:23', NULL),
(17, 'Free', '76600', 'tt1630029', 'Science Fiction, Adventure, Action, ', 'No', 'Avatar: The Way of Water', 'Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.', '/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg', '/s16H6tpK2utvwDtzZ8Qy4qm5Emw.jpg', '', '', '7.8', NULL, 'Active', '2023-02-16 15:15:59', NULL),
(18, 'Free', '615777', 'tt10640346', 'Drama, Comedy, ', 'No', 'Babylon', 'A tale of outsized ambition and outrageous excess, tracing the rise and fall of multiple characters in an era of unbridled decadence and depravity during Hollywood\'s transition from silent films and to sound films in the late 1920s.', '/wjOHjWCUE0YzDiEzKv8AfqHj3ir.jpg', '/gwRMwljwHoNCyyJVgMA2XC4qPUU.jpg', '', '', '7.6', NULL, 'Active', '2023-02-16 15:16:54', NULL);

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
  `upcoming` tinyint(1) DEFAULT NULL,
  `series_access` varchar(10) DEFAULT NULL,
  `serie_name` varchar(99) DEFAULT NULL,
  `serie_description` varchar(355) DEFAULT NULL,
  `actor_id` varchar(25) DEFAULT NULL,
  `director_id` varchar(25) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `content_rating` varchar(5) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT voor een tabel `recently_watched`
--
ALTER TABLE `recently_watched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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