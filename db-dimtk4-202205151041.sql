-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: dimtk4
-- ------------------------------------------------------
-- Server version	5.7.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dimensi`
--

DROP TABLE IF EXISTS `dimensi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimensi` (
  `id_dimensi` int(11) NOT NULL AUTO_INCREMENT,
  `dimensi` varchar(50) NOT NULL,
  `bobot` int(11) DEFAULT '0',
  PRIMARY KEY (`id_dimensi`),
  UNIQUE KEY `id_dimensi` (`id_dimensi`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimensi`
--

LOCK TABLES `dimensi` WRITE;
/*!40000 ALTER TABLE `dimensi` DISABLE KEYS */;
INSERT INTO `dimensi` VALUES (1,'CORPORATE CONTRIBUTION',3),(2,'STAKEHOLDER (USER) ORIENTATION',4),(3,'OPERATIONAL EXCELLENCE (KEUNGGULAN OPERASIONAL) ',4),(4,'FUTURE ORIENTATION (Orientasi Masa Depan)',4),(5,'General Public Perceptions',1);
/*!40000 ALTER TABLE `dimensi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jawaban`
--

DROP TABLE IF EXISTS `jawaban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jawaban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kuesioner` int(11) NOT NULL,
  `jawaban` varchar(255) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jawaban`
--

LOCK TABLES `jawaban` WRITE;
/*!40000 ALTER TABLE `jawaban` DISABLE KEYS */;
INSERT INTO `jawaban` VALUES (1,1,'E','budi','2022-05-14 02:30:05','2022-05-14 08:03:54'),(2,2,'E','budi','2022-05-14 02:30:05','2022-05-14 08:03:54'),(3,3,'E','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(4,4,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(5,5,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(6,6,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(7,7,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(8,8,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(9,9,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(10,10,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(11,11,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(12,12,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(13,13,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(14,14,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(15,15,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(16,16,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(17,17,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(18,18,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(19,19,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(20,20,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(21,21,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(22,22,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(23,23,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(24,24,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(25,25,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(26,26,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(27,27,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(28,28,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(29,29,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(30,30,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(31,31,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(32,32,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(33,33,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(34,34,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(35,35,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(36,36,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(37,37,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(38,38,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(39,39,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(40,40,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(41,41,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(42,42,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(43,43,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(44,44,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(45,45,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(46,46,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(47,47,'D','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(48,48,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(49,49,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(50,50,'D','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(51,51,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(52,52,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(53,53,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(54,54,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(55,55,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(56,56,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(57,57,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(58,58,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(59,59,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(60,60,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(61,61,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(62,62,'C','budi','2022-05-14 02:30:05','2022-05-14 02:30:05'),(63,63,'B','budi','2022-05-14 02:30:05','2022-05-14 02:30:05');
/*!40000 ALTER TABLE `jawaban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kuesioner`
--

DROP TABLE IF EXISTS `kuesioner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kuesioner` (
  `id_kuesioner` int(11) NOT NULL AUTO_INCREMENT,
  `pertanyaan` varchar(200) NOT NULL,
  `id_dimensi` int(11) DEFAULT NULL,
  `variabel` varchar(50) DEFAULT NULL,
  `pila` varchar(200) DEFAULT NULL,
  `pilb` varchar(200) DEFAULT NULL,
  `pilc` varchar(200) DEFAULT NULL,
  `pild` varchar(200) DEFAULT NULL,
  `pile` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_kuesioner`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kuesioner`
--

LOCK TABLES `kuesioner` WRITE;
/*!40000 ALTER TABLE `kuesioner` DISABLE KEYS */;
INSERT INTO `kuesioner` VALUES (1,'Berapa persen kira-kira dana pengembangan TIK yang dialokasikan oleh kampus dari pengeluaran yang ada ?',1,'komitmen pimpinan','Dibawah 5%','Antara 5%-10%','Antara 11%-20%','Antara 21%-30%','Diatas 30%'),(2,'Apakah perguruan tinggi memiliki program sosialisasi dan edukasi mengenai pentingnya pemanfaatan TIK kampus?',1,'komitmen pimpinan','Ada, namun bersifat sporadis dan tidak terencana','Ada, dengan ruang lingkup dan target sasaran audience sesuai dengan anggaran','Ada, terencana dengan baik dilaksanakan secara konsisten, kontinyu dan berkesinambungan','Ada, terencana dengan baik dan dilaksanakan secara konsisten, kontinyu dan berkesinambungan dan mendapatkan banyak bantuan serta didukung dari stakeholder lain diluar perangkat organisasi perguruan','Ada, terencana dengan baik dan dilaksanakan secara konsisten, kontinyu dan berkesinambungan dan mendapatkan banyak bantuan serta didukung dari stakeholder lain diluar perangkat organisasi perguruan ti'),(3,'Apakah perguruan tinggi menggunakan media tertentu dalam melakukan sosialisasi dan edukasi mengenai pentingnya pemanfaatan teknologi informasi dan komunikasi kampus ?',1,'komitmen pimpinan','Tidak','Ya, di beberapa media namun dalam ukuran kecil','Ya, di sejumlah media dan cukup efektif','Ya, di sejumlah media dan sangat signifikan dampaknya','Ya, cukup banyak jalur media yang memberikan kontribusi positif dan signifikan terhadap perkembangan TIK perguruan tinggi.'),(4,'Dari manasajakah sumber dana terbesar yang diperuntukkan untuk melakukan investasi dalam membangun TIK Perguruan tinggi ?',1,'alokasi sumber daya','Tidak dari mana-mana, karena memang belum memiliki TIK','Diambil melalui dana yang berasal dari uang bayaran mahasiswa, baik yang berupa sumbangan maupun uang kuliah','Dialokasikan khusus oleh pemilik perguruan tinggi dalam bentuk belanja modal','Sebagian dari dana bantuan pemerintah Indonesia dan sisa hasil usaha penyelenggaraan belajar mengajar','Investasi pihak ketiga (eksternal) yang memiliki komitme penuh jangka panjang dalam membangun perguruan tinggi yang ada.'),(5,'Berapa kira-kira nilai investasi TIK dalam tiga tahun terakhir ?',1,'alokasi sumber daya','Kurang dari Rp. 100 juta','Rp. 100 juta - Rp. 500 juta','Rp. 500 juta - Rp. 1 Milyar','Rp. 1-3 Milyar','> Rp. 3 Milyar'),(6,'Berapa jumlah karyawan yang berlatar belakang pendidikan perguruan tinggi bidang komputer atau informatika ?',1,'alokasi sumber daya','Kurang dari 1% dari keseluruhan pegawai di Perguruan tinggi','2%-5% dari keseluruhan pegawai di Perguruan tinggi','6%-15% dari keseluruhan pegawai di Perguruan tinggi','16%-35% dari keseluruhan pegawai di Perguruan tinggi','>35% dari keseluruhan pegawai di Perguruan tinggi'),(7,'Apakah perguruan tinggi memiliki unit unit atau divisi khusus yang bertanggung jawab terhadap perencanaan, pembangunan, penerapan, pengendalian  dan pengembangan TIK di lingkungan kampus ?',1,'unit pengelola teknologi','Tidak ada','Ada, namun tidak beroperasi secara optimal karena masih mengerjakan program atau proyek','Ada, dan merupakan suatu unit organisasi tersendiri dengan tanggung jawab yang jelas','Ada, merupakan suatu unit organisasi tersendiri, yang berjalan berdasarkan tanggung jawab yang jelas sesuai dengan SOP yang telah disusun dan dikembangkan','Ada, merupakan sebuah unit organisasi independen, dimana didukung oleh berbagai pihak ketiga yang sesuai dengan bidang keahliannya, dibawah tata kelola manajemen yang rapi dan transparan.'),(8,'Jika perguruan tinggi memiliki unit khusus yang dibentuk oleh pihak kampus untuk mengelola TIK yang dimiliki, dibawah komando siapa unit khusus ini berada ?',1,'unit pengelola teknologi','Tidak dibawah siapa-siapa, karena tidak terdapat unit yang dimaksud','Berada dibawah komando salah satu unit kegiatan yang ada di perguruan tinggi','Berada dibawah komando salah satu divisi kegiatan yang ada di perguruan tinggi','Berada dibawah komando salah satu wakil pimpinan perguruan tinggi institusi','Langsung dibawah komando pimpinan perguruan tinggi institusi'),(9,'Apakah perguruan tinggi memiliki unit atau divisi yang bertanggung jawab terhadap pelatihan TIK dalam lingkungan kampus ?',1,'unit pengelola teknologi','Tidak ada','Ada, namun tidak berorientasi secara optimal karena masih mengerjakan hal-hal yang bersifat ad-hoc, atau berbasis program atau proyek','Ada, dan merupakan suatu unit organisasi tersendiri dengan tanggung jawab yang jelas','Ada, merupakan suatu unit organisasi tersendiri, yang berjalan berdasarkan tanggung jawab yang jelas sesuai dengan SOP yang telah disusun dan dikembangkan.','Ada, merupakan sebuah unit organisasi independen, dimana didukung oleh berbagai pihak ketiga yang sesuai dengan bidang keahliannya, di bawah tata kelola manajemen yang rapi dan transparan'),(10,'Apakah perguruan tinggi memiliki kebijakan dan peraturan yang mengharuskan setiap civitas akademika memanfaatkan secara intensif TIK dalam lingkungan kampus sebagai penunjang kegiatan belajar mengajar',1,'kebijakan dan sistem insentif','Tidak memiliki','Tidak memiliki secara tertulis, namun sering disampaikan dan diwacanakan oleh segenap pimpinan','Terdapat kebijakan tertulis melalui surat keputusan pimpinan perguruan tinggi mengenai keharusan menggunakan TIK dalam lingkungan kampus.','Terdapat sejumlah kebijakan terkait dengan pemanfaatan TIK sesuai tata aturan yang ada, dan dijadikan sebagai salah satu pengukur kinerja unit maupun individu terkait','Terdapat berbagai kebijakan dan peraturan keharusan pemanfaatan TIK dalam lingkungan kampus dipergunakan sebagai komponen pengukur kinerja dan terdapat model insentif yang diterapkan manajemen kampus '),(11,'Apakah ada sistem insentif yang dikembangkan oleh perguruan tinggi untuk mendorong agar segenap civitas akademika di kampus memanfaatkan teknologi informasi dan komunikasi seoptimal mungkin ?',1,'kebijakan dan sistem insentif','Tidak ada','Ada, namun tidak jelas dan konsisten penerapannya','Ada, dimana implementasinya diatur dalam peraturan perguruan tinggi','Ada, dimana implementasinya telah terintegrasi dengan sistem pengelolaan sumber daya manusia yang dimiliki oleh perguruan tinggi','Ada, dimana model dan implementasinya selain telah terintegrasi secara baik dengan sistem sumber daya manusia, tingkat efekivitasnya pun diukur dan dinilai dari hari ke hari.'),(12,'Bagaimana karyawan dan staf perguruan tinggi belajar mengenai cara memanfaatkan teknologi informasi dan komunikasi (missal : menggunakan computer dan internet) ?',1,'kebijakan dan sistem insentif','Kebanyakan belajar sendiri (mandiri) atau otodidak','Kebanyakan belajar dari orang lain dan sumber referensi (buku)','Kebanyakan belajar dari orang lain, sumber referensi dan mengikuti pendidikan non formal (pelatihan dan kursus)','Kebanyakan belajar dari orang lain, sumber referensi dan mengikuti pendidikan formal dan vokasi','Kebanyakan belajar dari orang lain, sumber referensi, mengikuti pendidikan formal (akademik maupun vokasi) maupun informal.'),(13,'Bagaimana karyawan dan staf perguruan tinggi belajar mengenai cara memanfaatkan teknologi informasi dan komunikasi (misal : menggunakan komputer dan internet) ?',1,'kebijakan dan sistem insentif','Kebanyakan belajar sendiri (mandiri) atau otodidak','Kebanyakan belajar dari orang lain dan sumber referensi (buku)','Kebanyakan belajar dari orang lain, sumber referensi dan mengikuti pendidikan non formal (pelatihan dan kursus)','Kebanyakan belajar dari orang lain, sumber referensi dan mengikuti pendidikan formal dan vokasi','Kebanyakan belajar dari orang lain, sumber referensi, mengikuti pendidikan formal (akademik maupun vokasi) maupun informal'),(14,'Apakah perguruan tinggi telah memiliki dan menyusun Rencana Strategis Pengembangan TIK (IT Master Plan) untuk kebutuhan kampus ?',1,'Renstra dan peta jalan','Tidak memiliki','Memiliki, namun sudah lama tidak dimutakhirkan (update)','Memiliki dan setiap tahun diperbaharui','Memiliki dan secara konsisten seluruh program pengembangan TIK kampus didasari pada dokumen ini.','Memiliki dan secara konsisten seluruh program pengembangan TIK kampus didasari pada dokumen ini dan dilakukan audit terhadap efektivitas kepatuhannya.'),(15,'Apakah Rencana Strategis Pengembangan TIK (IT Master Plan) yang dimiliki dipergunakan sebagai panduan / acuan dalam menyelenggarakan berbagai proyek kegiatan teknologi informasi dan komunikasi perguru',1,'Renstra dan peta jalan','Tidak karena memang belum memiliki Rencana Strategis Pengembangan IT (IT Master Plan)','Ya, namun baru sebagian kecil saja proyek atau kegiatan yang mengacu pada dokumen ini.','Ya, rata-rata proyek atau kegiatan mengacu pada dokumen ini','Ya, sebagian besar proyek atau kegiatan mengacu pada dokumen ini.','Ya, semua proyek mengacu pada dokumen ini, jika ada proyek yang tidak termasuk maka menjadi bahan masukan untuk merevisi dokumen yang ada.'),(16,'Bagaimana cara perguruan tinggi menyusun kebutuhan teknologi informasi dan komunikasi yang diinginkan ? ',1,'Perencanaan dan pengorganisasian','Berkaca pada perguruan tinggi lain, dan mencoba mengikutinya.','Menyusun kebutuhan TIK berdasarkan keinginan orang yang menangani TIK','Menyusun kebutuhan TIK berdasarkan jumlah unit-unit yang membutuhkan TIK','Menyusun kebutuhan TIK berdasarkan analisis kebutuhan masing-masing unit','Menyusun kebutuhan TIK berdasarkan analisis kebutuhan masing-masing unit dan senantiasa diperbaharui dan dimutakhirkan sesuai perkembangan organisasi.'),(17,'Apakah perguruan tinggi memiliki dokumen arsitektur yang dipergunakan sebagai panduan atau acuan teknis pembangunan teknologi informasi dan komunikasi di perguruan tinggi ?',1,'Perencanaan dan pengorganisasian','Tidak memiliki','Ya, namun sebagian kecil inisiatif pembangunan teknologi informasi dan komunikasi yang mengadu pada rancangan arsitektur ini','Ya, rata-rata inisiatif pembangunan teknologi informasi dan komunikasi mengacu pada rancangan arsitektur ini.','Ya, sebagian besar inisiatif pembangunan teknologi informasi dan komunikasi mengacu pada rancangan arsitektur ini','Ya, semua inisiatif pembangunan teknologi informasi dan komunikasi mengacu pada rancangan arsitektur ini.'),(18,'Apakah perguruan tinggi anda memiliki standar terkait teknologi informasi dan komunikasi di perguruan tinggi yang akan diadopsi (missal : standar dalam tipe aplikasi, fitur / spesifikasi piranti keras',1,'Perencanaan dan pengorganisasian','Tidak ada sama sekali','Ada, kadang-kadang dipergunakan, kadang-kadang tidak','Ada, dipergunakan secara konsisten sebagai basis pengelolaan dan dikembangkan secara kontinyu dan berkesinambungan','Ada, dipergunakan secraa konsisten sebagai basis pengelolaan dan dikembangkan secara kontinyu dan berkesinambungan','Ada, dipergunakan secara konsisten sebagai basis pengelolaan, dikembangkan secara kontinyu dan berkesinambungan, dan dievaluasi / diaudit kepatuhan adopsinya'),(19,'Apakah memiliki mekanisme penghitungan cost benefit dari setiap program, atau inisiatif investasi pengembangan teknologi informasi dan komunikasi di perguruan tinggi ?',1,'Perencanaan dan pengorganisasian','Tidak ada, namun sudah dipikirkan untuk menyusunnya','Ada, namun belum secara konsisten diadopsi sepenuhnya','Ada, dan dijadikan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi','Ada, dipergunakan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis evaluasi kinerja perangkat organisasi perguruan tinggi','Ada, dipergunakan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis evaluasi kinerja perguruan tinggi dan senantiasa dikembangkan / direvisi mekanisme baku yang d'),(20,'Apakah segenap pimpinan perguruan tinggi secara intensif menggunakan beragam aplikasi teknologi informasi dan komunikasi dalam aktivitas sehari-harinya ?',1,'Pengadaan dan penerapan ','Tidak sama sekali','Ya, menggunakan namun tidak optimal dan tidak intensif','Ya, menggunakan secara efektif dan cukup intensif','Ya. menggunakan secara sangat intensif, efektif dan optimal','Ya, menggunakan secara sangat intensif, efektif, optimal dan telah berhasil menularkan kebiasaan ini kepada segenap pimpinan manajerial di bawahnya'),(21,'Apakah suasana atau budaya memanfaatkan teknologi informasi dan komunikasi terasa di dalam lingkungan kampus ?',1,'Pengadaan dan penerapan','Tidak sama sekali','Cukup terasa namun dalam keadaan atau waktu-waktu tertentu saja','Cukup terasa dalam situasi sehari-hari','Ya, sangat terasa karena hampir seluruh lokasi strategis Nampak segenap civitas akademika memanfaatkan teknologi','Ya, sangat terasa karena secara massif terlihat dari aktivitas segenap civitas akademika yang berinteraksi dengan teknologi di setiap sudut-sudut kampus'),(22,'Apakah perguruan tinggi memiliki dokumen yang jelas dan detail (misal : standar operasional prosedur) dari proses pengelolaan teknologi informasi dan komunikasi di perguruan tinggi ?',1,'Pengelolaan dan pengembangan','Tidak ada, semua berjalan seperti kebiasaan saja','Tidak ada, semua berjalan seperti kebiasaan saja','Ada, dipergunakan sebagai panduan kerja namun tidak pernah dikaji maupun dimutakhirkan','Ada, dipergunakan sebagai panduan kerja senantiasa dimutakhirkan sesuai dengan perbaikan dan dipakai sebagai basis evaluasi kinerja','Ada, dipergunakan sebagai panduan kerja senantiasa dimutakhirkan sesuai dengan perbaikan dan dipakai sebagai basis evaluasi kinerja dan penentuan remunerasi berdasarkan beban kerja dan tanggung jawab'),(23,'Apakah memiliki standar baku dalam manajemen pengelolaan proyek (project management) teknologi informasi dan komunikasi di perguruan tinggi ?',1,'Pengelolaan dan pengembangan','Tidak ada, namun sudah dipikirkan untuk menyusunnya','Ada, namun belum secara konsisten diadopsi sepenuhnya','Ada, dan dijadikan acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis evaluasi kinerja perangkat organisasi perguruan tinggi','Ada, dipergunakan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis kinerja perangkan organisasi perguruan tinggi','Ada, dipergunakan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis kinerja perangkan organisasi perguruan tinggi dan senantiasa dikembangkan / direvisi mekanisme'),(24,'Apakah perguruan tinggi anda memiliki prosedur penanganan keadaan darurat (contingency plan) bila terjadi gangguan pada sistem teknologi informasi dan komunikasi ?',1,'Pengelolaan dan pengembangan','Tidak ada, semua berjalan secara naluri dan kebiasaan saja','Ada, dipergunakan sebagai panduan kerja namun tidak pernah dikaji dan dimutakhirkan','Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan','Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan, dan dipakai sebagai basis evaluasi kinerja','Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan, dan dipakai sebagai basis evaluasi kinerja serta penentuan remunerasi berdasarkan beban kerja dan tanggung ja'),(25,'Apakah dilakukan proses audit terhadap efektivitas penerapan teknologi informasi dan komunikasi di lingkungan kampus ?',1,'Pemantauan dan penilaian','Tidak sama sekali','Pada dasarnya dilakukan evaluasi secara umum, namun tidak berdasarkan prosedur baku audit','Ya, dilakukan audit oleh pihak internal yang berkepentingan dan memiliki kapabilitas','Ya, dilakukan audit oleh pihak eksternal yang berkepentingan dan memiliki kapabilitas','Ya, dilakukan audit oleh pihak internal dan eksternal secara independen dan bertanggung jawab'),(26,'Apakah perguruan tinggi memiliki indikator kinerja utama (Key Performance Indicator) dalam implementasi teknologi informasi dan komunikasi kampus ?',1,'Pemantauan dan penilaian','Tidak ada, semuanya berjalan secara naluri dan kebiasaan','Ada, dipergunakan sebagai panduan kerja, namun tidak pernah dikaji maupun dimutakhirkan','Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan','Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan dan dipakai sebagai basis evaluasi kinerja','Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan dan dipakai sebagai basis evaluasi kinerja dan penentuan remunerasi berdasarkan beban kerja dan tanggung jawab'),(27,'Berapa persen kira-kira materi perkuliahan yang telah berbentuk file elektronik atau digital ?',2,'Dosen dan peneliti','Dibawah 10%','Kira-kira antara 11%-25%','Kira-kira antara 26%-50%','Kira-kira antara 51%-75%','Kira-kira diatas 76%'),(28,'Berapa persen kira-kira materi perkuliahan yang dibawakan oleh dosen telah memanfaatkan dan melibatkan teknologi informasi dan komunikasi untuk mempermudah pemahaman mahasiswa sebagai peserta ajar ?',2,'Dosen dan peneliti','Dibawah 10%','Kira-kira antara 11%-25%','Kira-kira antara 26%-50%','Kira-kira antara 51%-75%','Kira-kira diatas 76%'),(29,'Berapa persen kira-kira jumlah mata kuliah yang telah dilakukan dengan menggunakan metode e-learning ?',2,'Dosen dan peneliti','Tidak ada sama sekali','Kira-kira dibawah 10%','Kira-kira antara 11%-25%','Kira-kira antara 26%-50%','Kira-kira diatas 50%'),(30,'Berapa persen kira-kira jumlah mata kuliah dimana sang dosen memberikan pekerjaan rumah yang memaksa mahasiswanya untuk menggunakan teknologi informasi dan komunikasi secara intensif ?',2,'Dosen dan peneliti','Tidak ada sama sekali','Kira-kira dibawah 10%','Kira-kira dibawah 10%','Kira-kira antara 26%-50%','Kira-kira diatas 50%'),(31,'Bagaimana tingkat literasi dosen dalam memanfaatkan berbagai aplikasi teknologi informasi dan komunikasi ?',2,'Dosen dan peneliti','Rata-rata sangat rendah, karena kebanyakan masih gagap teknologi','Rata-rata cukup mahir menggunakan komputer, hanya saja kebanyakan diperuntukkan dalam mendukung kegiatan administratif (mengetik, mengirim email, membuat tabulasi, dan lain-lain)','Rata-rata cukup mahir dan menguasai berbagai aplikasi standar yang dipergunakan oleh seorang pengajar untuk mendukung aktivitasnya sehari-hari','Kebanyakan dosen telah sangat mahir dalam menggunakan beragam aplikasi standar maupun aplikasi termutakhir yang dikenal masyarakat umum','Mayoritas dosen telah sangat mahir dalam menggunakan beragam aplikasi standar maupun aplikasi termutakhir yang dikenal masyarakat umum, bahkan cenderung lebih tinggi tingkat  literasinya dibandingkan '),(32,'Apakah terjadi komunikasi yang intens antara dosen dan mahasiswa melalui kanal dan aplikasi teknologi informasi dan komunikasi seperti email, mailing list, newsgroup, social networking dan lain-lain ?',2,'Dosen dan peneliti','Tidak sama sekali','Terjadi komunikasi virtual, namun tidak terlampau intensif','Terjadi komunikasi virtual yang cukup intensif','Hampir setiap hari rata-rata mahasiswa dan dosen melakukan interaksi secara virtual','Setiap hari mayoritas mahasiswa dan dosen melakukan interaksi secara virtual'),(33,'Berapa jumlah kelas yang pada saat diselenggarakan sang dosen membentuk sebuah mailing list khusus untuk para mahasiswa yang mengambil mata kuliah yang bersangkutan ?',2,'Dosen dan peneliti','Dibawah 5% dari total kelas yang diikuti mahasiswa selama masa kuliah','Kira-kira antara 6%-15% dari total kelas yang diikuti mahasiswa selama masa kuliah','Kira-kira antara 16%-30% dari total kelas yang diikuti mahasiswa selama masa kuliah','Kira-kira antara 31%-60% dari total kelas yang diikuti mahasiswa selama masa kuliah','Diatas 6%-15% dari total kelas yang diikuti mahasiswa selama masa kuliah'),(34,'Berapa persen dari dosen yang memiliki alamat email yang aktif dipergunakan?',2,'Dosen dan peneliti','Dibawah 10%','Kira-kira antara 11%-20%','Kira-kira antara 21%-50%','Kira-kira antara 51%-75%','Diatas antara 75%'),(35,'Berapa persen dari dosen yang memiliki website / homepage atau blog pribadi?',2,'Dosen dan peneliti','Dibawah 10%','Kira-kira antara 11%-20%','Kira-kira antara 21%-50%','Kira-kira antara 51%-75%','Diatas antara 75%'),(36,'Rata-rata berapa jam dalam sehari seorang dosen berinteraksi dengan internet?',2,'Dosen dan peneliti','Hanya dibawah 1 jam per hari','Kurang lebih antara 1-2 jam per hari','Kurang lebih antara 2-4 jam per hari','Kurang lebih antara 4-6 jam per hari','Hampir diatas 6 jam per hari'),(37,'Berapa persen dari mahasiswa yang memiliki alamat email yang aktif dipergunakan ?',2,'Mahasiswa, unsur pemilik dan pimpinan','Dibawah 10%','Kira-kira antara 11%-20%','Kira-kira antara 21%-50%','Kira-kira antara 51%-75%','Diatas antara 75%'),(38,'Rata-rata berapa jam dalam sehari seorang mahasiswa berinteraksi dengan internet ?',2,'Mahasiswa, unsur pemilik dan pimpinan','Hanya dibawah 1 jam per hari','Kurang lebih antara 1-2 jam per hari','Kurang lebih antara 2-4 jam per hari','Kurang lebih antara 4-6 jam per hari','Hampir diatas 6 jam per hari'),(39,'Berapa persen dari karyawan yang memiliki alamat email yang aktif dipergunakan ?',2,'Manajemen, staf dan karyawan','Dibawah 10%','Kira-kira antara 11%-20%','Kira-kira antara 21%-50%','Kira-kira antara 51%-75%','Diatas antara 75%'),(40,'Apakah anda merasa keberadaan teknologi infomasi dan komunikasi akan memberikan manfaat dan kontribusi signifikan bagi perkembangan perguruan tinggi anda ?',3,'Peningkatan kualitas','Ya, keberadaannya akan memberikan kontribusi positif namun tidak signifikan','Ya, keberadaannya akan memberikan kontribusi positif, namun signifikan tidaknya bergantung dari sudut pandang yang dipergunakan','Ya keberadaan akan memberikan kontribusi positif dan signifikan bagi perguruan tinggi ','Ya keberadaan akan memberikan kontribusi positif dan signifikan bagi perguruan tinggi bahkan dapat meningkatkan daya saing jika direncanakan dan diterapkan dengan benar','Ya keberadaan akan memberikan kontribusi positif dan signifikan bagi perguruan tinggi dan sanggup mentransformasikan situasi dan kondisi perguruan tinggi ke arah modernisasi kampus'),(41,'Apakah ada kontribusi nyata terkait dengan teknologi informasi dan komunikasi dalam hal peningkata kualitas pengambilan keputusan para pembuat kebijakan di perguruan tinggi anda dalam 5 tahun terakhir',3,'Peningkatan kualitas','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi para mahasiswa'),(42,'Apakah ada kontribusi nyata terkait dengan teknologi informasi dan komunikasi dalam hal peningkatan kualitas pelayanan di kalangan para mahasiswa di perguruan tinggi anda dalam 5 tahun terakhir ?',3,'Peningkatan kualitas','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi para mahasiswa/i'),(43,'Apakah ada kontribusi teknologi informasi dan komunikasi dalam hal peningkatan peran perguruan tinggi dalam konteks nasional dalam 5 taun terakhir ?',3,'Peningkatan kualitas','Tidak ada kontribusi yang signifikan','Ada kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi pemerintah'),(44,'Apakah pernah mendapatkan penghargaan dari lembaga-lembaga lain, dari luar maupun dalam negeri terkait dengan perkembangan teknologi informasi dan komunikasi di perguruan tinggi anda ?',3,'Peningkatan kualitas','Pernah, memperoleh 1 penghargaan dalam 10 tahun terakhir','Pernah, memperoleh 2-3 penghargaan dalam 10 tahun terakhir','Pernah, memperoleh 4-5 penghargaan dalam 10 tahun terakhir','Pernah, memperoleh 6-10 penghargaan dalam 10 tahun terakhir','Pernah, memperoleh lebih dari 10 penghargaan dalam 10 tahun terakhir'),(45,'Apakah ada kontribusi nyata terkait dengan teknologi informasi dan komunikasi dalam hal peningkatan kualitas pengetahuan dan kompetensi mahasiswa/i di berbagai jurusan dalam 5 tahun terakhir ?',3,'Peningkatan kualitas','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi mahasiswa/i'),(46,'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal peningkatan kualitas pengetahuan dan kompetensi mahasiswa/i dari berbagai jurusan di perguruan tingg anda dalam 5 tahun',3,'Peningkatan kualitas','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi mahasiswa/i'),(47,'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal peningkatan, efisiensi operasional penyelenggaraan perguruan tinggi anda dalam 5 tahun terakhir ?',3,'Efektivitas dan efisiensi','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi perguruan tinggi'),(48,'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal peningkatan pendapatan perguruan tinggi dalam 5 tahun terakhir ?',3,'Efektivitas dan efisiensi','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi perguruan tinggi'),(49,'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal perbaikan pegawai perguruan tinggi yang bersih, akuntabel dan transparan dalam 5 tahun terakhir ?',3,'Transparansi manajemen','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi manajemen'),(50,'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal peningkatan optimalisasi pemanfaatan berbagai sumber daya yang dimiliki perguruan tinggi anda dalam 5 tahun terakhir ?',3,'Utilitas sumber daya','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi perguruan tinggi'),(51,'Menurut pendapat anda, apa peranan dan target utama penerapan teknologi informasi dan komunikasi di perguruan tinggi anda ?',3,'Transformasi organisasi','Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat','Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat serta meningkatkan kerja operasional pelayanan','Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat serta meningkatkan kerja operasional pelayanan dan membantu proses pengambilan keputusan yang efektif','Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat, meningkatkan kerja operasional pelayanan, membantu proses pengambilan keputusan yang efektif dan memastikan terjadinya proses ','Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat, meningkatkan kerja operasional pelayanan, membantu proses pengambilan keputusan yang efektif dan memastikan terjadinya proses '),(52,'Apakah kebijakan perguruan tinggi memperbolehkan penyelenggaraan mata kuliah berbasis e-learing ?',4,'Implementasi e-learning','Tidak diperbolehkan sama sekali','Diperbolehkan, namun tetap harus dicampur denga model pembelajaran klasik (tatap muka)','Diperbolehkan sesuai dengan peraturan Kemdiknas / Dikti yang ada','Diperbolehkan bahkan dianjurkan untuk dilaksanakan oleh segenap dosen pengajar','Diperbolehkan bahkan  dianjurkan untuk sejumlah dosen melaksanakan sesuai dengan pengembangan yang direncanakan'),(53,'Apakah pimpinan memberikan himbauan akan pentingnya antara dosen pengajar saling berbagi pakai (sharing) materi perkuliahan dan pengetahuan yang dimilikinya ?',4,'Berbagai sumber daya','Tidak diberikan himbauan','Diberikan himbauan secara informal','Secara resmi pimpinan senantiasa memberikan himbauan tersebut dalam berbagai kesempatan formal','Terdapat surat keputusan dari pihak pimpinan yang mengharuskan para dosen untuk saling berbagi pengetahuan dan materi ajar yang dimilikinya','Terdapat surat keputusan dari pihak pimpinan yang mengharuskan para dosen untuk saling berbagi pengetahuan dan materi ajar yang dimilikinya dan dijadikan alat ukur kinerja dosen'),(54,'Apakah perguruan tinggi anda menyediakan fasilitas teknologi untuk menunjang proses berbagi materi ajar antar dosen?',4,'Berbagai sumber daya','Ya, namun jarang sekali dipergunakan oleh dosen','Ya, namun hanya beberapa dosen saja yang aktif berbagi materi ajar','Ya dan rata-rata dosen saling berbagi materi ajar antar sesamanya','Ya dan kira-kira lebih dari 50% telah secara aktif saling berbagi materi ahar','Ya hampir semua dosen saling aktif berbagi materi ajar diantara sesamanya'),(55,'Berapa banyak yang mengunjungi website perguruan tinggi sehari-hari (per idetitas unik) ?',4,'Berbagai sumber daya','Mungkin kira-kira dibawah 100 hits per hari','Kira-kira antara 101 â€“ 1000 hits per hari','Kira-kira antara 1001 â€“ 10.000 hits per hari','Kira-kira antara 10.001 â€“ 100.000 hits per hari','Diatas 100.000 hits per hari'),(56,'Berdasarkan rekam jejak, fitur website perguruan tinggi apa yang paling banyak dimanfaatkan oleh pengunjung ?',4,'Berbagai sumber daya','Tidak jelas, karena tidak ada catatannya','Fitur navigasi umum untuk mencari informasi','Fitur navigasi umum untuk mencari informasi dan berinteraksi dengan pihak perguruan tinggi','Fitur â€œsearching â€œ untuk mencari dan mengunduh dokumen / artikel penting yang dimiliki perguruan tinggi','Fitur aplikasi yang menungkinkan pengunjung untuk turut berpartisipasi dalam berbagai program perguruan tinggi berbasis virtual (e-learning, webcast, knowledge simulationm smart campus dan lain-lain)'),(57,'Apakah pimpinan menganjurkan agar para dosen mengunggah berbagai hasil karyanya ke internet ?',4,'Pendidikan terbuka','Tidak menganjurkan sama sekali','Menganjurkan hanya untuk artikel tertentu saja','Menganjurkan untuk semua karya yang dimiliki dengan tetap memperhatikan unsur HAKI yang dimiliki','Mengharuskan para dosen untuk sebanyak mungkin meng-upload hasil karyanya ke internet','Mengharuskan para dosen untuk sebanyak mungkin meng-upload hasil karyanya ke internet dan dijadikan sebagai bagian dari penilaian kinerja dosen'),(58,'Berapa banyak materi perkuliahan dosen yang diberikan secara terbuka dan gratis kepada publik ',4,'Pendidikan terbuka','Tidak ada sama sekali','Dibawah 10% dari total mata kuliah','Kira-kira antara 11%-25% dari total mata kuliah','Kira-kira antara 26%-50% dari total mata kuliah','Diatas 50% dari total mata kuliah'),(59,'Apakah perguruan tinggi menjadi salah satu penggiat atau peserta forum / asosiasi Open Course Ware (OCW)',4,'Pendidikan terbuka','Tidak ada sama sekali','Berencana untuk menjadi anggotanya dalam waktu dekat','Menjadi penggiat dan anggota aktif dari perkumpulan Open Course Ware (OCW)','Menjadi penggiat dan anggota aktif dan sekaligus pengurus Open Course Ware (OCW) di sejumlah tempat','Menjadi inisiator sekaligus pemimpin gerakan Open Course Ware (OCW) di sejumlah wilayah'),(60,'Bagaimana model pengelolaan sistem informasi internal terkait dengan kewajiban melaporkan status kampus melalui sistem informasi PDPT (Pangkalan Data Perguruan Tinggi) ?',4,'Pangkalan data terpadu','Perguruan tinggi tidak memiliki sistem informasi internal','Keduanya merupakan sistem yang berdiri sendiri, tidak berhubungan','Sistem informasi dirancang sedemikian rupa sehingga menghasilkan output sebagaimana format file PDPT','Dikti dapat secara langsung mengambil file (mengunduh) dari hasil keluaran sistem informasi internal yang formatnya sesuai dengan PDPT melalui website perguruan tinggi','Kedua sistem sudah terintegrasi'),(61,'Apakah sistem informasi akademik perguruan tinggi dapat diakses melalui website oleh pihak luar ?',4,'Pangkalan data terpadu','Tidak dapat sama sekali','Dapat diakses hanya untuk dosen atau mahasiswa aktif (alumni) perguruan tinggi','Dapat diakses oleh berbagai pihak sesuai dengan hak otoritasnya masing-masing','Dapat diakses oleh berbagai pihak yang membutuhkan data/informasi mengenai dosen, mahasiswa, mata kuliah, materi ajar, pustaka internal dan lain-lain, dimana sistem mencatat keseluruhan model interaks','Dapat diakses oleh berbagai pihak luar untuk mendapatkan informasi / data yang dibutuhkan disamping itu dapat dilakukan berbagai query atau searching terhadap kumpulan basis data yang dimiliki perguru'),(62,'Apakah perguruan tinggi memiliki jejaring ke institusi pendidikan atau penelitian lain di luar negeri ?',4,'Jejaring internasional','Tidak ada','Sedang menjajaki kerjasama dengan pihak luar negeri','Memiliki jejaring ke sejumlah lembaga atau institusi lain di luar negeri','Memiliki jejaring ke sejumlah institusi lain di luar negeri yang memungkinkan dosen untuk saling mengakses sumber-sumber pembelajaran dari pihak mitra','Memiliki jejaring ke sejumlah institusi lain di luar negeri yang memungkinkan dosen dan mahasiswa untuk saling mengakses sumber-sumber pembelajaran dari pihak mitra'),(63,'Apakah perguruan tinggi anda mendapatkan dukungan dan bantuan sumber daya maupun asistensi dari pihak ketiga (lembaga internasional) yang berasal dari luar negeri ?',4,'Jejaring internasional','Tidak ada','Ada, namun sangat jarang sekali (satu dalam 3-5 tahun)','Ada, namun berupa bantuan kecil paling tidak setahun sekali','Ada, jumlah bantuannya cukup besar dan diterima secara berkesinambungan','Ada, jumlah bantuannya besar dan diterima secara kontinyu serta berkesinambungan');
/*!40000 ALTER TABLE `kuesioner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `hak_akses` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2y$10$hkMusYIGENAfA8a5vUnvaeVy2fZ.XJ2VMJ.V9lC9O7xDq9Pm48zK6','admin@gmail.com','administrator',NULL,'2022-05-13 13:34:31','2022-05-13 21:09:14'),(2,'alex','$2y$10$8ZbjZ6/O253hx/zIV/dwYOxBsG4J1gW5ce.qK3sicgT9xRr7tdhO2','alex@gmail.com','dekan',NULL,'2022-05-13 13:34:31','2022-05-13 06:53:28'),(3,'sandy','$2y$10$hkMusYIGENAfA8a5vUnvaeVy2fZ.XJ2VMJ.V9lC9O7xDq9Pm48zK6',NULL,'kepala puskom',NULL,'2022-05-13 13:34:31',NULL),(4,'toniwap','$2y$10$hkMusYIGENAfA8a5vUnvaeVy2fZ.XJ2VMJ.V9lC9O7xDq9Pm48zK6',NULL,'kepala puskom',NULL,'2022-05-13 13:34:31',NULL),(5,'victorgu','$2y$10$hkMusYIGENAfA8a5vUnvaeVy2fZ.XJ2VMJ.V9lC9O7xDq9Pm48zK6',NULL,'kaprodi ti',NULL,'2022-05-13 13:34:31',NULL),(6,'ariefh','$2y$10$hkMusYIGENAfA8a5vUnvaeVy2fZ.XJ2VMJ.V9lC9O7xDq9Pm48zK6',NULL,'kaprodi si',NULL,'2022-05-13 13:34:31',NULL),(7,'budi','$2y$10$Ck5EL3/7IpY2F4F.cla1k.5LjHViIiy3g5GjXBweJVCSN7oY7jnhy','budi@test.com','dekan',NULL,'2022-05-13 21:26:15','2022-05-13 21:26:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_kuesioner_flat`
--

DROP TABLE IF EXISTS `view_kuesioner_flat`;
/*!50001 DROP VIEW IF EXISTS `view_kuesioner_flat`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_kuesioner_flat` (
  `id_kuesioner` tinyint NOT NULL,
  `pertanyaan` tinyint NOT NULL,
  `id_dimensi` tinyint NOT NULL,
  `variabel` tinyint NOT NULL,
  `pila` tinyint NOT NULL,
  `pilb` tinyint NOT NULL,
  `pilc` tinyint NOT NULL,
  `pild` tinyint NOT NULL,
  `pile` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `jawaban` tinyint NOT NULL,
  `dimensi` tinyint NOT NULL,
  `bobot` tinyint NOT NULL,
  `factor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_kuesioner_smy_dimensi`
--

DROP TABLE IF EXISTS `view_kuesioner_smy_dimensi`;
/*!50001 DROP VIEW IF EXISTS `view_kuesioner_smy_dimensi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_kuesioner_smy_dimensi` (
  `id_dimensi` tinyint NOT NULL,
  `dimensi` tinyint NOT NULL,
  `bobot` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `pila` tinyint NOT NULL,
  `pilb` tinyint NOT NULL,
  `pilc` tinyint NOT NULL,
  `pild` tinyint NOT NULL,
  `pile` tinyint NOT NULL,
  `bobot_kinerja` tinyint NOT NULL,
  `kategori_kinerja` tinyint NOT NULL,
  `kpi` tinyint NOT NULL,
  `kategori_kpi` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_kuesioner_smy_jawaban`
--

DROP TABLE IF EXISTS `view_kuesioner_smy_jawaban`;
/*!50001 DROP VIEW IF EXISTS `view_kuesioner_smy_jawaban`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_kuesioner_smy_jawaban` (
  `id_dimensi` tinyint NOT NULL,
  `dimensi` tinyint NOT NULL,
  `jawaban` tinyint NOT NULL,
  `bobot` tinyint NOT NULL,
  `factor` tinyint NOT NULL,
  `counter` tinyint NOT NULL,
  `jumlah` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'dimtk4'
--

--
-- Final view structure for view `view_kuesioner_flat`
--

/*!50001 DROP TABLE IF EXISTS `view_kuesioner_flat`*/;
/*!50001 DROP VIEW IF EXISTS `view_kuesioner_flat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_kuesioner_flat` AS select `ku`.`id_kuesioner` AS `id_kuesioner`,`ku`.`pertanyaan` AS `pertanyaan`,`ku`.`id_dimensi` AS `id_dimensi`,`ku`.`variabel` AS `variabel`,`ku`.`pila` AS `pila`,`ku`.`pilb` AS `pilb`,`ku`.`pilc` AS `pilc`,`ku`.`pild` AS `pild`,`ku`.`pile` AS `pile`,`ku`.`username` AS `username`,`j`.`jawaban` AS `jawaban`,`d`.`dimensi` AS `dimensi`,`d`.`bobot` AS `bobot`,(case `j`.`jawaban` when 'A' then 1 when 'B' then 2 when 'C' then 3 when 'D' then 4 when 'E' then 5 end) AS `factor` from ((((select `k`.`id_kuesioner` AS `id_kuesioner`,`k`.`pertanyaan` AS `pertanyaan`,`k`.`id_dimensi` AS `id_dimensi`,`k`.`variabel` AS `variabel`,`k`.`pila` AS `pila`,`k`.`pilb` AS `pilb`,`k`.`pilc` AS `pilc`,`k`.`pild` AS `pild`,`k`.`pile` AS `pile`,`u`.`username` AS `username` from (`dimtk4`.`kuesioner` `k` join `dimtk4`.`users` `u`))) `ku` left join `dimtk4`.`jawaban` `j` on(((`j`.`id_kuesioner` = `ku`.`id_kuesioner`) and (`j`.`username` = convert(`ku`.`username` using utf8mb4))))) left join `dimtk4`.`dimensi` `d` on((`ku`.`id_dimensi` = `d`.`id_dimensi`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_kuesioner_smy_dimensi`
--

/*!50001 DROP TABLE IF EXISTS `view_kuesioner_smy_dimensi`*/;
/*!50001 DROP VIEW IF EXISTS `view_kuesioner_smy_dimensi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_kuesioner_smy_dimensi` AS select `ponk`.`id_dimensi` AS `id_dimensi`,`ponk`.`dimensi` AS `dimensi`,`ponk`.`bobot` AS `bobot`,`ponk`.`total` AS `total`,`ponk`.`pila` AS `pila`,`ponk`.`pilb` AS `pilb`,`ponk`.`pilc` AS `pilc`,`ponk`.`pild` AS `pild`,`ponk`.`pile` AS `pile`,`ponk`.`bobot_kinerja` AS `bobot_kinerja`,`ponk`.`kategori_kinerja` AS `kategori_kinerja`,`ponk`.`kpi` AS `kpi`,(case when (`ponk`.`kpi` <= 20) then 'Tidak Baik' when (`ponk`.`kpi` <= 40) then 'Kurang' when (`ponk`.`kpi` <= 60) then 'Cukup' when (`ponk`.`kpi` <= 80) then 'Baik' else 'Sangat Baik' end) AS `kategori_kpi` from (select `honk`.`id_dimensi` AS `id_dimensi`,`honk`.`dimensi` AS `dimensi`,`honk`.`bobot` AS `bobot`,`honk`.`total` AS `total`,`honk`.`pila` AS `pila`,`honk`.`pilb` AS `pilb`,`honk`.`pilc` AS `pilc`,`honk`.`pild` AS `pild`,`honk`.`pile` AS `pile`,`honk`.`bobot_kinerja` AS `bobot_kinerja`,`honk`.`kategori_kinerja` AS `kategori_kinerja`,round(((`honk`.`bobot_kinerja` / `honk`.`bobot`) * 100),0) AS `kpi` from (select `zonk`.`id_dimensi` AS `id_dimensi`,`zonk`.`dimensi` AS `dimensi`,`zonk`.`bobot` AS `bobot`,`zonk`.`total` AS `total`,`zonk`.`pila` AS `pila`,`zonk`.`pilb` AS `pilb`,`zonk`.`pilc` AS `pilc`,`zonk`.`pild` AS `pild`,`zonk`.`pile` AS `pile`,(case `zonk`.`id_dimensi` when 1 then (case when (`zonk`.`total` <= 48.6) then 1 when (`zonk`.`total` <= 70.2) then 2 when (`zonk`.`total` <= 91.8) then 3 when (`zonk`.`total` <= 113.4) then 4 else 5 end) when 2 then (case when (`zonk`.`total` <= 25.3) then 1 when (`zonk`.`total` <= 36.4) then 2 when (`zonk`.`total` <= 47.6) then 3 when (`zonk`.`total` <= 58.8) then 4 else 5 end) when 3 then (case when (`zonk`.`total` <= 21.6) then 1 when (`zonk`.`total` <= 31.2) then 2 when (`zonk`.`total` <= 40.8) then 3 when (`zonk`.`total` <= 50.4) then 4 else 5 end) when 4 then (case when (`zonk`.`total` <= 23.4) then 1 when (`zonk`.`total` <= 33.8) then 2 when (`zonk`.`total` <= 44.2) then 3 when (`zonk`.`total` <= 54.6) then 4 else 5 end) end) AS `bobot_kinerja`,(case `zonk`.`id_dimensi` when 1 then (case when (`zonk`.`total` <= 48.6) then 'Sangat Buruk' when (`zonk`.`total` <= 70.2) then 'Buruk' when (`zonk`.`total` <= 91.8) then 'Cukup Baik' when (`zonk`.`total` <= 113.4) then 'Baik' else 'Sangat Baik' end) when 2 then (case when (`zonk`.`total` <= 25.3) then 'Sangat Buruk' when (`zonk`.`total` <= 36.4) then 'Buruk' when (`zonk`.`total` <= 47.6) then 'Cukup Baik' when (`zonk`.`total` <= 58.8) then 'Baik' else 'Sangat Baik' end) when 3 then (case when (`zonk`.`total` <= 21.6) then 'Sangat Buruk' when (`zonk`.`total` <= 31.2) then 'Buruk' when (`zonk`.`total` <= 40.8) then 'Cukup Baik' when (`zonk`.`total` <= 50.4) then 'Baik' else 'Sangat Baik' end) when 4 then (case when (`zonk`.`total` <= 23.4) then 'Sangat Buruk' when (`zonk`.`total` <= 33.8) then 'Buruk' when (`zonk`.`total` <= 44.2) then 'Cukup Baik' when (`zonk`.`total` <= 54.6) then 'Baik' else 'Sangat Baik' end) end) AS `kategori_kinerja` from (select `view_kuesioner_smy_jawaban`.`id_dimensi` AS `id_dimensi`,`view_kuesioner_smy_jawaban`.`dimensi` AS `dimensi`,`view_kuesioner_smy_jawaban`.`bobot` AS `bobot`,sum(`view_kuesioner_smy_jawaban`.`jumlah`) AS `total`,sum((case when (`view_kuesioner_smy_jawaban`.`jawaban` = 'A') then `view_kuesioner_smy_jawaban`.`jumlah` else 0 end)) AS `pila`,sum((case when (`view_kuesioner_smy_jawaban`.`jawaban` = 'B') then `view_kuesioner_smy_jawaban`.`jumlah` else 0 end)) AS `pilb`,sum((case when (`view_kuesioner_smy_jawaban`.`jawaban` = 'C') then `view_kuesioner_smy_jawaban`.`jumlah` else 0 end)) AS `pilc`,sum((case when (`view_kuesioner_smy_jawaban`.`jawaban` = 'D') then `view_kuesioner_smy_jawaban`.`jumlah` else 0 end)) AS `pild`,sum((case when (`view_kuesioner_smy_jawaban`.`jawaban` = 'E') then `view_kuesioner_smy_jawaban`.`jumlah` else 0 end)) AS `pile` from `dimtk4`.`view_kuesioner_smy_jawaban` group by `view_kuesioner_smy_jawaban`.`id_dimensi`,`view_kuesioner_smy_jawaban`.`dimensi`,`view_kuesioner_smy_jawaban`.`bobot`) `zonk`) `honk`) `ponk` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_kuesioner_smy_jawaban`
--

/*!50001 DROP TABLE IF EXISTS `view_kuesioner_smy_jawaban`*/;
/*!50001 DROP VIEW IF EXISTS `view_kuesioner_smy_jawaban`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_kuesioner_smy_jawaban` AS select `view_kuesioner_flat`.`id_dimensi` AS `id_dimensi`,`view_kuesioner_flat`.`dimensi` AS `dimensi`,`view_kuesioner_flat`.`jawaban` AS `jawaban`,`view_kuesioner_flat`.`bobot` AS `bobot`,`view_kuesioner_flat`.`factor` AS `factor`,count(`view_kuesioner_flat`.`jawaban`) AS `counter`,(count(`view_kuesioner_flat`.`jawaban`) * `view_kuesioner_flat`.`factor`) AS `jumlah` from `dimtk4`.`view_kuesioner_flat` where (`view_kuesioner_flat`.`jawaban` is not null) group by `view_kuesioner_flat`.`id_dimensi`,`view_kuesioner_flat`.`dimensi`,`view_kuesioner_flat`.`jawaban`,`view_kuesioner_flat`.`bobot`,`view_kuesioner_flat`.`factor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-15 10:41:21
