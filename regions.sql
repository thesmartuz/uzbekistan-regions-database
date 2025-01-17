-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 02 2022 г., 09:20
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `halolpay`
--

-- --------------------------------------------------------

--
-- Структура таблицы `region`
--

CREATE TABLE `region` (
  `id` int NOT NULL,
  `region_id` int DEFAULT NULL,
  `oz` varchar(255) NOT NULL,
  `uz` varchar(255) NOT NULL,
  `ru` varchar(255) NOT NULL,
  `het_region_id` varchar(4) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 - disabled\n1 - enabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `region`
--

INSERT INTO `region` (`id`, `region_id`, `oz`, `uz`, `ru`, `het_region_id`, `status`) VALUES
(1, NULL, 'Qoraqalpog‘iston Respublikasi', 'Қорақалпоғистон Республикаси', 'Республика Каракалпакстан', '35', 1),
(2, NULL, 'Andijon viloyati', 'Андижон вилояти', 'Андижанская область', '03', 1),
(3, NULL, 'Buxoro viloyati', 'Бухоро вилояти', 'Бухарская область', '06', 1),
(4, NULL, 'Jizzax viloyati', 'Жиззах вилояти', 'Джизакская область', '08', 1),
(5, NULL, 'Qashqadaryo viloyati', 'Қашқадарё вилояти', 'Кашкадарьинская область', '10', 1),
(6, NULL, 'Navoiy viloyati', 'Навоий вилояти', 'Навоийская область', '12', 1),
(7, NULL, 'Namangan viloyati', 'Наманган вилояти', 'Наманганская область', '14', 1),
(8, NULL, 'Samarqand viloyati', 'Самарқанд вилояти', 'Самаркандская область', '18', 1),
(9, NULL, 'Surxandaryo viloyati', 'Сурхандарё вилояти', 'Сурхандарьинская область', '22', 1),
(10, NULL, 'Sirdaryo viloyati', 'Сирдарё вилояти', 'Сырдарьинская область', '24', 1),
(11, NULL, 'Toshkent viloyati', 'Тошкент вилояти', 'Ташкентская область', '27', 1),
(12, NULL, 'Farg‘ona viloyati', 'Фарғона вилояти', 'Ферганская область', '30', 1),
(13, NULL, 'Xorazm viloyati', 'Хоразм вилояти', 'Хорезмская область', '33', 1),
(14, NULL, 'Toshkent shahri', 'Тошкент шаҳри', 'Город Ташкент', '26', 1),
(27, 1, 'Amudaryo tumani', 'Амударё тумани', 'Амударьинский район', NULL, 1),
(28, 1, 'Beruniy tumani', 'Беруний тумани', 'Берунийский район', NULL, 1),
(29, 1, 'Kegayli tumani', 'Кегайли тумани', 'Кегейлийский район', NULL, 1),
(30, 1, 'Qonliko‘l tumani', 'Қонликўл тумани', 'Канлыкульский район', NULL, 1),
(31, 1, 'Qorao‘zak tumani', 'Қораўзак тумани', 'Караузякский район', NULL, 1),
(32, 1, 'Qo‘ng‘irot tumani', 'Қўнғирот тумани', 'Кунградский район', NULL, 1),
(33, 1, 'Mo‘ynoq tumani', 'Мўйноқ тумани', 'Муйнакский район', NULL, 1),
(34, 1, 'Nukus tumani', 'Нукус тумани', 'Нукусский район', NULL, 1),
(35, 1, 'Nukus shahri', 'Нукус шаҳри', 'город Нукус', NULL, 1),
(36, 1, 'Taxtako‘pir tumani', 'Тахтакўпир тумани', 'Тахтакупырский район', NULL, 1),
(37, 1, 'To‘rtko‘l tumani', 'Тўрткўл тумани', 'Турткульский район', NULL, 1),
(38, 1, 'Xo‘jayli tumani', 'Хўжайли тумани', 'Ходжейлийский район', NULL, 1),
(39, 1, 'Chimboy tumani', 'Чимбой тумани', 'Чимбайский район', NULL, 1),
(40, 1, 'Shumanay tumani', 'Шуманай тумани', 'Шуманайский район', NULL, 1),
(41, 1, 'Ellikqal‘a tumani', 'Элликқалъа тумани', 'Элликкалинский район', NULL, 1),
(42, 2, 'Andijon shahri', 'Андижон шаҳри', 'город Андижан', NULL, 1),
(43, 2, 'Andijon tumani', 'Андижон тумани', 'Андижанский район', NULL, 1),
(44, 2, 'Asaka tumani', 'Асака тумани', 'Асакинский район', NULL, 1),
(45, 2, 'Baliqchi tumani', 'Балиқчи тумани', 'Балыкчинский район', NULL, 1),
(46, 2, 'Buloqboshi tumani', 'Булоқбоши тумани', 'Булакбашинский район', NULL, 1),
(47, 2, 'Bo‘z tumani', 'Бўз тумани', 'Бозский район', NULL, 1),
(48, 2, 'Jalaquduq tumani', 'Жалақудуқ тумани', 'Джалакудукский район', NULL, 1),
(49, 2, 'Izbosgan tumani', 'Избосган тумани', 'Избасканский район', NULL, 1),
(50, 2, 'Qorasuv shahri', 'Қорасув шаҳри', 'город Карасув', NULL, 1),
(51, 2, 'Qo‘rg‘ontepa tumani', 'Қўрғонтепа тумани', 'Кургантепинский район', NULL, 1),
(52, 2, 'Marhamat tumani', 'Марҳамат тумани', 'Мархаматский район', NULL, 1),
(53, 2, 'Oltinko‘l tumani', 'Олтинкўл тумани', 'Алтынкульский район', NULL, 1),
(54, 2, 'Paxtaobod tumani', 'Пахтаобод тумани', 'Пахтаабадский район', NULL, 1),
(55, 2, 'Ulug‘nor tumani', 'Улуғнор тумани', 'Улугнорский район', NULL, 1),
(56, 2, 'Xonobod shahri', 'Хонобод шаҳри', 'город Ханабад', NULL, 1),
(57, 2, 'Xo‘jaobod tumani', 'Хўжаобод тумани', 'Ходжаабадский район', NULL, 1),
(58, 2, 'Shaxrixon tumani', 'Шахрихон тумани', 'Шахриханский район', NULL, 1),
(59, 3, 'Buxoro shahri', 'Бухоро шаҳри', 'город Бухара', NULL, 1),
(60, 3, 'Buxoro tumani', 'Бухоро тумани', 'Бухарский район', NULL, 1),
(61, 3, 'Vobkent tumani', 'Вобкент тумани', 'Вабкентский район', NULL, 1),
(62, 3, 'G‘ijduvon tumani', 'Ғиждувон тумани', 'Гиждуванский район', NULL, 1),
(63, 3, 'Jondor tumani', 'Жондор тумани', 'Жондорский район', NULL, 1),
(64, 3, 'Kogon tumani', 'Когон тумани', 'Каганский район', NULL, 1),
(65, 3, 'Kogon shahri', 'Когон шаҳри', 'город Каган', NULL, 1),
(66, 3, 'Qorako‘l tumani', 'Қоракўл тумани', 'Каракульский район', NULL, 1),
(67, 3, 'Qorovulbozor tumani', 'Қоровулбозор тумани', 'Караулбазарский район', NULL, 1),
(68, 3, 'Olot tumani', 'Олот тумани', 'Алатский район', NULL, 1),
(69, 3, 'Peshku tumani', 'Пешку тумани', 'Пешкунский район', NULL, 1),
(70, 3, 'Romitan tumani', 'Ромитан тумани', 'Ромитанский район', NULL, 1),
(71, 3, 'Shofirkon tumani', 'Шофиркон тумани', 'Шафирканский район', NULL, 1),
(72, 4, 'Arnasoy tumani', 'Арнасой тумани', 'Арнасайский район', NULL, 1),
(73, 4, 'Baxmal tumani', 'Бахмал тумани', 'Бахмальский район', NULL, 1),
(74, 4, 'G‘allaorol tumani', 'Ғаллаорол тумани', 'Галляаральский район', NULL, 1),
(75, 4, 'Do‘stlik tumani', 'Дўстлик тумани', 'Дустликский район', NULL, 1),
(76, 4, 'Sh.Rashidov tumani', 'Ш.Рашидов тумани', 'Шараф-Рашидовский район', NULL, 1),
(77, 4, 'Jizzax shahri', 'Жиззах шаҳри', 'город Джизак', NULL, 1),
(78, 4, 'Zarbdor tumani', 'Зарбдор тумани', 'Зарбдарский район', NULL, 1),
(79, 4, 'Zafarobod tumani', 'Зафаробод тумани', 'Зафарабадский район', NULL, 1),
(80, 4, 'Zomin tumani', 'Зомин тумани', 'Зааминский район', NULL, 1),
(81, 4, 'Mirzacho‘l tumani', 'Мирзачўл тумани', 'Мирзачульский район', NULL, 1),
(82, 4, 'Paxtakor tumani', 'Пахтакор тумани', 'Пахтакорский район', NULL, 1),
(83, 4, 'Forish tumani', 'Фориш тумани', 'Фаришский район', NULL, 1),
(84, 4, 'Yangiobod tumani', 'Янгиобод тумани', 'Янгиабадский район', NULL, 1),
(85, 5, 'G‘uzor tumani', 'Ғузор тумани', 'Гузарский район', NULL, 1),
(86, 5, 'Dehqonobod tumani', 'Деҳқонобод тумани', 'Дехканабадский район', NULL, 1),
(87, 5, 'Qamashi tumani', 'Қамаши тумани', 'Камашинский район', NULL, 1),
(88, 5, 'Qarshi tumani', 'Қарши тумани', 'Каршинский район', NULL, 1),
(89, 5, 'Qarshi shahri', 'Қарши шаҳри', 'город Карши', NULL, 1),
(90, 5, 'Kasbi tumani', 'Касби тумани', 'Касбийский район', NULL, 1),
(91, 5, 'Kitob tumani', 'Китоб тумани', 'Китабский район', NULL, 1),
(92, 5, 'Koson tumani', 'Косон тумани', 'Касанский район', NULL, 1),
(93, 5, 'Mirishkor tumani', 'Миришкор тумани', 'Миришкорский район', NULL, 1),
(94, 5, 'Muborak tumani', 'Муборак тумани', 'Мубарекский район', NULL, 1),
(95, 5, 'Nishon tumani', 'Нишон тумани', 'Нишанский район', NULL, 1),
(96, 5, 'Chiroqchi tumani', 'Чироқчи тумани', 'Чиракчинский район', NULL, 1),
(97, 5, 'Shahrisabz tumani', 'Шаҳрисабз тумани', 'Шахрисабзский район', NULL, 1),
(98, 5, 'Yakkabog‘ tumani', 'Яккабоғ тумани', 'Яккабагский район', NULL, 1),
(99, 6, 'Zarafshon shahri', 'Зарафшон шаҳри', 'город Зарафшан', NULL, 1),
(100, 6, 'Karman tumani', 'Карман тумани', 'Карманинский район', NULL, 1),
(101, 6, 'Qiziltepa tumani', 'Қизилтепа тумани', 'Кызылтепинский район', NULL, 1),
(102, 6, 'Konimex tumani', 'Конимех тумани', 'Канимехский район', NULL, 1),
(103, 6, 'Navbahor tumani', 'Навбаҳор тумани', 'Навбахорский район', NULL, 1),
(104, 6, 'Navoiy shahri', 'Навоий шаҳри', 'город Навои', NULL, 1),
(105, 6, 'Nurota tumani', 'Нурота тумани', 'Нуратинский район', NULL, 1),
(106, 6, 'Tomdi tumani', 'Томди тумани', 'Тамдынский район', NULL, 1),
(107, 6, 'Uchquduq tumani', 'Учқудуқ тумани', 'Учкудукский район', NULL, 1),
(108, 6, 'Xatirchi tumani', 'Хатирчи тумани', 'Хатырчинский район', NULL, 1),
(109, 7, 'Kosonsoy tumani', 'Косонсой тумани', 'Касансайский район', NULL, 1),
(110, 7, 'Mingbuloq tumani', 'Мингбулоқ тумани', 'Мингбулакский район', NULL, 1),
(111, 7, 'Namangan tumani', 'Наманган тумани', 'Наманганский район', NULL, 1),
(112, 7, 'Namangan shahri', 'Наманган шаҳри', 'город Наманган', NULL, 1),
(113, 7, 'Norin tumani', 'Норин тумани', 'Нарынский район', NULL, 1),
(114, 7, 'Pop tumani', 'Поп тумани', 'Папский район', NULL, 1),
(115, 7, 'To‘raqo‘rg‘on tumani', 'Тўрақўрғон тумани', 'Туракурганский район', NULL, 1),
(116, 7, 'Uychi tumani', 'Уйчи тумани', 'Уйчинский район', NULL, 1),
(117, 7, 'Uchqo‘rg‘on tumani', 'Учқўрғон тумани', 'Учкурганский район', NULL, 1),
(118, 7, 'Chortoq tumani', 'Чортоқ тумани', 'Чартакский район', NULL, 1),
(119, 7, 'Chust tumani', 'Чуст тумани', 'Чустский район', NULL, 1),
(120, 7, 'Yangiqo‘rg‘on tumani', 'Янгиқўрғон тумани', 'Янгикурганский район', NULL, 1),
(121, 8, 'Bulung‘ur tumani', 'Булунғур тумани', 'Булунгурский район', NULL, 1),
(122, 8, 'Jomboy tumani', 'Жомбой тумани', 'Джамбайский район', NULL, 1),
(123, 8, 'Ishtixon tumani', 'Иштихон тумани', 'Иштыханский район', NULL, 1),
(124, 8, 'Kattaqo‘rg‘on tumani', 'Каттақўрғон тумани', 'Каттакурганский район', NULL, 1),
(125, 8, 'Kattaqo‘rg‘on shahri', 'Каттақўрғон шаҳри', 'город Каттакурган', NULL, 1),
(126, 8, 'Qo‘shrabot tumani', 'Қўшработ тумани', 'Кошрабадский район', NULL, 1),
(127, 8, 'Narpay tumani', 'Нарпай тумани', 'Нарпайский район', NULL, 1),
(128, 8, 'Nurabod tumani', 'Нурабод тумани', 'Нурабадский район', NULL, 1),
(129, 8, 'Oqdaryo tumani', 'Оқдарё тумани', 'Акдарьинский район', NULL, 1),
(130, 8, 'Payariq tumani', 'Паяриқ тумани', 'Пайарыкский район', NULL, 1),
(131, 8, 'Pastarg‘om tumani', 'Пастарғом тумани', 'Пастдаргомский район', NULL, 1),
(132, 8, 'Paxtachi tumani', 'Пахтачи тумани', 'Пахтачийский район', NULL, 1),
(133, 8, 'Samarqand tumani', 'Самарқанд тумани', 'Самаркандский район', NULL, 1),
(134, 8, 'Samarqand shahri', 'Самарқанд шаҳри', 'город Самарканд', NULL, 1),
(135, 8, 'Toyloq tumani', 'Тойлоқ тумани', 'Тайлакский район', NULL, 1),
(136, 8, 'Urgut tumani', 'Ургут тумани', 'Ургутский район', NULL, 1),
(137, 9, 'Angor tumani', 'Ангор тумани', 'Ангорский район', NULL, 1),
(138, 9, 'Boysun tumani', 'Бойсун тумани', 'Байсунский район', NULL, 1),
(139, 9, 'Denov tumani', 'Денов тумани', 'Денауский район', NULL, 1),
(140, 9, 'Jarqo‘rg‘on tumani', 'Жарқўрғон тумани', 'Джаркурганский район', NULL, 1),
(141, 9, 'Qiziriq tumani', 'Қизириқ тумани', 'Кизирикский район', NULL, 1),
(142, 9, 'Qo‘mqo‘rg‘on tumani', 'Қўмқўрғон тумани', 'Кумкурганский район', NULL, 1),
(143, 9, 'Muzrabot tumani', 'Музработ тумани', 'Музрабадский район', NULL, 1),
(144, 9, 'Oltinsoy tumani', 'Олтинсой тумани', 'Алтынсайский район', NULL, 1),
(145, 9, 'Sariosiy tumani', 'Сариосий тумани', 'Сариасийский район', NULL, 1),
(146, 9, 'Termiz tumani', 'Термиз тумани', 'Термезский район', NULL, 1),
(147, 9, 'Termiz shahri', 'Термиз шаҳри', 'город Термез', NULL, 1),
(148, 9, 'Uzun tumani', 'Узун тумани', 'Узунский район', NULL, 1),
(149, 9, 'Sherobod tumani', 'Шеробод тумани', 'Шерабадский район', NULL, 1),
(150, 9, 'Sho‘rchi tumani', 'Шўрчи тумани', 'Шурчинский район', NULL, 1),
(151, 10, 'Boyovut tumani', 'Боёвут тумани', 'Баяутский район', NULL, 1),
(152, 10, 'Guliston tumani', 'Гулистон тумани', 'Гулистанский район', NULL, 1),
(153, 10, 'Guliston shahri', 'Гулистон шаҳри', 'город Гулистан', NULL, 1),
(154, 10, 'Mirzaobod tumani', 'Мирзаобод тумани', 'Мирзаабадский район', NULL, 1),
(155, 10, 'Oqoltin tumani', 'Оқолтин тумани', 'Акалтынский район', NULL, 1),
(156, 10, 'Sayxunobod tumani', 'Сайхунобод тумани', 'Сайхунабадский район', NULL, 1),
(157, 10, 'Sardoba tumani', 'Сардоба тумани', 'Сардобский район', NULL, 1),
(158, 10, 'Sirdaryo tumani', 'Сирдарё тумани', 'Сырдарьинский район', NULL, 1),
(159, 10, 'Xavos tumani', 'Хавос тумани', 'Хавастский район', NULL, 1),
(160, 10, 'Shirin shahri', 'Ширин шаҳри', 'город Ширин', NULL, 1),
(161, 10, 'Yangiyer shahri', 'Янгиер шаҳри', 'город Янгиер', NULL, 1),
(162, 11, 'Angiren shahri', 'Ангирен шаҳри', 'город Ангрен', NULL, 1),
(163, 11, 'Bekabod tumani', 'Бекабод тумани', 'Бекабадский район', NULL, 1),
(164, 11, 'Bekabod shahri', 'Бекабод шаҳри', 'город Бекабад', NULL, 1),
(165, 11, 'Bo‘ka tumani', 'Бўка тумани', 'Букинский район', NULL, 1),
(166, 11, 'Bo‘stonliq tumani', 'Бўстонлиқ тумани', 'Бостанлыкский район', NULL, 1),
(167, 11, 'Zangiota tumani', 'Зангиота тумани', 'Зангиатинский район', NULL, 1),
(168, 11, 'Qibray tumani', 'Қибрай тумани', 'Кибрайский район', NULL, 1),
(169, 11, 'Quyichirchiq tumani', 'Қуйичирчиқ тумани', 'Куйичирчикский район', NULL, 1),
(170, 11, 'Oqqo‘rg‘on tumani', 'Оққўрғон тумани', 'Аккурганский район', NULL, 1),
(171, 11, 'Olmaliq shahri', 'Олмалиқ шаҳри', 'город Алмалык', NULL, 1),
(172, 11, 'Ohangaron tumani', 'Оҳангарон тумани', 'Ахангаранский район', NULL, 1),
(173, 11, 'Parkent tumani', 'Паркент тумани', 'Паркентский район', NULL, 1),
(174, 11, 'Piskent tumani', 'Пискент тумани', 'Пскентский район', NULL, 1),
(175, 11, 'O‘rtachirchiq tumani', 'Ўртачирчиқ тумани', 'Уртачирчикский район', NULL, 1),
(176, 11, 'Chinoz tumani', 'Чиноз тумани', 'Чиназский район', NULL, 1),
(177, 11, 'Chirchiq shahri', 'Чирчиқ шаҳри', 'город Чирчик', NULL, 1),
(178, 11, 'Yuqorichirchiq tumani', 'Юқоричирчиқ тумани', 'Юкоричирчикский район', NULL, 1),
(179, 11, 'Yangiyo‘l tumani', 'Янгийўл тумани', 'Янгиюльский район', NULL, 1),
(180, 12, 'Beshariq tumani', 'Бешариқ тумани', 'Бешарыкский район', NULL, 1),
(181, 12, 'Bog‘dod tumani', 'Боғдод тумани', 'Багдадский район', NULL, 1),
(182, 12, 'Buvayda tumani', 'Бувайда тумани', 'Бувайдинский район', NULL, 1),
(183, 12, 'Dang‘ara tumani', 'Данғара тумани', 'Дангаринский район', NULL, 1),
(184, 12, 'Yozyovon tumani', 'Ёзёвон тумани', 'Язъяванский район', NULL, 1),
(185, 12, 'Quva tumani', 'Қува тумани', 'Кувинский район', NULL, 1),
(186, 12, 'Quvasoy shahri', 'Қувасой шаҳри', 'город Кувасай', NULL, 1),
(187, 12, 'Qo‘qon shahri', 'Қўқон шаҳри', 'город Коканд', NULL, 1),
(188, 12, 'Qo‘shtepa tumani', 'Қўштепа тумани', 'Куштепинский район', NULL, 1),
(189, 12, 'Marg‘ilon shahri', 'Марғилон шаҳри', 'город Маргилан', NULL, 1),
(190, 12, 'Oltiariq tumani', 'Олтиариқ тумани', 'Алтыарыкский район', NULL, 1),
(191, 12, 'Rishton tumani', 'Риштон тумани', 'Риштанский район', NULL, 1),
(192, 12, 'So‘x tumani', 'Сўх тумани', 'Сохский район', NULL, 1),
(193, 12, 'Toshloq tumani', 'Тошлоқ тумани', 'Ташлакский район', NULL, 1),
(194, 12, 'Uchko‘prik tumani', 'Учкўприк тумани', 'Учкуприкский район', NULL, 1),
(195, 12, 'O‘zbekiston tumani', 'Ўзбекистон тумани', 'Узбекистанский район', NULL, 1),
(196, 12, 'Farg‘ona tumani', 'Фарғона тумани', 'Ферганский район', NULL, 1),
(197, 12, 'Farg‘ona shahri', 'Фарғона шаҳри', 'город Фергана', NULL, 1),
(198, 12, 'Furqat tumani', 'Фурқат тумани', 'Фуркатский район', NULL, 1),
(199, 13, 'Bog‘ot tumani', 'Боғот тумани', 'Багатский район', NULL, 1),
(200, 13, 'Gurlan tumani', 'Гурлан тумани', 'Гурленский район', NULL, 1),
(201, 13, 'Qo‘shko‘pir tumani', 'Қўшкўпир тумани', 'Кошкупырский район', NULL, 1),
(202, 13, 'Urganch tumani', 'Урганч тумани', 'Ургенчский район', NULL, 1),
(203, 13, 'Urganch shahri', 'Урганч шаҳри', 'город Ургенч', NULL, 1),
(204, 13, 'Xiva tumani', 'Хива тумани', 'Хивинский район', NULL, 1),
(205, 13, 'Xazarasp tumani', 'Хазарасп тумани', 'Хазараспский район', NULL, 1),
(206, 13, 'Xonqa tumani', 'Хонқа тумани', 'Ханкинский район', NULL, 1),
(207, 13, 'Shavot tumani', 'Шавот тумани', 'Шаватский район', NULL, 1),
(208, 13, 'Yangiariq tumani', 'Янгиариқ тумани', 'Янгиарыкский район', NULL, 1),
(209, 13, 'Yangibozor tumani', 'Янгибозор тумани', 'Янгибазарский район', NULL, 1),
(210, 14, 'Bektimer tumani', 'Бектимер тумани', 'Бектемирский район', NULL, 1),
(211, 14, 'Mirzo Ulug\'bek tumani', 'Мирзо-Улугбекский район', 'Мирзо-Улугбекский район', NULL, 1),
(212, 14, 'Mirobod tumani', 'Миробод тумани', 'Мирабадский район', NULL, 1),
(213, 14, 'Olmazor tumani', 'Олмазор тумани', 'Алмазарский район', NULL, 1),
(214, 14, 'Sirg\'ali tumani', 'Сиргали тумани', 'Сергелийский район', NULL, 1),
(215, 14, 'Uchtepa tumani', 'Учтепа тумани', 'Учтепинский район', NULL, 1),
(216, 14, 'Yashnobod tumani', 'Яшнобод тумани', 'Яшнободский район', NULL, 1),
(217, 14, 'Chilonzor tumani', 'Чилонзор тумани', 'Чиланзарский район', NULL, 1),
(218, 14, 'Shayxontohur tumani', 'Шайхонтоҳур тумани', 'Шайхантахурский район', NULL, 1),
(219, 14, 'Yunusobod tumani', 'Юнусобод тумани', 'Юнусабадский район', NULL, 1),
(220, 14, 'Yakkasaroy tumani', 'Яккасарой тумани', 'Яккасарайский район', NULL, 1),
(221, 1, 'Taxiatosh shahri', 'Тахиатош шаҳри', 'Тахиаташский район', NULL, 1),
(222, 2, 'Asaka shahri', 'Асака шаҳри', 'Асакинский район', NULL, 1),
(223, 9, 'Bandixon tumani', 'Бандихон тумани', 'Бандиханский район', NULL, 1),
(224, 11, 'Ohangaron shahri', 'Оҳангарон шаҳри', 'город Ахангаранский', NULL, 1),
(225, 11, 'Yangiyo‘l shahri', 'Янгийўл шаҳри', 'город Янгиюль', NULL, 1),
(226, 11, 'Toshkent tumani', 'Тошкент тумани', 'Ташкентский район', NULL, 1),
(227, 13, 'Xiva shahri', 'Хива шаҳри', 'город Хива', NULL, 1),
(228, 13, 'Do\'stlik shahri', 'Дўстлик шаҳри', 'город Дўстлик', NULL, 1),
(229, 14, 'Yangihayot tumani', 'Янгиҳаёт тумани', 'Янгихаётский район', NULL, 1),
(230, 13, 'Tuproqqala tumani', 'Тупроққалъа тумани', 'Тироккальский район', NULL, 1),
(231, 7, 'Davlatobod tumani', 'Давлатобод тумани', 'Давлатабадский район \r\n', NULL, 1),
(232, 6, 'G‘ozg‘on shahri', 'Ғозғон шаҳри', 'Город Гозган', NULL, 1),
(233, 1, 'Bo‘zatov tumani', 'Бўзатов тумани', 'Бозатовский район', NULL, 1),
(234, 9, 'Bandixon tumani', 'Бандихон тумани', 'Бандиксонский район', NULL, 1),
(235, 5, 'Shahrisabz shahri', 'Шаҳрисабз шаҳри', 'Город Шахрисабз', NULL, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_region_region1_idx` (`region_id`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `fk_region_region1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;