-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2020 at 05:37 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dashdemo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add lyrics_mod', 7, 'add_lyrics_mod'),
(26, 'Can change lyrics_mod', 7, 'change_lyrics_mod'),
(27, 'Can delete lyrics_mod', 7, 'delete_lyrics_mod'),
(28, 'Can view lyrics_mod', 7, 'view_lyrics_mod'),
(29, 'Can add lyrics_admin_mod', 8, 'add_lyrics_admin_mod'),
(30, 'Can change lyrics_admin_mod', 8, 'change_lyrics_admin_mod'),
(31, 'Can delete lyrics_admin_mod', 8, 'delete_lyrics_admin_mod'),
(32, 'Can view lyrics_admin_mod', 8, 'view_lyrics_admin_mod');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'lyrics', 'lyrics_admin_mod'),
(7, 'lyrics', 'lyrics_mod'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-11-29 05:36:26.540596'),
(2, 'auth', '0001_initial', '2019-11-29 05:36:29.588436'),
(3, 'admin', '0001_initial', '2019-11-29 05:36:40.266458'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-11-29 05:36:43.483858'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-11-29 05:36:43.534060'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-11-29 05:36:44.665472'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-11-29 05:36:44.989645'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-11-29 05:36:45.183009'),
(9, 'auth', '0004_alter_user_username_opts', '2019-11-29 05:36:45.236771'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-11-29 05:36:46.744129'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-11-29 05:36:46.786573'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-11-29 05:36:46.873161'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-11-29 05:36:47.151356'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-11-29 05:36:47.342347'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-11-29 05:36:47.584492'),
(16, 'auth', '0011_update_proxy_permissions', '2019-11-29 05:36:47.654169'),
(17, 'lyrics', '0001_initial', '2019-11-29 05:36:48.119409'),
(18, 'sessions', '0001_initial', '2019-11-29 05:36:48.798997'),
(19, 'lyrics', '0002_lyrics_mod_lyrics_banner', '2020-02-01 11:29:18.764575'),
(20, 'lyrics', '0003_lyrics_admin_mod', '2020-02-05 03:40:03.788439'),
(21, 'lyrics', '0004_auto_20200205_1041', '2020-02-05 05:11:25.492411'),
(22, 'lyrics', '0005_lyrics_mod_is_live', '2020-02-06 12:08:26.789841');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('r4h7rwl1d8oonbrsfvtguoozi6uuapjp', 'ZmFkNTEwYTkwZGQ4MTk0YzFjZGY0ZTNmNjZhMGYyMzE4OWIyMDVkNjp7fQ==', '2020-02-21 11:52:47.612935');

-- --------------------------------------------------------

--
-- Table structure for table `lyrics`
--

CREATE TABLE `lyrics` (
  `id` int(11) NOT NULL,
  `lyrics_nm` varchar(100) NOT NULL,
  `lyrics` varchar(2000) NOT NULL,
  `singer` varchar(100) NOT NULL,
  `nos` varchar(6) NOT NULL,
  `date` varchar(10) NOT NULL,
  `genre` varchar(40) NOT NULL,
  `music_type` varchar(20) NOT NULL,
  `lyrics_banner` varchar(100) DEFAULT NULL,
  `is_live` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lyrics`
--

INSERT INTO `lyrics` (`id`, `lyrics_nm`, `lyrics`, `singer`, `nos`, `date`, `genre`, `music_type`, `lyrics_banner`, `is_live`) VALUES
(7, 'Pyar Diwana Hota Hai', 'slfjldkd aTU', 'Lata Mangeshkar, Kishore Kumar', '2', '1997', 'Classical', 'Bollywood', NULL, NULL),
(8, 'Lyrics', 'sd.kfmkmdfd', 'Lata Mangeshkar, Kishore Kumar', '2', '1997', 'Classical', 'Bollywood', NULL, NULL),
(9, 'Closer', 'Hey, I was doing just fine before I met you\r\nI drink too much and that\'s an issue but I\'m okay\r\nHey, you tell your friends it was nice to meet them\r\nBut I hope I never see them again\r\nI know it breaks your heart\r\nMoved to the city in a broke down car\r\nAnd four years, no calls\r\nNow you\'re looking pretty in a hotel bar\r\nAnd I can\'t stop\r\nNo, I can\'t stop\r\nSo baby pull me closer in the backseat of your Rover\r\nThat I know you can\'t afford\r\nBite that tattoo on your shoulder\r\nPull the sheets right off the corner\r\nOf the mattress that you stole\r\nFrom your roommate back in Boulder\r\nWe ain\'t ever getting older\r\nWe ain\'t ever getting older\r\nWe ain\'t ever getting older\r\nYou look as good as the day I met you\r\nI forget just why I left you, I was insane\r\nStay and play that Blink-182 song\r\nThat we beat to death in Tucson, okay\r\nI know it breaks your heart\r\nMoved to the city in a broke down car\r\nAnd four years, no call\r\nNow I\'m looking pretty in a hotel bar\r\nAnd I can\'t stop\r\nNo, I can\'t stop\r\nSo baby pull me closer in the backseat of your Rover\r\nThat I know you can\'t afford\r\nBite that tattoo on your shoulder\r\nPull the sheets right off the corner\r\nOf the mattress that you stole\r\nFrom your roommate back in Boulder\r\nWe ain\'t ever getting older\r\nWe ain\'t ever getting older\r\nWe ain\'t ever getting older\r\nSo baby pull me closer in the backseat of your Rover\r\nThat I know you can\'t afford\r\nBite that tattoo on your shoulder\r\nPull the sheets right off the corner\r\nOf the mattress that you stole\r\nFrom your roommate back in Boulder\r\nWe ain\'t ever getting older\r\nWe ain\'t ever getting older (we ain\'t ever getting older)\r\nWe ain\'t ever getting older (we ain\'t ever getting older)\r\nWe ain\'t ever getting older (we ain\'t ever getting older)\r\nWe ain\'t ever getting older\r\nWe ain\'t ever getting older\r\nNo we ain\'t ever getting older', 'Chainsmokers', '1', '2016', 'Dance/Electronic, Pop', 'Hollywood', NULL, NULL),
(10, 'Titanic', 'asdvfghjkllpoiuytrewq', 'Lata Mangeshkar, Kishore Kumar', '8', '2011', 'Classical', 'Hollywood', NULL, NULL),
(11, 'Kora kagaz', 'dddddddddddddddddddd fgshgfn  ghgjv   th', 'Bilal saeed', '1', '2011', 'pop', 'Bollywood', NULL, NULL),
(12, 'Kora kagaz', 'fgfh grfg gfg h f fh', 'Bilal saeed', '1', '1997', 'Classical', 'Hollywood', NULL, NULL),
(13, 'Afreen', 'Aisa dekha nahi khoobsurat koi\r\nJism jaise Ajanta ki murat koi\r\nJism jaise nigahon pe jadoo koi\r\nJism nagma koi jism khushboo koi\r\nJism jaise mehakti hui chandni\r\nJism jaise machalti hui ragini\r\nJism jaise ke khilta hua ik chaman\r\nJism jaise ke suraj ki pehli kiran\r\nJism tarsha hua dilkasho dilnashin\r\nSandli sandli marmari marmari\r\nHusan-e-jaana ki tareef mumkin nahi\r\nHusan-e-jaana ki tareef mumkin nahi\r\nAfreen afreen afreen afreen\r\nTu bhi dekhe agar toh kahe humnashin\r\nAfreen afreen afreen afreen\r\nHusan-e-jaana ki tareef mumkin nahi\r\nHusan-e-jaana ki tareef mumkin nahi…\r\n\r\n[Verse 2: Momina Mustehsan]\r\nJane kaisi bandhi tune akhiyon ke dor\r\nMann mera khicha chala aaya teri aor\r\nMere chehre ki subah zulfon ki shaam\r\nMera sab kuch hai piya ab se tere naam\r\nNazron ne teri chhua toh hai ye jadoo hua\r\nHone lagi hoon main haseen\r\nAfreen afreen afreen\r\nAfreen afreen afreen\r\nAfreen afreen afreen\r\nAfreen afreen afreen\r\n\r\n[Verse 3: Rahat Fateh Ali Khan]\r\nChehra ik phool ki tarah shadaab hai\r\nChehra uska hai ya koi mahtaab hai\r\nChehra jaise ghazal chehra jaane ghazal\r\nChehra jaise kali chehra jaise kanwal\r\nChehra jaise tasavur bhi tasveer bhi\r\nChehra ik khwab bhi chehra tabeer bhi\r\nChehra koi aliflailvi dastaan\r\nChehra ik pal yakeen chehra ik pal gumah\r\nChehra jaisa ke chehra kahin bhi nahi..\r\nMahrooh mahrooh mehjabin mehjabin\r\nHusn-e-jaana ki tareef mumkin nahi\r\nHusn-e-jaana ki tareef mumkin nahi\r\nAfreen afreen afreen afreen\r\nTu bhi dekhe agar toh kahe humnashin\r\nAfreen afreen afreen afreen\r\nUsne jaana ki tareef mumkin nahi…\r\n(Afreen..afreen..)', 'Rahat Fateh Ali Khan', '05', '2016', 'Classical', 'Bollywood', NULL, NULL),
(14, 'Tum Hi Ho', 'Hum Tere Bin Ab Reh Nahi Sakte Tere Bina Kya Wajood Mera Hum Tere Bin Ab Reh Nahi Sakte Tere Bina Kya Wajood Mera Tujhse Juda Gar Ho Jaayenge Toh Khud Se Hi Ho Jaayenge Judaa Kyunki Tum Hi Ho Ab Tum Hi Ho Zindagi Ab Tum Hi Ho Chain Bhi, Mera Dard Bhi Meri Aashiqui Ab Tum Hi Ho Tera Mera Rishta Hai Kaisa Ik Pal Door Gawaara Nahi Tere Liye Har Roz Hai Jeete Tujh Ko Diya Mera Waqt Sabhi Koi Lamha Mera Na Ho Tere Bina Har Saans Pe Naam Tera Kyunki Tum Hi Ho Ab Tum Hi Ho Zindagi Ab Tum Hi Ho Chain Bhi, Mera Dard Bhi Meri Aashiqui Ab Tum Hi Ho Tumhi Ho... Tumhi Ho... Tere Liye Hi Jiya Main Khud Ko Jo Yun De Diya Hai Teri Wafa Ne Mujhko Sambhala Saare Ghamon Ko Dil…', 'Arijit Singh', '1', '2014', 'Melody', 'Bollywood', NULL, NULL),
(15, 'Dheeme dheeme', 'dheeme dheeme  gjfhjgksjhkj hyfhgdh', 'tony kakkar', '2', '2019', 'pop', 'Bollywood', NULL, 1),
(16, 'Aayat', 'Aayat Ki tarah', 'Arijit Singh', '01', '2020', 'Classical', 'Local Indian', 'lyrics_banner/kajal_diwani.jpg', 1),
(17, 'Hello', 'happen in the sky.... now you own it', 'Adle', '01', '2014', 'pop', 'Hollywood', 'lyrics_banner/Girl-With-Lantern-Art-Wallpaper-1080x1920.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tune`
--

CREATE TABLE `tune` (
  `id` int(11) NOT NULL,
  `ad_uname` varchar(50) NOT NULL,
  `ad_pass` varchar(140) NOT NULL,
  `log_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tune`
--

INSERT INTO `tune` (`id`, `ad_uname`, `ad_pass`, `log_type`) VALUES
(1, 'rathaurkajal2201@gmail.com', 'd7c937a70910cd261f4cf387e3f49a0b', 'dev');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `lyrics`
--
ALTER TABLE `lyrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tune`
--
ALTER TABLE `tune`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lyrics`
--
ALTER TABLE `lyrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tune`
--
ALTER TABLE `tune`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
