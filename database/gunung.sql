-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220820.c36dd24b59
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Apr 06, 2023 at 04:33 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sig_pendakian`
--

-- --------------------------------------------------------

--
-- Table structure for table `gunung`
--

CREATE TABLE `gunung` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `long` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gunung`
--

INSERT INTO `gunung` (`id`, `nama`, `alamat`, `lat`, `long`, `type`) VALUES
(1, 'Gunung Bromo', 'Mount Brom, Area Gn. Bromo, Podokoyo, Tosari, Pasuruan Regency, East Java', -7.942490, 112.953011, 'gunung'),
(2, 'Gunung Pundak', 'Gunung Pundak, Hutan, Pacet, Mojokerto Regency, East Java', -7.695000, 112.571381, 'gunung'),
(3, 'Gunung Penanggungan', 'Gunung Penanggungan, Area Hutan, Hutan, Kec. Ngoro, Kabupaten Mojokerto, Jawa Ti', -7.615020, 112.620163, 'gunung'),
(4, 'Gunung Arjuno-Welirang', 'Arjuno-Welirang, Pecalukan Barat, Pecalukan, Prigen, Pasuruan Regency, East Java', -7.725000, 112.589439, 'gunung'),
(5, 'Gunung Semar', 'Gunung Semar, Hutan, Gondang, Mojokerto Regency, East Java', -7.710550, 112.450272, 'gunung'),
(6, 'Gunung Bekel', 'Gunung Bekel, Area Hutan, Hutan, Trawas, Mojokerto Regency, East Java', -7.608610, 112.607773, 'gunung'),
(7, 'Gunung Lorokan', 'Hutan, Kec. Pacet, Kabupaten Mojokerto, Jawa Timur 61374', -7.688310, 112.523109, 'gunung'),
(8, 'Center Point Pos Perizinan Penangunggan via kedungundi', 'Gunung Penanggungan, Area Hutan, Hutan, Kec. Ngoro, Kabupaten Mojokerto, Jawa Ti', -7.624980, 112.599930, 'pos'),
(9, 'Center Point Pos pendakian Gunung Penanggungan Kunjorowesi', 'Gunung Penanggungan, Area Hutan, Hutan, Kec. Ngoro, Kabupaten Mojokerto, Jawa Ti', -7.610290, 112.639709, 'pos'),
(10, 'Center Point Pos Pendakian Penanggungan via Tamiajeng', 'Gunung Penanggungan, Area Hutan, Hutan, Kec. Ngoro, Kabupaten Mojokerto, Jawa Ti', -7.646780, 112.605247, 'pos'),
(11, 'Basecamp PJT Telogo', 'Gunung Penanggungan, Area Hutan, Hutan, Kec. Ngoro, Kabupaten Mojokerto, Jawa Ti', -7.605930, 112.632500, 'pos'),
(12, 'Center Point Pos Perijinan Gunung Penanggungan Jalur Kesiman', 'Gunung Penanggungan, Area Hutan, Hutan, Kec. Ngoro, Kabupaten Mojokerto, Jawa Ti', -7.641860, 112.644943, 'pos'),
(13, 'Center Point Pos Perizinan Bromo Wonokitri', 'Mount Brom, Area Gn. Bromo, Podokoyo, Tosari, Pasuruan Regency, East Java', -7.894970, 112.911842, 'pos'),
(14, 'Center Point Pos Pendakian Gunung Arjuno Via Tambaksari', 'Arjuno-Welirang, Pecalukan Barat, Pecalukan, Prigen, Pasuruan Regency, East Java', -7.780590, 112.657837, 'pos'),
(15, 'Center Point Pos Ijin Pendakian Arjuno & Welirang dari Trete', 'Arjuno-Welirang, Pecalukan Barat, Pecalukan, Prigen, Pasuruan Regency, East Java', -7.705140, 112.626671, 'pos'),
(16, 'Center Point Pos Pendakian Gunung Pundak Owa Buper', 'Gunung Pundak, Hutan, Pacet, Mojokerto Regency, East Java', -7.687610, 112.559959, 'pos'),
(17, 'Center Point Pos Pendakian Puthuk Siwur', 'Gunung Pundak, Hutan, Pacet, Mojokerto Regency, East Java', -7.679380, 112.567970, 'pos'),
(18, 'Center Point Pos Pendakian Gunung Penanggungan & Bekel', 'Gunung Bekel, Area Hutan, Hutan, Trawas, Mojokerto Regency, East Java', -7.608210, 112.593002, 'pos'),
(19, 'Center Point Pintu Masuk Pendakian Gunung Lorokan', 'Hutan, Kec. Pacet, Kabupaten Mojokerto, Jawa Timur 61374', -7.690820, 112.530609, 'pos'),
(20, 'Center Point Pos Perizinan Pendakian Bukit semar', 'Gunung Semar, Hutan, Gondang, Mojokerto Regency, East Java', -7.651590, 112.473991, 'pos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gunung`
--
ALTER TABLE `gunung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gunung`
--
ALTER TABLE `gunung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
