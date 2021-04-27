-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 10:38 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assetmovement`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add form', 1, 'add_form'),
(2, 'Can change form', 1, 'change_form'),
(3, 'Can delete form', 1, 'delete_form'),
(4, 'Can view form', 1, 'view_form'),
(5, 'Can add document', 2, 'add_document'),
(6, 'Can change document', 2, 'change_document'),
(7, 'Can delete document', 2, 'delete_document'),
(8, 'Can view document', 2, 'view_document'),
(9, 'Can add log entry', 3, 'add_logentry'),
(10, 'Can change log entry', 3, 'change_logentry'),
(11, 'Can delete log entry', 3, 'delete_logentry'),
(12, 'Can view log entry', 3, 'view_logentry'),
(13, 'Can add permission', 4, 'add_permission'),
(14, 'Can change permission', 4, 'change_permission'),
(15, 'Can delete permission', 4, 'delete_permission'),
(16, 'Can view permission', 4, 'view_permission'),
(17, 'Can add group', 5, 'add_group'),
(18, 'Can change group', 5, 'change_group'),
(19, 'Can delete group', 5, 'delete_group'),
(20, 'Can view group', 5, 'view_group'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add content type', 7, 'add_contenttype'),
(26, 'Can change content type', 7, 'change_contenttype'),
(27, 'Can delete content type', 7, 'delete_contenttype'),
(28, 'Can view content type', 7, 'view_contenttype'),
(29, 'Can add session', 8, 'add_session'),
(30, 'Can change session', 8, 'change_session'),
(31, 'Can delete session', 8, 'delete_session'),
(32, 'Can view session', 8, 'view_session'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$mmeeAiHDxu73$17mvhgg+iUGHhhsRWzm/PxktmUK1dPGitVSKFWRxHYg=', '2021-04-21 12:36:42.280382', 1, 'n.kamweru', 'Naomi', 'Kamweru', 'n.kamweru@centum.co.ke', 1, 1, '2021-04-19 09:10:16.000000'),
(8, 'pbkdf2_sha256$216000$XgvFpZ7ku17Q$NgXeC5t/HcnyxTqxgD5IzylDw+O7CZzwP0Sse1mE0Sg=', '2021-04-21 11:25:59.530648', 0, 'n.simi', 'Natasha', 'Simis', 'n.simi@centum.co.ke', 0, 1, '2021-04-20 12:51:15.000000'),
(9, 'pbkdf2_sha256$216000$c3z5vmHV9Fge$zkcU6D5BThRxaw+SZVgkMgZcJKCiYNHACVY5hm4oq7o=', '2021-04-21 05:22:16.920269', 0, 'k.odhiambo', 'Ken', 'Otis', 'k.odhiambo@centum.co.ke', 0, 1, '2021-04-21 05:22:15.513177'),
(13, 'pbkdf2_sha256$216000$wFIXhrskEGwp$r5QIZoBi1iKIzeqYFPg/WJ7mZU7N7OasHPjA4L5qcf8=', NULL, 1, 'i.kagechu', '', '', 'i.kagechu@centum.co.ke', 1, 1, '2021-04-26 08:36:44.353313');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-04-19 19:51:01.369651', '2', 'test', 1, '[{\"added\": {}}]', 6, 1),
(2, '2021-04-20 12:54:57.240133', '1', 'n.kamweru', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 6, 1),
(3, '2021-04-20 13:00:16.500335', '1', 'n.kamweru', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 6, 1),
(4, '2021-04-20 13:24:53.927339', '1', 'n.kamweru', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 6, 1),
(5, '2021-04-20 17:12:23.836779', '1', 'n.kamweru', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 6, 1),
(6, '2021-04-20 18:09:27.561687', '1', 'n.kamweru', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 6, 1),
(7, '2021-04-20 18:09:38.702110', '8', 'n.simi', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(3, 'admin', 'logentry'),
(5, 'auth', 'group'),
(4, 'auth', 'permission'),
(6, 'auth', 'user'),
(7, 'contenttypes', 'contenttype'),
(2, 'Form', 'document'),
(1, 'Form', 'form'),
(9, 'Form', 'user'),
(8, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Form', '0001_initial', '2021-04-19 09:09:29.386873'),
(2, 'contenttypes', '0001_initial', '2021-04-19 09:09:30.607903'),
(3, 'auth', '0001_initial', '2021-04-19 09:09:31.737131'),
(4, 'admin', '0001_initial', '2021-04-19 09:09:39.687333'),
(5, 'admin', '0002_logentry_remove_auto_add', '2021-04-19 09:09:41.536160'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-19 09:09:41.622444'),
(7, 'contenttypes', '0002_remove_content_type_name', '2021-04-19 09:09:42.238251'),
(8, 'auth', '0002_alter_permission_name_max_length', '2021-04-19 09:09:42.943623'),
(9, 'auth', '0003_alter_user_email_max_length', '2021-04-19 09:09:43.030925'),
(10, 'auth', '0004_alter_user_username_opts', '2021-04-19 09:09:43.077309'),
(11, 'auth', '0005_alter_user_last_login_null', '2021-04-19 09:09:43.615965'),
(12, 'auth', '0006_require_contenttypes_0002', '2021-04-19 09:09:43.673133'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2021-04-19 09:09:43.712043'),
(14, 'auth', '0008_alter_user_username_max_length', '2021-04-19 09:09:43.813720'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2021-04-19 09:09:43.906898'),
(16, 'auth', '0010_alter_group_name_max_length', '2021-04-19 09:09:43.998333'),
(17, 'auth', '0011_update_proxy_permissions', '2021-04-19 09:09:44.052265'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2021-04-19 09:09:44.171319'),
(19, 'sessions', '0001_initial', '2021-04-19 09:09:44.387547'),
(20, 'Form', '0002_user', '2021-04-20 11:47:11.654108');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2ixgh5lzbbzkop8e01g8xq8kj068vuqx', '.eJxVjLsOAiEURP-F2hDg8rS09xsIj4usGkiW3cr470qyhTZTzDkzL-LDvlW_D1z9ksmZcHL67WJID2wT5Htot05Tb9u6RDoVetBBrz3j83K4fwc1jPpdg2UMdJbowDCMrEQrQHCUwEByxy0D0NqqktEaXqxQM5XDkJMCbcj7A6R2Nl8:1lZC5y:mBw-nskFB15HoiN9564JKqUi8hvTlOGaEyhre_ZP7Sg', '2021-05-05 12:36:42.389036'),
('36l408x41vzfqxmyv6gb3idsczb8vrsp', '.eJxVjLsOAiEURP-F2hDg8rS09xsIj4usGkiW3cr470qyhTZTzDkzL-LDvlW_D1z9ksmZcHL67WJID2wT5Htot05Tb9u6RDoVetBBrz3j83K4fwc1jPpdg2UMdJbowDCMrEQrQHCUwEByxy0D0NqqktEaXqxQM5XDkJMCbcj7A6R2Nl8:1lYjF0:2eVsDXzr8u01BL2PuLD6CvOCm7yAV8i7iLMpV7zeOdI', '2021-05-04 05:48:06.688606'),
('du40lcftybesyyy8jwiz335fbr26ltnp', '.eJxVjrsOwyAUQ_-FuULABQIdu-cbEI9LSR9BIslU9d8bqgzt4sE-tvwizm9rcduCzU2JnAknp18v-HjHuQfp5udrpbHOa5sC7Qg90oWONeHjcrB_A8UvZW-DYQx0kmhhYBhYDkaA4CiBgeSWGwagtVE5oRl4NkJ1VRZ9igr0sI_m2p7fj_b9AUfcOiI:1lZ5qE:PvvRjnOSwhy2UQin-6utTWsOw7KP-dSO_k-leTey204', '2021-05-05 05:56:02.333447');

-- --------------------------------------------------------

--
-- Table structure for table `form_document`
--

CREATE TABLE `form_document` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `document` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `document_user_id_id` varchar(100) DEFAULT NULL,
  `document_form_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_document`
--

INSERT INTO `form_document` (`id`, `description`, `document`, `uploaded_at`, `document_user_id_id`, `document_form_id`) VALUES
(1, 'Exchange at Nabo', 'documents/gatepass_49.pdf', '2021-04-19 09:14:53.186683', NULL, 1),
(2, 'Naomi Maintenance', 'documents/gatepass_49_HbkdFVR.pdf', '2021-04-20 11:13:23.323744', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `form_form`
--

CREATE TABLE `form_form` (
  `id` int(11) NOT NULL,
  `asset_name` varchar(100) NOT NULL,
  `asset_sn` varchar(10) NOT NULL,
  `place_from` varchar(100) NOT NULL,
  `place_to` varchar(100) NOT NULL,
  `receivers_name` varchar(100) NOT NULL,
  `receivers_id` varchar(10) NOT NULL,
  `reason` longtext NOT NULL,
  `confirmed_by` varchar(100) NOT NULL,
  `form_user` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_form`
--

INSERT INTO `form_form` (`id`, `asset_name`, `asset_sn`, `place_from`, `place_to`, `receivers_name`, `receivers_id`, `reason`, `confirmed_by`, `form_user`, `date`, `time`) VALUES
(1, 'Laptop', '47576576', 'TierData', 'Nabo', 'Ken', '65855678', 'Exchange', 'Isaac', 'n.kamweru', '2021-04-19', '12:13:36.870660'),
(10, 'Laptop', '45763', 'TierData', 'Nabo', 'Kim', '343232', 'Exchange at reception', 'Isaac', 'n.kamweru', '2021-04-21', '14:14:45.677131'),
(12, 'Laptop', '45763', 'TierData', 'Nabo', 'Kim', '343232', 'Exchange at reception', 'Isaac', 'n.kamweru', '2021-04-21', '14:23:59.587727'),
(13, 'TV', '2222222', 'TierData', 'Maintenance', 'Henry', '2444433', 'Battery exchange', 'Isaac', 'n.simi', '2021-04-21', '14:26:44.009745'),
(23, 'Laptop', '44554', 'TierData', 'Nabo', 'Jim', '233322', 'Exchange', 'Isaac', 'n.kamweru', '2021-04-21', '15:35:06.022003'),
(24, 'Laptop', '44554', 'TierData', 'Nabo', 'Jim', '233322', 'Exchange', 'Isaac', 'n.kamweru', '2021-04-21', '15:35:12.916476'),
(29, 'TV', '367627', 'TierData', 'Nabo', 'Tim', '3643637', 'Exchange', 'Eric', 'n.kamweru', '2021-04-21', '15:37:20.190014'),
(30, 'TV', '3257', 'TierData', 'Zohari', 'Tom', '36767', 'Exchange', 'Isaac', 'n.kamweru', '2021-04-21', '15:38:20.362717'),
(31, 'Desktop', '363875767', 'TierData', 'Nabo', 'Ken', '23443', 'Exchange', 'Isaac', 'n.kamweru', '2021-04-21', '16:21:18.457588');

-- --------------------------------------------------------

--
-- Table structure for table `form_user`
--

CREATE TABLE `form_user` (
  `id` int(11) NOT NULL,
  `no_id` int(11) NOT NULL,
  `username` longtext NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `form_document`
--
ALTER TABLE `form_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Form_document_document_form_id_c677924c_fk_form_form_id` (`document_form_id`);

--
-- Indexes for table `form_form`
--
ALTER TABLE `form_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_user`
--
ALTER TABLE `form_user`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `form_document`
--
ALTER TABLE `form_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `form_form`
--
ALTER TABLE `form_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `form_user`
--
ALTER TABLE `form_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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

--
-- Constraints for table `form_document`
--
ALTER TABLE `form_document`
  ADD CONSTRAINT `Form_document_document_form_id_c677924c_fk_form_form_id` FOREIGN KEY (`document_form_id`) REFERENCES `form_form` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
