-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 16 Haz 2021, 19:34:07
-- Sunucu sürümü: 10.4.19-MariaDB
-- PHP Sürümü: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `vintagerosecakes`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cake`
--

CREATE TABLE `cake` (
  `cakeID` int(11) NOT NULL,
  `numOfPeople` varchar(1000) NOT NULL,
  `flavor` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `date` varchar(1000) NOT NULL,
  `time` varchar(1000) NOT NULL,
  `payment` varchar(1000) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `cake`
--

INSERT INTO `cake` (`cakeID`, `numOfPeople`, `flavor`, `address`, `date`, `time`, `payment`, `userID`) VALUES
(2, '100 - 500tl', 'Chocolate', 'Balıkesir', '01/01/2022', '10:00-14:00', 'Cash', 1),
(3, '100 - 500tl', 'Chocolate', 'Balıkesir', '01/01/2022', '10:00-14:00', 'Cash', 1),
(7, '100 - 500tl', 'Chocolate', 'Balıkesir', '01/01/2021', '10:00-14:00', 'Cash', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `userName` varchar(1000) NOT NULL,
  `userSurname` varchar(1000) NOT NULL,
  `userEmail` varchar(1000) NOT NULL,
  `userPassword` varchar(1000) NOT NULL,
  `userPhone` varchar(1000) NOT NULL,
  `userAddress` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`userID`, `userName`, `userSurname`, `userEmail`, `userPassword`, `userPhone`, `userAddress`) VALUES
(1, 'Simay', 'Kaygısız', 'simay@email.com', '123456', '05555555555', 'Balıkesir'),
(2, 'İpek', 'Aşıcıoğlu', 'ipek@email.com', '123456', '01111111111', 'Eskişehir'),
(3, 'İpek', 'Aşıcıoğlu', 'ipek@email.com', '123456', '01111111111', 'Eskişehir'),
(4, 'Burak', 'Özcan', 'burak@email.com', '123456', '02222222222', 'İzmir');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cake`
--
ALTER TABLE `cake`
  ADD PRIMARY KEY (`cakeID`),
  ADD KEY `userID` (`userID`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cake`
--
ALTER TABLE `cake`
  MODIFY `cakeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `cake`
--
ALTER TABLE `cake`
  ADD CONSTRAINT `cake_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
