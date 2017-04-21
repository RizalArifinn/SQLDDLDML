-- Membuat Database
CREATE DATABASE `db_ddldml`;

-- Membuat Tabel Main
CREATE TABLE `tbl_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_kerja` varchar(50) NOT NULL,
  PRIMARY KEY(`id`)
);

-- Mengisi Data di Tabel Main
INSERT INTO `tbl_main` (`id`, `kategori_kerja`) VALUES
(1, 'Rumah Tangga'),
(2, 'Konstruksi');

-- --------------------------------------------------------

-- Membuat Tabel Other
CREATE TABLE `tbl_other` (
  `kategori_kerja` varchar(50) NOT NULL,
  `sub_kategori` varchar(50) NOT NULL
);

-- Mengisi Data di Tabel Other
INSERT INTO `tbl_other` (`kategori_kerja`, `sub_kategori`) VALUES
('Rumah Tangga', 'Nyapu'),
('Rumah Tangga', 'Memasak'),
('Rumah Tangga', 'Cuci Baju'),
('Konstruksi', 'Membetulkan Genteng'),
('Konstruksi', 'Membetulkan Kran Air');

-- ---------------------------------------------------------

-- Menampilkan/Membuat View
CREATE VIEW v_ddldml AS SELECT tbl_main.*, tbl_other.sub_kategori FROM tbl_main INNER JOIN tbl_other ON tbl_main.kategori_kerja=tbl_other.kategori_kerja;

-- ---------------------------------------------------------

-- Menampilkan Semua Data Tabel Main
SELECT * FROM tbl_main;

-- ---------------------------------------------------------

-- Menampilkan Semua Data Tabel Other
SELECT * FROM tbl_other;

-- ---------------------------------------------------------

-- Membatasi Data Dengan LIMIT
SELECT * FROM tbl_main LIMIT 0,2;

-- ---------------------------------------------------------

-- Menampilkan Single Data
SELECT * FROM tbl_main WHERE id=1;

-- ---------------------------------------------------------

-- Menampilkan Data Dengan INNER JOIN
SELECT tbl_main.*, tbl_other.sub_kategori FROM tbl_main INNER JOIN tbl_other ON tbl_main.kategori_kerja=tbl_other.kategori_kerja;

-- ---------------------------------------------------------
