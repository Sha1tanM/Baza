-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 16 2023 г., 13:41
-- Версия сервера: 8.0.29
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `stomologiheska_klinika`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name_cat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name_cat`) VALUES
(1, 'Лечение зубов'),
(2, 'Хирургия'),
(3, 'Исправление прикуса');

-- --------------------------------------------------------

--
-- Структура таблицы `doctors`
--

CREATE TABLE `doctors` (
  `id` int NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `phon` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paspord` varchar(30) NOT NULL,
  `education` varchar(30) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `id_pos` int NOT NULL,
  `id_cat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `doctors`
--

INSERT INTO `doctors` (`id`, `fname`, `lname`, `sname`, `phon`, `email`, `paspord`, `education`, `login`, `password`, `id_pos`, `id_cat`) VALUES
(1, 'Сергей', 'Иванов', 'Петрович', '+7(888)-134-65-50', 'sergey@mail.ru', '67424', 'Высшее', 'serge', 'serge', 1, 1),
(3, 'Ким', 'Анна', 'Валерьевна', '000000000', '0000@mail.ru', '000000', '000000', 'anna', 'anna', 2, 2),
(4, 'Борисов', 'Борис', 'Борисович', '+7(754)-256-00-45', 'boris@mail.ru', '34234', 'Высшее', 'boris', 'boris', 3, 3),
(5, 'Соколова', 'Марина', 'Олеговна', '+7(926)-524-62-42', 'marina@mail.ru', '84675', 'Высшее', 'marina', 'marina', 3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `office`
--

CREATE TABLE `office` (
  `id` int NOT NULL,
  `number` varchar(30) NOT NULL,
  `categ_of` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `office`
--

INSERT INTO `office` (`id`, `number`, `categ_of`) VALUES
(1, '111', 'Хирургический'),
(2, '222', 'Терапевтический'),
(3, '333', 'Ортодонта');

-- --------------------------------------------------------

--
-- Структура таблицы `patient`
--

CREATE TABLE `patient` (
  `id` int NOT NULL,
  `lname` varchar(30) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `polis` varchar(30) NOT NULL,
  `birsday` date NOT NULL,
  `adress` varchar(30) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `patient`
--

INSERT INTO `patient` (`id`, `lname`, `sname`, `fname`, `phone`, `polis`, `birsday`, `adress`, `login`, `password`) VALUES
(1, 'Игорь', 'Рассохин', 'Дмитриевич', '+7(926)-179-30-55', '142321', '2013-09-11', 'Маршала Захарова.д2', 'igor', 'igor'),
(2, 'Евгений', 'Глушков', 'Сергеевич', '+7(926)-456-20-10', '635628', '2012-07-25', 'Каширское шоссе, д98', 'evgen', 'evgen'),
(3, 'Вероника', 'Грехунова', 'Сергеевна', '+7(222)-333-22-11', '1423453', '2005-04-07', 'Каширское шоссе, д95', 'nika', 'nika');

-- --------------------------------------------------------

--
-- Структура таблицы `positions`
--

CREATE TABLE `positions` (
  `id` int NOT NULL,
  `name_pos` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `positions`
--

INSERT INTO `positions` (`id`, `name_pos`) VALUES
(1, 'терапевт'),
(2, 'хирург'),
(3, 'ортодонт');

-- --------------------------------------------------------

--
-- Структура таблицы `record`
--

CREATE TABLE `record` (
  `id` int NOT NULL,
  `id_sch` int NOT NULL,
  `id_p` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `record`
--

INSERT INTO `record` (`id`, `id_sch`, `id_p`) VALUES
(1, 1, 3),
(2, 2, 2),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `rec_serv`
--

CREATE TABLE `rec_serv` (
  `id` int NOT NULL,
  `id_rec` int NOT NULL,
  `id_serv` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `rec_serv`
--

INSERT INTO `rec_serv` (`id`, `id_rec`, `id_serv`) VALUES
(1, 1, 5),
(2, 2, 8),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `scheduel`
--

CREATE TABLE `scheduel` (
  `id` int NOT NULL,
  `id_doc` int NOT NULL,
  `id_of` int NOT NULL,
  `date_sch` date NOT NULL,
  `time_start` time NOT NULL,
  `time_finish` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `scheduel`
--

INSERT INTO `scheduel` (`id`, `id_doc`, `id_of`, `date_sch`, `time_start`, `time_finish`) VALUES
(1, 3, 1, '2021-10-13', '16:45:45', '19:45:45'),
(2, 4, 3, '2023-01-21', '06:47:09', '07:47:09'),
(3, 1, 2, '2023-09-30', '10:47:46', '10:58:46'),
(4, 5, 3, '2023-09-20', '09:00:00', '09:15:00');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `name_sev` varchar(30) NOT NULL,
  `id_subcat` int NOT NULL,
  `price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name_sev`, `id_subcat`, `price`) VALUES
(1, 'Филтек Z250', 1, '2000'),
(2, 'Эстелайт', 1, '2500'),
(3, 'Эстетическая реставр.', 1, '3000'),
(4, '1 канальный зуб', 7, '5000'),
(5, '2 канальный зуб', 7, '6000'),
(6, '3 канальный зуб', 7, '7000'),
(7, '4 канальный зуб', 7, '8000'),
(8, 'Простое удаление', 2, '2700'),
(9, 'Вскрытие абсцесса', 2, '1100'),
(10, 'Иссечение десны', 2, '2600'),
(11, 'Т4А', 3, '6000'),
(12, 'Т4В', 3, '7000'),
(13, 'Т4U', 3, '7500');

-- --------------------------------------------------------

--
-- Структура таблицы `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int NOT NULL,
  `name_subcat` varchar(30) NOT NULL,
  `id_cat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `subcategory`
--

INSERT INTO `subcategory` (`id`, `name_subcat`, `id_cat`) VALUES
(1, 'Лечение кариеса', 1),
(2, 'Удаление зубов', 2),
(3, 'Трейнеры', 3),
(4, 'Брекет система', 3),
(5, 'Ретейнер съемный', 3),
(6, 'Ретейнер не съемный', 3),
(7, 'Лечение пульпита', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pos` (`id_pos`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Индексы таблицы `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sch` (`id_sch`),
  ADD KEY `id_p` (`id_p`);

--
-- Индексы таблицы `rec_serv`
--
ALTER TABLE `rec_serv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rec` (`id_rec`),
  ADD KEY `id_serv` (`id_serv`);

--
-- Индексы таблицы `scheduel`
--
ALTER TABLE `scheduel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_doc` (`id_doc`),
  ADD KEY `id_of` (`id_of`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_subcat` (`id_subcat`);

--
-- Индексы таблицы `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cat` (`id_cat`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `office`
--
ALTER TABLE `office`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `record`
--
ALTER TABLE `record`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `scheduel`
--
ALTER TABLE `scheduel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`id_pos`) REFERENCES `positions` (`id`),
  ADD CONSTRAINT `doctors_ibfk_2` FOREIGN KEY (`id_cat`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`id_p`) REFERENCES `patient` (`id`),
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`id_sch`) REFERENCES `scheduel` (`id`);

--
-- Ограничения внешнего ключа таблицы `rec_serv`
--
ALTER TABLE `rec_serv`
  ADD CONSTRAINT `rec_serv_ibfk_1` FOREIGN KEY (`id_rec`) REFERENCES `record` (`id`),
  ADD CONSTRAINT `rec_serv_ibfk_2` FOREIGN KEY (`id_serv`) REFERENCES `services` (`id`);

--
-- Ограничения внешнего ключа таблицы `scheduel`
--
ALTER TABLE `scheduel`
  ADD CONSTRAINT `scheduel_ibfk_1` FOREIGN KEY (`id_doc`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `scheduel_ibfk_2` FOREIGN KEY (`id_of`) REFERENCES `office` (`id`);

--
-- Ограничения внешнего ключа таблицы `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`id_subcat`) REFERENCES `subcategory` (`id`);

--
-- Ограничения внешнего ключа таблицы `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
