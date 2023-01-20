-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Січ 20 2023 р., 01:32
-- Версія сервера: 8.0.30
-- Версія PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `fantastic_garden`
--

-- --------------------------------------------------------

--
-- Структура таблиці `admins`
--

CREATE TABLE `admins` (
  `id` int UNSIGNED NOT NULL,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `surname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `age` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `online` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп даних таблиці `admins`
--

INSERT INTO `admins` (`id`, `login`, `email`, `password`, `name`, `surname`, `age`, `phone`, `online`) VALUES
(1, 'pidhrabia', 'pidhrabia@gmail.com', '303a3f44f02f761490f5d75dd02abd11', 'Ihor', 'Pidhrabia', '20', '0982404475', 0),
(2, 'pidhrabia1', 'pidhrabia1@gmail.com', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `gallery`
--

CREATE TABLE `gallery` (
  `id` int UNSIGNED NOT NULL,
  `slide_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп даних таблиці `gallery`
--

INSERT INTO `gallery` (`id`, `slide_name`) VALUES
(1, 'image1.jpeg'),
(2, 'image2.jpeg'),
(3, 'image3.jpeg'),
(4, 'image4.jpeg'),
(5, 'image5.jpeg');

-- --------------------------------------------------------

--
-- Структура таблиці `price`
--

CREATE TABLE `price` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп даних таблиці `price`
--

INSERT INTO `price` (`id`, `title`, `price`, `description`) VALUES
(1, 'Проект без візуалізації', '2500₴/100 м2', 'В проект входить:\r\n\r\nгенплан\r\nдендроплан\r\nплан мощення та доріжок\r\nсхема дренажів\r\nсхема освітлення\r\nвідомість рослин\r\nкошторис'),
(2, 'Проект з візуалізацією', '4000₴/100 м2', 'В проект входить:\r\n\r\nгенплан\r\nдендроплан\r\nплан мощення та доріжок\r\nсхема дренажів\r\nсхема освітлення\r\nвідомість рослин\r\nкошторис'),
(3, 'Проект з наглядом', 'Обговорюється', 'В проект входить:\r\n\r\nгенплан\r\nдендроплан\r\nплан мощення та доріжок\r\nсхема дренажів\r\nвідомість рослин\r\nкошторис\r\nавторський нагля');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `admins`
--
ALTER TABLE `admins`
  ADD UNIQUE KEY `id` (`id`);

--
-- Індекси таблиці `gallery`
--
ALTER TABLE `gallery`
  ADD UNIQUE KEY `id` (`id`);

--
-- Індекси таблиці `price`
--
ALTER TABLE `price`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `price`
--
ALTER TABLE `price`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
