-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2019 at 12:58 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `springboot_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `role_id`) VALUES
(1, 'ADMIN', 0),
(2, 'USER', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 1, 'ShopID:1-UserID:1', 'desc', NULL, NULL),
(2, 2, 'ShopID:2-UserID:2', 'desc', NULL, NULL),
(3, 3, 'ShopID:3-UserID:3', 'desc', NULL, NULL),
(4, 4, 'ShopID:4-UserID:4', 'desc', NULL, NULL),
(5, 5, 'ShopID:5-UserID:5', 'desc', NULL, NULL),
(6, 6, 'ShopID:6-UserID:6', 'desc', NULL, NULL),
(7, 7, 'ShopID:7-UserID:7', 'desc', NULL, NULL),
(8, 8, 'ShopID:8-UserID:8', 'desc', NULL, NULL),
(9, 9, 'ShopID:9-UserID:9', 'desc', NULL, NULL),
(10, 10, 'ShopID:10-UserID:10', 'desc', NULL, NULL),
(11, 11, 'ShopID:11-UserID:11', 'desc', NULL, NULL),
(12, 12, 'ShopID:12-UserID:12', 'desc', NULL, NULL),
(13, 13, 'ShopID:13-UserID:13', 'desc', NULL, NULL),
(14, 14, 'ShopID:14-UserID:14', 'desc', NULL, NULL),
(15, 15, 'ShopID:15-UserID:15', 'desc', NULL, NULL),
(16, 16, 'ShopID:16-UserID:16', 'desc', NULL, NULL),
(17, 17, 'ShopID:17-UserID:17', 'desc', NULL, NULL),
(18, 18, 'ShopID:18-UserID:18', 'desc', NULL, NULL),
(19, 19, 'ShopID:19-UserID:19', 'desc', NULL, NULL),
(20, 20, 'ShopID:20-UserID:20', 'desc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SPRING_SESSION`
--

CREATE TABLE `SPRING_SESSION` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SPRING_SESSION`
--

INSERT INTO `SPRING_SESSION` (`PRIMARY_ID`, `SESSION_ID`, `CREATION_TIME`, `LAST_ACCESS_TIME`, `MAX_INACTIVE_INTERVAL`, `EXPIRY_TIME`, `PRINCIPAL_NAME`) VALUES
('5cdcfb56-5529-4fd4-9f8d-0daf11c27616', '52fb1cfe-b178-40de-a837-e3afa05ab123', 1553950657205, 1553950679234, 1800, 1553952479234, 'user1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `SPRING_SESSION_ATTRIBUTES`
--

CREATE TABLE `SPRING_SESSION_ATTRIBUTES` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `SPRING_SESSION_ATTRIBUTES`
--

INSERT INTO `SPRING_SESSION_ATTRIBUTES` (`SESSION_PRIMARY_ID`, `ATTRIBUTE_NAME`, `ATTRIBUTE_BYTES`) VALUES
('5cdcfb56-5529-4fd4-9f8d-0daf11c27616', 'session-name', 0xaced000574000f757365723140676d61696c2e636f6d),
('5cdcfb56-5529-4fd4-9f8d-0daf11c27616', 'SPRING_SECURITY_CONTEXT', 0xaced00057372003d6f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e636f6e746578742e5365637572697479436f6e74657874496d706c00000000000001fe0200014c000e61757468656e7469636174696f6e7400324c6f72672f737072696e676672616d65776f726b2f73656375726974792f636f72652f41757468656e7469636174696f6e3b78707372004f6f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e557365726e616d6550617373776f726441757468656e7469636174696f6e546f6b656e00000000000001fe0200024c000b63726564656e7469616c737400124c6a6176612f6c616e672f4f626a6563743b4c00097072696e636970616c71007e0004787200476f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e416273747261637441757468656e7469636174696f6e546f6b656ed3aa287e6e47640e0200035a000d61757468656e746963617465644c000b617574686f7269746965737400164c6a6176612f7574696c2f436f6c6c656374696f6e3b4c000764657461696c7371007e0004787001737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c6973747400104c6a6176612f7574696c2f4c6973743b7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c00016371007e00067870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001737200426f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e617574686f726974792e53696d706c654772616e746564417574686f7269747900000000000001fe0200014c0004726f6c657400124c6a6176612f6c616e672f537472696e673b787074000541444d494e7871007e000d737200486f72672e737072696e676672616d65776f726b2e73656375726974792e7765622e61757468656e7469636174696f6e2e57656241757468656e7469636174696f6e44657461696c7300000000000001fe0200024c000d72656d6f74654164647265737371007e000f4c000973657373696f6e496471007e000f787074000f303a303a303a303a303a303a303a3174002466366537343037362d613439352d346233622d386635642d30623837613437663363653170737200326f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657200000000000001fe0200075a00116163636f756e744e6f6e457870697265645a00106163636f756e744e6f6e4c6f636b65645a001563726564656e7469616c734e6f6e457870697265645a0007656e61626c65644c000b617574686f72697469657374000f4c6a6176612f7574696c2f5365743b4c000870617373776f726471007e000f4c0008757365726e616d6571007e000f787001010101737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007871007e000a737200116a6176612e7574696c2e54726565536574dd98509395ed875b0300007870737200466f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657224417574686f72697479436f6d70617261746f7200000000000001fe020000787077040000000171007e0010787074000f757365723140676d61696c2e636f6d);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL DEFAULT '0',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `password`, `age`, `address`, `city`, `mobile`, `active`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user1', 'surname1', 'user1@gmail.com', '$2a$10$Gdv78kS1r9GGjfWuZKfw2e4mZI1fJAEfaqCCSQ1JPSlbL.UIEKYPq', 18, 'my_address1', 'nakornpathom', '089-9999999', 1, NULL, '', NULL, '2019-03-07 00:39:33'),
(2, 'user2', 'surname2', 'user2@gmail.com', '$2a$10$Gdv78kS1r9GGjfWuZKfw2e4mZI1fJAEfaqCCSQ1JPSlbL.UIEKYPq', 18, 'Home', 'Bangkok', '0949397463', 1, NULL, NULL, NULL, NULL),
(3, 'user3', 'surname3', 'user3@gmail.com', '$2a$10$Gdv78kS1r9GGjfWuZKfw2e4mZI1fJAEfaqCCSQ1JPSlbL.UIEKYPq', 20, 'my_address3', 'nakornpathom', '089-9999999', 1, NULL, NULL, NULL, NULL),
(4, 'user4', 'surname4', 'user4@gmail.com', '$2y$10$UIthoWjesBss7oD3B4Xe4ur19UYJ3GEfRxMVcongep42QtqYbqsPi', 20, 'my_address4', 'nakornpathom', '089-9999999', 0, NULL, NULL, NULL, NULL),
(5, 'user5', 'surname5', 'user5@gmail.com', '$2y$10$1rDZULEucD9gyPUt4yWwK.NsgUu57aYW3BE/2AHDRkSj/b8dH3RJG', 19, 'my_address5', 'bangkok', '089-9999999', 1, NULL, NULL, NULL, NULL),
(6, 'user6', 'surname6', 'user6@gmail.com', '$2y$10$LTM.dMj82HjRdG8FUxfxUO7MJlE/.wbRBCdEw4KyY3a4eCAoc3Aj.', 19, 'my_address6', 'nakornpathom', '089-9999999', 1, NULL, NULL, NULL, NULL),
(7, 'user7', 'surname7', 'user7@gmail.com', '$2y$10$A/7.JxLFwVULU/sDkCo0Jua4UEBn638Zg8o9CXr/PLaA36STIabG.', 22, 'my_address7', 'bangkok', '089-9999999', 1, NULL, NULL, NULL, NULL),
(8, 'user8', 'surname8', 'user8@gmail.com', '$2y$10$MxY2UnmRKtkTjXK31lQN5.jRyF3sbxBENbI0zrJ3ypm10YXqoFu6W', 22, 'my_address8', 'bangkok', '089-9999999', 0, NULL, NULL, NULL, NULL),
(9, 'user9_update', 'surname9', 'user9@gmail.com', '$2y$10$o2/J/uEKF/btqIHqGLUdk.Fa1aWISLLsnsaGGMY9qNl572YauYyeu', 20, 'my_address9', 'bangkok', '089-9999999', 0, NULL, NULL, NULL, '2019-03-16 11:39:16'),
(10, 'user10', 'surname10', 'user10@gmail.com', '$2y$10$WaYFmFgpwhZhn3Z7dmP1ueJzyuMFOmVJy7e8XqrmzTaAGBCNYIrUe', 20, 'my_address10', 'bangkok', '089-9999999', 0, NULL, NULL, NULL, NULL),
(11, 'user11', 'surname11', 'user11@gmail.com', '$2y$10$.mldjv7ml.gKkRwaQOU01ecZ/qPyIFNhAKa4lVRas95soTHQVjIBq', 21, 'my_address11', 'bangkok', '089-9999999', 0, NULL, NULL, NULL, NULL),
(12, 'user12', 'surname12', 'user12@gmail.com', '$2y$10$J..oXA66bp4bTt5OvIuGXeSQUYOWaGfZsY0McnECviYSdSDyqGNfy', 18, 'my_address12', 'bangkok', '089-9999999', 1, NULL, NULL, NULL, NULL),
(13, 'user13', 'surname13', 'user13@gmail.com', '$2y$10$QsdYrcnCnws0JDqOfY.WEuPZ0/IGuO.8CNQGkaKnXHXqV148GUh0a', 22, 'my_address13', 'bangkok', '089-9999999', 0, NULL, NULL, NULL, NULL),
(14, 'user14', 'surname14', 'user14@gmail.com', '$2y$10$M79Edl66tD74EPUcfmCujecGc0K8zneJ1cmcletGKo37kuWT0wo76', 20, 'my_address14', 'bangkok', '089-9999999', 1, NULL, NULL, NULL, NULL),
(15, 'user15', 'surname15', 'user15@gmail.com', '$2y$10$1jxspFXund7XIUgcpugDYOSNCsEtY8T8UL.R6W09qHNvz8k7GZaxe', 18, 'my_address15', 'nakornpathom', '089-9999999', 0, NULL, NULL, NULL, NULL),
(16, 'user16', 'surname16', 'user16@gmail.com', '$2y$10$lILYy8Aku4ZM6riBtdne9OwPy8G9I093pdcAN0ptqvlpG.Te6IZ7a', 21, 'my_address16', 'bangkok', '089-9999999', 1, NULL, NULL, NULL, NULL),
(17, 'user17', 'surname17', 'user17@gmail.com', '$2y$10$4MjUdXqP4AJvNxEKpH2e..Uu15JyliiRMMgO8Ran/oQri2PK8BhLW', 19, 'my_address17', 'bangkok', '089-9999999', 0, NULL, NULL, NULL, NULL),
(18, 'user18', 'surname18', 'user18@gmail.com', '$2y$10$hezWFBp6ry9VnK8bf.02WeGioTD8DotgjD35Ev/ghze004t9mHS/W', 22, 'my_address18', 'nakornpathom', '089-9999999', 0, NULL, NULL, NULL, NULL),
(19, 'user19', 'surname19', 'user19@gmail.com', '$2y$10$AQP.SrEwh9S0PFrEVbt6WeEPyuU.PvawCPKp.ZpJyuImjh9izXjwe', 20, 'my_address19', 'nakornpathom', '089-9999999', 1, NULL, NULL, NULL, NULL),
(20, 'user20', 'surname20', 'user20@gmail.com', '$2y$10$JtxLdR9AJ02UVzLyOiGNhe0vogHIQcmZUmfYNH7Ce1X4.Y7.qhFIO', 19, 'my_address20', 'nakornpathom', '089-9999999', 1, NULL, NULL, NULL, NULL),
(21, 'AAA', 'BBB', '1111@gmail.com', '11111', 11, '330/28 thekris extra 4 soi ratchada 17, Dindang, Dindang', 'bangkok', '949397463', 1, NULL, NULL, '2019-03-17 16:13:26', NULL),
(22, 'BBBB', 'CCCC', 'test122@xxx.com', '11111', 18, 'Ratchada', 'bangkok', '949397463', 1, NULL, NULL, '2019-03-17 16:21:48', NULL),
(23, 'CCCC', 'DDDD', 'test1@xxx.com', '11111', 18, 'ratchada', 'bangkok', '949397463', 1, NULL, NULL, '2019-03-17 16:23:00', NULL),
(25, 'fasf', 'sadfdsa', 'aaa@gmail.com', '11111', 11, 'ratchada', 'bangkok', '949397463', 1, NULL, NULL, '2019-03-17 16:30:26', NULL),
(26, 'aaa', 'bbb', '222@gmail.com', '11111', 19, '330/28 thekris extra 4 soi ratchada 17, Dindang, Dindang', 'bangkok', '949397463', 1, NULL, NULL, '2019-03-18 12:27:03', NULL),
(27, 'aaa', 'bbb', '5555@gmail.com', '11111', 19, '330/28 thekris extra 4 soi ratchada 17, Dindang, Dindang', 'bangkok', '949397463', 1, NULL, NULL, '2019-03-18 14:48:58', NULL),
(28, 'AAA', 'BBB', '6666@gmail.com', '11111', 19, '330/28 thekris extra 4 soi ratchada 17, Dindang, Dindang', 'bangkok', '66949397463', 1, NULL, NULL, '2019-03-24 16:22:39', NULL),
(29, 'aa', 'bb', '1111rr@gmail.com', '11111', 19, '330/28 thekris extra 4 soi ratchada 17, Dindang, Dindang', 'bangkok', '66949397463', 1, NULL, NULL, '2019-03-24 18:33:41', NULL),
(30, 'sfdsafs', 'dsfasdf', 'aaaa111@gmail.com', '1111', 11, '330/28 thekris extra 4 soi ratchada 17, Dindang, Dindang', 'bangkok', '66949397463', 1, NULL, NULL, '2019-03-24 19:42:53', NULL),
(32, 'aaaa1111', 'bbbb1111', 'sfssdafsaf555@gmail.com', '11111', 11, '330/28 thekris extra 4 soi ratchada 17, Dindang, Dindang', 'bangkok', '66949397463', 1, NULL, NULL, '2019-03-24 23:12:28', '2019-03-30 00:19:39'),
(39, 'tttt', 'uuu', 'admin@aaaa.com', '12345', 11, '330/28 thekris extra 4 soi ratchada 17, Dindang, Dindang', 'bangkok', '066949397463', 1, NULL, NULL, '2019-03-30 02:19:20', NULL),
(44, 'AAAA', 'BBBB', '111111@gmail.com', '11111', 19, '330/28 thekris extra 4 soi ratchada 17, Dindang, Dindang', 'bangkok', '66949397463', 1, NULL, NULL, '2019-03-30 13:16:33', NULL),
(46, 'AAA', 'BBB', '222222@gmail.com', '11111', 19, '330/28 thekris extra 4 soi ratchada 17, Dindang, Dindang', 'bangkok', '66949397463', 1, NULL, NULL, '2019-03-30 13:41:53', NULL),
(48, 'My_4444_Update222', 'AAA', '44444@gmail.com', '$2a$10$jugwgLnqo3Bda2fJJkTKLOPHfW5K.ctd9rZ3RAaeSbAvSgle3GopK', 10, '330/28 thekris extra 4 soi ratchada 17, Dindang, Dindang', 'bangkok', '066949397463', 1, NULL, NULL, '2019-03-30 14:12:06', '2019-03-30 15:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `roles_role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`, `roles_role_id`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `SPRING_SESSION`
--
ALTER TABLE `SPRING_SESSION`
  ADD PRIMARY KEY (`PRIMARY_ID`),
  ADD UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  ADD KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  ADD KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`);

--
-- Indexes for table `SPRING_SESSION_ATTRIBUTES`
--
ALTER TABLE `SPRING_SESSION_ATTRIBUTES`
  ADD PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  ADD KEY `FK4kmhv5avr04125lr741og6rtn` (`roles_role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `SPRING_SESSION_ATTRIBUTES`
--
ALTER TABLE `SPRING_SESSION_ATTRIBUTES`
  ADD CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `SPRING_SESSION` (`PRIMARY_ID`) ON DELETE CASCADE;
