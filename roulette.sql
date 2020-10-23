-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Окт 23 2020 г., 00:46
-- Версия сервера: 5.7.31-0ubuntu0.18.04.1
-- Версия PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `roulette`
--

CREATE TABLE `roulette` (
  `id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `img` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `about` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `roulette`
--

INSERT INTO `roulette` (`id`, `name`, `img`, `about`) VALUES
(1, 'Item 1', 'img/item_1.jpg', 'N/A'),
(2, 'Item 2', 'img/item_2.jpg', 'N/A'),
(3, 'Item 3', 'img/item_3.jpg', 'N/A'),
(4, 'Item 4', 'img/item_4.jpg', 'N/A'),
(5, 'Item 5', 'img/item_5.jpg', 'N/A'),
(6, 'Item 6', 'img/item_6.jpg', 'N/A');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `roulette`
--
ALTER TABLE `roulette`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `roulette`
--
ALTER TABLE `roulette`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
