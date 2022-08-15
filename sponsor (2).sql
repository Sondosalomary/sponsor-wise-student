-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2022 at 09:36 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sponsor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_fullname` varchar(250) NOT NULL,
  `admin_email` varchar(250) NOT NULL,
  `admin_password` varchar(250) NOT NULL,
  `admin_phone` int(10) NOT NULL,
  `admin_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_fullname`, `admin_email`, `admin_password`, `admin_phone`, `admin_image`) VALUES
(1, 'أبرار سهيل', 'abrar28101998@gmail.com', 'abrar28101998', 799359400, ''),
(20, 'أسيل نسيم', 'aseelnassem6@gmail.com', 'aseelnassem6', 799717807, '');

-- --------------------------------------------------------

--
-- Table structure for table `grantt`
--

CREATE TABLE `grantt` (
  `grant_id` int(10) NOT NULL,
  `signup_id` int(10) NOT NULL,
  `sponsor_id` int(10) NOT NULL,
  `descr` varchar(250) NOT NULL,
  `grant_full_price` int(10) NOT NULL,
  `status` varchar(250) NOT NULL,
  `number_of_hours` int(10) NOT NULL,
  `files` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grantt`
--

INSERT INTO `grantt` (`grant_id`, `signup_id`, `sponsor_id`, `descr`, `grant_full_price`, `status`, `number_of_hours`, `files`) VALUES
(26, 24, 4, 'عدم القدرة على الدفع', 700, 'one', 15, 0xd8a7d8abd8a8d8a7d8aa2e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `signup_id` int(10) NOT NULL,
  `student_name` varchar(250) NOT NULL,
  `number` double NOT NULL,
  `address` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `university_name` varchar(250) NOT NULL,
  `university_number` double NOT NULL,
  `university_email` varchar(250) NOT NULL,
  `university_pass` varchar(250) NOT NULL,
  `Specialization` varchar(250) NOT NULL,
  `university_average` float NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`signup_id`, `student_name`, `number`, `address`, `date`, `university_name`, `university_number`, `university_email`, `university_pass`, `Specialization`, `university_average`, `phone`) VALUES
(7, 'أبرار سهيل أحمد الميثلوني', 9982053731, 'الزرقاء', '1998-10-28', 'العلوم الاسلامية', 3180601149, '3180601149@std.wise.edu.jo', '3180601149', 'علم حاسوب', 83.9, 799359400),
(16, 'أسيل نسيم عبد الكريم السلايمة', 9982013465, 'المفرق', '1998-04-03', 'العلوم الاسلامية', 3180601039, '3180601039@std.wise.edu.jo', '3180601039', 'علم حاسوب', 82.5, 799717807),
(18, 'سندس عبدالله محمد العمري', 9982030258, 'الزرقاء', '1998-07-03', 'العلوم الاسلامية', 3180601076, '3180601076@std.wise.edu.jo', '3180601076', 'علم حاسوب', 75, 781579653),
(19, 'يارا سميح محمد زلوم', 9202598535, 'عمان', '2000-08-25', 'العلوم الاسلامية', 3180605105, '3180605105@std.wise.edu.jo', '3180605105', 'هندسة البرمجيات', 92.7, 78151690),
(20, 'نور سنجق محمد سنجق', 9982568965, 'صويلح', '1997-08-12', 'العلوم الاسلامية', 3180601050, '3180601050@std.wise.edu.jo', '3180601050', 'علم حاسوب', 74.6, 798297814),
(21, 'انصاف عبدالله نعمان المرة', 9982568789, 'الزرقاء', '1999-03-13', 'العلوم الاسلامية', 3180605128, '3180605128@std.wise.edu.jo', '3180605128', 'هندسة برمجيات', 79.6, 777222189),
(22, 'صبا بسام عمر السلمان', 9982558954, 'عجلون', '1998-08-20', 'العلوم الاسلامية', 3181402280, '3181402280@std.wise.edu.jo', '3181402280', 'تربية خاصة', 80.58, 789359745),
(23, 'دانا سامي عبدالرحمن ناصر', 9962585485, 'الزرقاء', '1996-11-27', 'العلوم الاسلامية', 3201801015, '3201801015@std.wise.edu.jo', '3201801015', 'الفقه الشافعي', 91, 785198407),
(24, 'أمل غسان محمد حمادة', 9982535875, 'جرش', '1992-09-20', 'العلوم الاسلامية', 3170207322, '3170207322@std.wise.edu.jo', '3170207322', 'القانون', 87, 789632584),
(25, 'راشد فيصل عبدالله الحديدي', 9982875452, 'السلط', '1997-05-18', 'العلوم الاسلامية', 3180502112, '3180502112@std.wise.edu.jo', '3180502112', 'إدارة الأعمال', 77.8, 779632548);

-- --------------------------------------------------------

--
-- Table structure for table `sponsorenew`
--

CREATE TABLE `sponsorenew` (
  `sponsor_id` int(10) NOT NULL,
  `sponsor_name` varchar(250) NOT NULL,
  `sponsor_nummber` double NOT NULL,
  `sponsor_residence` varchar(250) NOT NULL,
  `sponsor_date` date NOT NULL,
  `sponsor_phone` int(10) NOT NULL,
  `sponsor_email` varchar(250) NOT NULL,
  `sponsor_password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sponsorenew`
--

INSERT INTO `sponsorenew` (`sponsor_id`, `sponsor_name`, `sponsor_nummber`, `sponsor_residence`, `sponsor_date`, `sponsor_phone`, `sponsor_email`, `sponsor_password`) VALUES
(4, 'سهيل أحمد سليمان الميثلوني', 9551019806, 'الأردن/الزرقاء', '1955-09-13', 790277489, 'suhail1955@gmail.com', 'suhail1955'),
(6, 'نسيم عبد الكريم عبد الغفار السلايمة', 9669863255, 'الأردن/المفرق', '1966-06-25', 796663657, 'alsalaymehnassem@gmail.com', 'alsalaymehnassem'),
(7, 'عبد الله محمد سليم محمد العمري', 9728932156, 'الأردن/المفرق', '1972-05-25', 789983788, 'abdallah11@gmail.com', 'abdallah11'),
(8, 'محمد نسيم عبد الكريم السلايمة ', 9958985325, 'الأردن/المفرق ', '2001-09-27', 797603809, 'mohammad@gmail.com ', 'mohammad'),
(9, 'محمد سهيل أحمد الميثلوني ', 9941023170, 'الأردن/الزرقاء ', '1994-08-20', 796868661, 'mmaithalony@yahoo.com ', 'mmaithalony'),
(10, 'خلدون علي جميل الشطناوي ', 9726589654, 'الأردن/اربد ', '1972-09-22', 788283710, 'khaldoon12@gmail.com', 'khaldoon12'),
(11, 'أنس عبد الرؤوف يوسف البرقاوي  ', 9805645855, 'الأردن/حي الرشيد ', '1980-05-25', 788126962, 'anas44@gmail.com ', 'anas44'),
(12, 'علي جميل احمد الحوامدة ', 9623658752, 'الأردن/اربد ', '1962-03-17', 798581592, 'alijameel@gmail.com ', 'alijameel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `grantt`
--
ALTER TABLE `grantt`
  ADD PRIMARY KEY (`grant_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`signup_id`);

--
-- Indexes for table `sponsorenew`
--
ALTER TABLE `sponsorenew`
  ADD PRIMARY KEY (`sponsor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `grantt`
--
ALTER TABLE `grantt`
  MODIFY `grant_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `signup_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sponsorenew`
--
ALTER TABLE `sponsorenew`
  MODIFY `sponsor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
