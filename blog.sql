-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 19 2019 г., 13:48
-- Версия сервера: 5.7.23
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190318092645', '2019-03-18 09:26:59'),
('20190318095626', '2019-03-18 09:58:18'),
('20190318101808', '2019-03-18 10:19:21'),
('20190318111556', '2019-03-18 11:16:06'),
('20190318123628', '2019-03-18 12:36:43'),
('20190318123851', '2019-03-18 12:38:55');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `title`, `text`, `date`, `user_id`) VALUES
(8, 'test test test test test test', 'test test test test test test', '2019-03-18 14:41:59', 1),
(10, 'best title ever', 'not bad description', '2019-03-18 16:57:28', 2),
(11, 'qwerty', '12345', '2019-03-18 16:58:18', 2),
(12, '(-_-)', '-_(-_-)_-  \r\n-_(-_-)_-', '2019-03-18 16:58:55', 2),
(13, 'test test test test test test', 'qazwsxedc', '2019-03-18 17:04:56', 2),
(14, 'rock and roll', 'llor dna kcor', '2019-03-18 18:38:11', 2),
(15, 'qwerty', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio beatae animi, aliquid alias eveniet magnam deserunt saepe neque amet libero incidunt ab quam culpa. Blanditiis, nesciunt illum! Adipisci ratione, tempora aliquam optio, ipsam quod iste ut, itaque soluta dolor hic non. Obcaecati fugiat, minima quas fuga inventore dolor neque modi. Ipsum veritatis nisi nemo perferendis debitis iste quas impedit sunt, quisquam nihil nam non labore voluptas laborum illo ipsam ex deserunt, culpa. Atque laborum perspiciatis quidem architecto voluptate aperiam, placeat non sit possimus consequuntur nobis dolore inventore ullam illo cupiditate fugiat voluptates culpa iure ex. Possimus atque, ipsa, numquam libero a aperiam ut odit enim nihil odio nisi magnam tempore. Cumque, recusandae hic reiciendis nisi odit soluta quos, magnam tenetur blanditiis repellat, culpa iste. Temporibus ipsa voluptates tenetur explicabo excepturi recusandae nemo et voluptas quod, atque, enim iure libero. Nihil excepturi consectetur repellat ex tenetur rem, repudiandae laborum expedita aut porro, eius quod libero unde neque natus consequatur quaerat sequi atque incidunt. Dolores tempora minima ad esse provident minus dolorum quis voluptate, culpa dolor commodi id quae, placeat quod! Magnam ducimus, similique voluptate dolores aliquid itaque pariatur officiis laudantium tenetur ad cumque praesentium facere eaque nulla eos recusandae nemo nam debitis inventore quas. Delectus pariatur illum earum molestiae odio nesciunt, quas ad iure aspernatur nobis tenetur, ipsa ut facere id a, accusantium modi. Nulla nobis, laborum maiores. Facere explicabo, accusamus eligendi enim adipisci rem obcaecati sit laudantium, libero, totam eveniet dignissimos quidem dolorum, laborum reprehenderit perferendis tempore. Tenetur quis voluptate similique sunt aut enim adipisci voluptatum assumenda, repudiandae, ex vitae deserunt reiciendis commodi! Voluptatem quasi, asperiores neque necessitatibus excepturi dicta eligendi accusantium nesciunt odit repudiandae quod nostrum eius maxime itaque optio velit quae consequatur consectetur qui ipsa quis. Odit rerum sunt suscipit quae ipsam alias modi mollitia iste in laborum pariatur officiis fugiat nemo voluptatibus ut corrupti nam nulla deserunt minus quibusdam facilis, nostrum tenetur. Autem libero at labore voluptatibus quis, laudantium ea iste neque. Sint sapiente alias modi tempore repudiandae asperiores laboriosam ipsam maxime tempora aliquid velit incidunt deleniti nesciunt soluta non voluptates esse, possimus fuga laborum dolorum saepe? Consequatur eaque totam aliquid consectetur facere exercitationem molestiae repellendus, provident ipsa ducimus earum, repudiandae cum! Repellendus beatae pariatur impedit, aliquam accusantium! Minima harum nulla esse vero magnam repellat facere ipsa labore rem odit, inventore, quae voluptatem fuga totam asperiores ea, voluptas maiores in nisi vel! Dignissimos obcaecati, saepe commodi ea recusandae ex, molestias, libero eius assumenda necessitatibus eos! Beatae nemo dolore quas illum nesciunt ratione impedit, molestias quasi repudiandae perspiciatis aliquam maiores debitis nisi modi. Temporibus necessitatibus repellat minima sequi quisquam, numquam expedita cumque libero officia ab sunt quia, quos at vitae? Ad architecto qui possimus, corporis provident quisquam, alias in blanditiis autem quod maiores odit, quos numquam animi rerum et sapiente beatae rem dolore accusamus. Rem magnam culpa molestias excepturi officia perferendis, numquam quia veniam ad repellat nostrum debitis veritatis natus inventore suscipit amet eos eum quidem omnis iure eius minus soluta illo fugiat. Incidunt atque quidem odit sapiente!', '2019-03-19 10:07:39', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'www@mail.ffff', '[]', '$2y$13$PmW1Vv4IMZMiSjPtl/ghveBSSvXcyJ2dElVZCzpML3z1DBMAzhBP6'),
(2, 'www@mail.fff', '[]', '$2y$13$BZgh3iUrDwfEkUibz8CSKO44eGOO16ErE/3SnXU8dxwJ0.Qban6Mi');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A8A6C8DA76ED395` (`user_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
