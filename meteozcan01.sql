-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Kas 2020, 20:28:04
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `meteozcan_01`
--
CREATE DATABASE IF NOT EXISTS `meteozcan_01` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `meteozcan_01`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `KitapKayitNo` smallint(6) NOT NULL COMMENT 'Kitap Tablosunun Ana Anahtarı',
  `KitapKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Kitabın Veri Tabanına Kayıt Tarihi',
  `KitapAdi` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın Tam Adı',
  `KitapISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın ISBN numarası',
  `KitapBasimYeri` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın Basım Yeri',
  `KitapBasimTarih` year(4) NOT NULL COMMENT 'Kitabın Basıldığı Tarih',
  `KitapDili` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın Dili',
  `KitapSayfaSayisi` int(10) NOT NULL COMMENT 'Kitabın Sayfa Sayısı'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitap Tablosu';

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`KitapKayitNo`, `KitapKayitTarih`, `KitapAdi`, `KitapISBN`, `KitapBasimYeri`, `KitapBasimTarih`, `KitapDili`, `KitapSayfaSayisi`) VALUES
(1, '2020-11-02 18:04:06', 'Hayvan Yemek', ' 978605590337', 'İstanbul', 2015, 'Türkçe', 352),
(2, '2020-11-02 18:46:56', 'Soğan Öldü Yaşasın Yemek', ' 978605978219', 'İstanbul', 2016, 'Türkçe', 224),
(3, '2020-11-02 19:00:43', 'Yemek Sosyolojisi', ' 978605465725', 'Ankara', 2012, 'Türkçe', 183),
(4, '2020-11-02 19:15:10', ' Yemek Adabı Kitabı', ' 978605596195', 'İstanbul', 2020, 'Türkçe', 104),
(5, '2020-11-02 19:22:39', 'Tembel Yemek Kitabı', ' 978975533485', 'Ankara', 2007, 'Türkçe', 371);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `YayinEviKayıtNO` smallint(6) NOT NULL COMMENT 'Yayın Evi Kayıt No',
  `YayinEviKayıtTarihi` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yayın Evinin Veri Tabanına Kayıt Edildiği Tarih',
  `YayinEviAdi` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayın Evi Adı',
  `YayinEviURL` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayın Evinin URL''si',
  `YayinEviEPosta` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayın Evi E-postası'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='yayınevi tablosu';

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`YayinEviKayıtNO`, `YayinEviKayıtTarihi`, `YayinEviAdi`, `YayinEviURL`, `YayinEviEPosta`) VALUES
(1, '2020-11-02 18:27:52', 'Siren Yayınları', 'https://sirenyayinlari.com', 'info@sirenyayinlari.com'),
(2, '2020-11-02 18:52:48', 'Yitik Ülke Yayınları', 'https://yitikulkeyayinlari.com', 'yitikulke@gmail.com'),
(3, '2020-11-02 19:07:32', 'Phoenix Yayınevi', 'https://phoenixyayinevi.com', 'info@phoenixyayinevi.com'),
(4, '2020-11-02 19:16:15', 'İlke Yayınları', 'http://www.ilkeyayincilik.com/default.aspx', 'bilgi@ilkeyayincilik.com'),
(5, '2020-11-02 19:25:29', 'İmge Kitabevi', 'https://www.imge.com.tr', 'info@imgekitabevi.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `YazarKayıtNo` smallint(6) NOT NULL COMMENT 'Yazarın Kayıt Numarası',
  `YazarKayıtTarihi` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yazarın Veritabanına Kayıt Edildiği Tarih',
  `YazarAdi` varchar(35) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın Adı',
  `YazarSoyadi` varchar(35) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın Soyadı',
  `YazarURL` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın URL''si'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yazar Tablosu';

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`YazarKayıtNo`, `YazarKayıtTarihi`, `YazarAdi`, `YazarSoyadi`, `YazarURL`) VALUES
(1, '2020-11-02 18:18:09', 'Jonathan Safran', 'Foer', 'https://www.idefix.com/Yazar/jonathan-safran-foer/s=214249'),
(2, '2020-11-02 18:49:08', 'Sunar', 'Aytuna', 'http://www.kameraarkasi.org/yonetmenler/sunarkuralaytuna.html'),
(3, '2020-11-02 19:08:43', 'Hayati', 'Beşirli', 'https://dergipark.org.tr/tr/pub/@hayatibeşirli'),
(4, '2020-11-02 19:18:52', 'İmam', 'Gazali', 'https://www.idefix.com/Yazar/imam-gazali/s=254737?gclid=CjwKCAiA-f78BRBbEiwATKRRBOI_KRupbRcIBAAP3U7YCX4BfT5I5SoeJw3P1qqdoLG5WBb5BfEj_hoCpOkQAvD_BwE&gclsrc=aw.ds'),
(5, '2020-11-02 19:26:33', 'Emine', 'Demirel Yılmaz', 'https://www.idefix.com/Yazar/emine-demirel-yilmaz/s=270827');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`KitapKayitNo`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`YayinEviKayıtNO`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`YazarKayıtNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `KitapKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Kitap Tablosunun Ana Anahtarı', AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `YayinEviKayıtNO` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yayın Evi Kayıt No', AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `YazarKayıtNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yazarın Kayıt Numarası', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
