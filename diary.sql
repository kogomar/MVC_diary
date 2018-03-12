-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 04 2018 г., 13:54
-- Версия сервера: 5.5.53-log
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `diary`
--

-- --------------------------------------------------------

--
-- Структура таблицы `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user` varchar(32) NOT NULL,
  `tdate` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `task`
--

INSERT INTO `task` (`id`, `title`, `text`, `status`, `user`, `tdate`) VALUES
(1, 'Wash the dishes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur autem harum libero nisi odit quasi quisquam repudiandae suscipit ut voluptatum. Assumenda dignissimos dolorem nam omnis, quidem sapiente veritatis voluptas voluptates.', 1, 'Mother', '12:03:2018'),
(2, 'Cleaning the house', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur autem harum libero nisi odit quasi quisquam repudiandae suscipit ut voluptatum. Assumenda dignissimos dolorem nam omnis, quidem sapiente veritatis voluptas voluptates.', 1, 'Child', '11:03:2018'),
(3, 'Cut the lawn', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur autem harum libero nisi odit quasi quisquam repudiandae suscipit ut voluptatum. Assumenda dignissimos dolorem nam omnis, quidem sapiente veritatis voluptas voluptates.', 1, 'Father', '11:03:2018'),
(5, 'Walk the dog', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur autem harum libero nisi odit quasi quisquam repudiandae suscipit ut voluptatum. Assumenda dignissimos dolorem nam omnis, quidem sapiente veritatis voluptas voluptates.', 0, 'Child', '10:03:2018'),
(6, 'Repair the dishwasher', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur autem harum libero nisi odit quasi quisquam repudiandae suscipit ut voluptatum. Assumenda dignissimos dolorem nam omnis, quidem sapiente veritatis voluptas voluptates.', 1, 'Mother', '15:11:2018'),
(8, 'Prepare dinner', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur autem harum libero nisi odit quasi quisquam repudiandae suscipit ut voluptatum. Assumenda dignissimos dolorem nam omnis, quidem sapiente veritatis voluptas voluptates.', 0, '', 'everyday');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(32) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'Mother', '6ee6a213cb02554a63b1867143572e70'),
(2, 'Father', '0de959beaa82daa7df6ef2286d071a6d'),
(3, 'Child', '1b7d5726533ab525a8760351e9b5e415');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
