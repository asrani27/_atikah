/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50739 (5.7.39)
 Source Host           : localhost:3306
 Source Schema         : _atika

 Target Server Type    : MySQL
 Target Server Version : 50739 (5.7.39)
 File Encoding         : 65001

 Date: 17/05/2025 12:37:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `walikelas` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kelas
-- ----------------------------
BEGIN;
INSERT INTO `kelas` (`id`, `nama`, `walikelas`, `created_at`, `updated_at`) VALUES (1, '1A', 'udin.', '2025-05-13 00:08:39', '2025-05-13 00:13:41');
INSERT INTO `kelas` (`id`, `nama`, `walikelas`, `created_at`, `updated_at`) VALUES (2, '1B', 'Dono', '2025-05-13 00:08:44', '2025-05-13 00:08:44');
INSERT INTO `kelas` (`id`, `nama`, `walikelas`, `created_at`, `updated_at`) VALUES (3, '1C', 'Winda', '2025-05-13 00:08:51', '2025-05-13 00:08:51');
COMMIT;

-- ----------------------------
-- Table structure for organisasi
-- ----------------------------
DROP TABLE IF EXISTS `organisasi`;
CREATE TABLE `organisasi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `guru` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organisasi
-- ----------------------------
BEGIN;
INSERT INTO `organisasi` (`id`, `nama`, `guru`, `keterangan`, `created_at`, `updated_at`) VALUES (1, 'TIK', 'udin', 'Pembelajaran KOmputer', '2025-05-13 02:27:39', '2025-05-13 02:27:48');
COMMIT;

-- ----------------------------
-- Table structure for prestasi
-- ----------------------------
DROP TABLE IF EXISTS `prestasi`;
CREATE TABLE `prestasi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rencana_id` int(11) DEFAULT NULL,
  `prestasi` text,
  `keterangan` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prestasi
-- ----------------------------
BEGIN;
INSERT INTO `prestasi` (`id`, `rencana_id`, `prestasi`, `keterangan`, `created_at`, `updated_at`) VALUES (1, 1, 'juara 1', 'ok', '2025-05-13 03:01:48', '2025-05-13 03:01:48');
COMMIT;

-- ----------------------------
-- Table structure for profil
-- ----------------------------
DROP TABLE IF EXISTS `profil`;
CREATE TABLE `profil` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profil
-- ----------------------------
BEGIN;
INSERT INTO `profil` (`id`, `nis`, `nama`, `status`, `alamat`, `telp`, `email`, `website`) VALUES (1, '97865789', 'MIN 3', '-', '-', '-', '-', '-');
COMMIT;

-- ----------------------------
-- Table structure for rencana
-- ----------------------------
DROP TABLE IF EXISTS `rencana`;
CREATE TABLE `rencana` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) DEFAULT NULL,
  `tingkat` varchar(255) DEFAULT NULL,
  `penyelenggara` varchar(255) DEFAULT NULL,
  `organisasi_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `keterangan` text,
  `target` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rencana
-- ----------------------------
BEGIN;
INSERT INTO `rencana` (`id`, `tanggal`, `tingkat`, `penyelenggara`, `organisasi_id`, `siswa_id`, `biaya`, `keterangan`, `target`, `created_at`, `updated_at`, `nama`) VALUES (1, '2025-05-15', 'jkhk', 'kjh', 1, 1, 34, 'kjhk', 'jhkjh', '2025-05-13 02:41:23', '2025-05-13 02:51:51', 'Lomb 17 Agustus');
COMMIT;

-- ----------------------------
-- Table structure for siswa
-- ----------------------------
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `ayah` varchar(255) DEFAULT NULL,
  `ibu` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `alamat` text,
  `kelas_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jkel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of siswa
-- ----------------------------
BEGIN;
INSERT INTO `siswa` (`id`, `nis`, `nama`, `tempat_lahir`, `tanggal_lahir`, `agama`, `ayah`, `ibu`, `telp`, `alamat`, `kelas_id`, `created_at`, `updated_at`, `jkel`) VALUES (1, '56789', 'ade', 'banjarmasin', '2025-05-13', 'ISLAM', 'udin', 'khadijah', '098765', 'jl pramuka', 2, '2025-05-13 00:33:49', '2025-05-13 00:37:59', 'L');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (1, 'superadmin', 'superadmin', '$2y$12$r0HAFQIZdiAabhk3HwCdVub716cax1jMnmwKnv76nJz8sJx0M3TB6', NULL, NULL, '2024-12-20 02:49:44', 'superadmin');
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (11, 'adi', 'adi2', '$2y$12$S8y2eXzZhf7OMrScCfdwT.9EZo6yv7EBZUkrk/faHh3DNzW/7zhPu', NULL, '2025-05-12 23:54:44', '2025-05-12 23:56:31', 'superadmin');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
