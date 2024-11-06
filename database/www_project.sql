-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2020 at 03:56 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('978-0-7303-1484-4', 'Doing Good By Doing Good', 'Peter Baines', 'doing_good.jpg', 'Doing Good by Doing Good shows companies how to improve the bottom line by implementing an engaging, authentic, and business-enhancing program that helps staff and business thrive. International CSR consultant Peter Baines draws upon lessons learnt from the challenges faced in his career as a police officer, forensic investigator, and founder of Hands Across the Water to describe the Australian CSR landscape, and the factors that make up a program that benefits everyone involved. Case studies illustrate the real effect of CSR on both business and society, with clear guidance toward maximizing involvement, engaging all employees, and improving the bottom line. The case studies draw out the companies that are focusing on creating shared value in meeting the challenges of society whilst at the same time bringing strong economic returns.\r\n\r\nConsumers are now expecting that big businesses with ever-increasing profits give back to the community from which those profits arise. At the same time, shareholders are demanding their share and are happy to see dividends soar. Getting this right is a balancing act, and Doing Good by Doing Good helps companies delineate a plan of action for getting it done.', '20.00', 2),
('978-1-118-94924-5', 'Programmable Logic Controllers', 'Dag H. Hanssen', 'logic_program.jpg', 'Widely used across industrial and manufacturing automation, Programmable Logic Controllers (PLCs) perform a broad range of electromechanical tasks with multiple input and output arrangements, designed specifically to cope in severe environmental conditions such as automotive and chemical plants.Programmable Logic Controllers: A Practical Approach using CoDeSys is a hands-on guide to rapidly gain proficiency in the development and operation of PLCs based on the IEC 61131-3 standard. Using the freely-available* software tool CoDeSys, which is widely used in industrial design automation projects, the author takes a highly practical approach to PLC design using real-world examples. The design tool, CoDeSys, also features a built in simulator / soft PLC enabling the reader to undertake exercises and test the examples.', '20.00', 2),
('978-1-1180-2669-4', 'Professional JavaScript for Web Developers, 3rd Edition', 'Nicholas C. Zakas', 'pro_js.jpg', 'If you want to achieve JavaScript\'s full potential, it is critical to understand its nature, history, and limitations. To that end, this updated version of the bestseller by veteran author and JavaScript guru Nicholas C. Zakas covers JavaScript from its very beginning to the present-day incarnations including the DOM, Ajax, and HTML5. Zakas shows you how to extend this powerful language to meet specific needs and create dynamic user interfaces for the web that blur the line between desktop and internet. By the end of the book, you\'ll have a strong understanding of the significant advances in web development as they relate to JavaScript so that you can apply them to your next website.', '20.00', 1),
('978-1-1180-2669-5', 'Mobile App', 'Matthew R Mageeon', 'mobile_app.jpg', 'If you want to be one of the leading Mobile App Developers in the UK you need to ensure that you know as much as possible about the latest technologies by keeping up with the latest news, advice and practices.\r\nA number of tactics such as attending events, following thought leaders, attending courses, following questions on forums and communities is certainly advisable. You can also dip your toe into the water with a few trusted books that are rated by your peers especially as it is handy to keep a book by your side for quick reference. There is a massive caveat however - always ensure you have the latest version so it remains useful to you and any examples still work.', '20.00', 5),
('978-1-44937-019-0', 'Learning Web App Development', 'Semmy Purewal', 'web_app_dev.jpg', 'Grasp the fundamentals of web application development by building a simple database-backed app from scratch, using HTML, JavaScript, and other open source tools. Through hands-on tutorials, this practical guide shows inexperienced web app developers how to create a user interface, write a server, build client-server communication, and use a cloud-based service to deploy the application.\r\n\r\nEach chapter includes practice problems, full examples, and mental models of the development workflow. Ideal for a college-level course, this book helps you get started with web app development by providing you with a solid grounding in the process.', '20.00', 3),
('978-1-44937-075-6', 'Beautiful JavaScript', 'Anton Kovalyov', 'beauty_js.jpg', 'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed?\r\n\r\nThis guide gives you a rare glimpse into JavaScript from people intimately familiar with it. Chapters contributed by domain experts such as Jacob Thornton, Ariya Hidayat, and Sara Chipps show what they love about their favorite language - whether it\'s turning the most feared features into useful tools, or how JavaScript can be used for self-expression.', '20.00', 3),
('978-1-4571-0402-2', 'Professional ASP.NET 4 in C# and VB', 'Scott Hanselman', 'pro_asp4.jpg', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', '20.00', 1),
('978-1-484216-40-8', 'Android Studio New Media Fundamentals', 'Wallace Jackson', 'android_studio.jpg', 'Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', '20.00', 4),
('978-1-484217-26-9', 'C++ 14 Quick Syntax Reference, 2nd Edition', '	Mikael Olsson', 'c_14_quick.jpg', 'This updated handy quick C++ 14 guide is a condensed code and syntax reference based on the newly updated C++ 14 release of the popular programming language. It presents the essential C++ syntax in a well-organized format that can be used as a handy reference.\r\n\r\nYou won\'t find any technical jargon, bloated samples, drawn out history lessons, or witty stories in this book. What you will find is a language reference that is concise, to the point and highly accessible. The book is packed with useful information and is a must-have for any C++ programmer.\r\n\r\nIn the C++ 14 Quick Syntax Reference, Second Edition, you will find a concise reference to the C++ 14 language syntax. It has short, simple, and focused code examples. This book includes a well laid out table of contents and a comprehensive index allowing for easy review.', '20.00', 4),
('978-1-49192-706-9', 'C# 6.0 in a Nutshell, 6th Edition', 'Joseph Albahari, Ben Albahari', 'c_sharp_6.jpg', 'When you have questions about C# 6.0 or the .NET CLR and its core Framework assemblies, this bestselling guide has the answers you need. C# has become a language of unusual flexibility and breadth since its premiere in 2000, but this continual growth means there\'s still much more to learn. Organized around concepts and use cases, this thoroughly updated sixth edition provides intermediate and advanced programmers with a concise map of C# and .NET knowledge. Dive in and discover why this Nutshell guide is considered the definitive reference on C#.', '20.00', 5),
('978-1-49192-769-9', 'Game of thrones', 'George R.R. Martin', 'game.jpg', 'Here is the first volume in George R. R. Martin’s magnificent cycle of novels that includes A Clash of Kings and A Storm of Swords. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R. R. Martin’s stunning series is destined to stand as one of the great achievements of imaginative fiction.', '50.00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(5, '', 'House 29 street 08 korang town Islamabad', '', '', 'Pakistan'),
(6, '', '', '', '', ''),
(7, 'usman', 'House 07 street 09 korang town Islamabad', '', '440000', 'Pakistan'),
(8, 'usman', 'House 07 street 09 korang town Islamabad', '', '440003', 'Pakistan'),
(9, 'rehan khan', 'House 29 street 08 korang town Islamabad', '', '440000', 'Pakistan'),
(10, 'husnain', 'House 29 street 09 korang town Islamabad', '', '540000', 'Pakistan'),
(11, 'husnain', 'House 29 street 09 korang town Islamabad', 'islambad', '540000', 'Pakistan'),
(12, 'Taha Bukhari', 'House 28 street 34 korang Town Islamabad', 'islambad', '55000', 'Pakistan'),
(13, 'Taha Bukhari', 'House 28 street 34 korang Town Islamabad', 'islambad', '55000', 'Pakistan'),
(14, '', '', '', '', ''),
(15, '', '', '', '', ''),
(16, '', '', '', '', ''),
(17, 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(18, 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(19, 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(20, 'Wamiq Waheed', 'house 29 g11', 'pindi', '122', 'india'),
(21, 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(5, 4, '20.00', '2020-07-23 14:52:35', 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(6, 4, '20.00', '2020-07-26 13:17:28', 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(7, 4, '40.00', '2020-07-26 17:53:32', 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(8, 5, '40.00', '2020-08-06 10:24:33', '', 'House 29 street 08 korang town Islamabad', '', '', 'Pakistan'),
(9, 4, '20.00', '2020-08-06 10:27:25', 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(10, 5, '20.00', '2020-08-06 10:29:57', '', 'House 29 street 08 korang town Islamabad', '', '', 'Pakistan'),
(12, 5, '40.00', '2020-08-07 06:44:14', '', 'House 29 street 08 korang town Islamabad', '', '', 'Pakistan'),
(13, 5, '20.00', '2020-08-08 14:47:47', '', 'House 29 street 08 korang town Islamabad', '', '', 'Pakistan'),
(14, 5, '20.00', '2020-08-08 16:51:34', '', 'House 29 street 08 korang town Islamabad', '', '', 'Pakistan'),
(15, 7, '20.00', '2020-08-09 15:34:03', 'usman', 'House 07 street 09 korang town Islamabad', '', '440000', 'Pakistan'),
(16, 8, '20.00', '2020-08-09 15:36:20', 'usman', 'House 07 street 09 korang town Islamabad', '', '440003', 'Pakistan'),
(17, 4, '20.00', '2020-08-09 15:38:53', 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(18, 9, '100.00', '2020-08-09 15:44:26', 'rehan khan', 'House 29 street 08 korang town Islamabad', '', '440000', 'Pakistan'),
(19, 10, '40.00', '2020-08-10 07:26:20', 'husnain', 'House 29 street 09 korang town Islamabad', '', '540000', 'Pakistan'),
(20, 11, '100.00', '2020-08-10 07:29:37', 'husnain', 'House 29 street 09 korang town Islamabad', 'islambad', '540000', 'Pakistan'),
(21, 10, '120.00', '2020-08-10 07:31:10', 'husnain', 'House 29 street 09 korang town Islamabad', '', '540000', 'Pakistan'),
(22, 9, '20.00', '2020-08-10 07:33:14', 'rehan khan', 'House 29 street 08 korang town Islamabad', '', '440000', 'Pakistan'),
(23, 6, '0.00', '2020-08-10 07:38:13', '', '', '', '', ''),
(24, 9, '20.00', '2020-08-10 07:38:33', 'rehan khan', 'House 29 street 08 korang town Islamabad', '', '440000', 'Pakistan'),
(25, 9, '20.00', '2020-08-10 08:34:50', 'rehan khan', 'House 29 street 08 korang town Islamabad', '', '440000', 'Pakistan'),
(26, 10, '20.00', '2020-08-10 08:35:15', 'husnain', 'House 29 street 09 korang town Islamabad', '', '540000', 'Pakistan'),
(27, 9, '20.00', '2020-08-10 09:37:28', 'rehan khan', 'House 29 street 08 korang town Islamabad', '', '440000', 'Pakistan'),
(28, 9, '40.00', '2020-08-10 09:40:21', 'rehan khan', 'House 29 street 08 korang town Islamabad', '', '440000', 'Pakistan'),
(29, 4, '40.00', '2020-08-10 09:43:58', 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(30, 4, '20.00', '2020-08-10 09:49:51', 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(31, 12, '260.00', '2020-08-10 09:50:58', 'Taha Bukhari', 'House 28 street 34 korang Town Islamabad', 'islambad', '55000', 'Pakistan'),
(32, 13, '200.00', '2020-08-10 09:53:45', 'Taha Bukhari', 'House 28 street 34 korang Town Islamabad', 'islambad', '55000', 'Pakistan'),
(33, 14, '0.00', '2020-08-10 09:55:18', '', '', '', '', ''),
(34, 15, '0.00', '2020-08-10 09:55:43', '', '', '', '', ''),
(35, 16, '0.00', '2020-08-10 09:55:56', '', '', '', '', ''),
(36, 17, '20.00', '2020-08-10 09:56:54', 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(37, 18, '20.00', '2020-08-10 10:16:15', 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(38, 19, '300.00', '2020-08-10 10:40:54', 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan'),
(39, 20, '70.00', '2020-08-10 10:53:43', 'Wamiq Waheed', 'house 29 g11', 'pindi', '122', 'india'),
(40, 21, '250.00', '2020-08-10 10:54:54', 'rehan khan', 'House 29 street 08 korang town Islamabad', 'islambad', '440000', 'Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(5, '978-1-484217-26-9', '20.00', 1),
(5, '978-1-484216-40-8', '20.00', 1),
(5, '978-1-484217-26-9', '20.00', 2),
(8, '978-1-484217-26-9', '20.00', 2),
(5, '978-0-7303-1484-4', '20.00', 1),
(8, '978-0-7303-1484-4', '20.00', 1),
(11, '978-0-7303-1484-4', '20.00', 1),
(8, '978-0-7303-1484-4', '20.00', 2),
(8, '978-1-484217-26-9', '20.00', 1),
(8, '978-0-7303-1484-4', '20.00', 1),
(15, '978-1-1180-2669-4', '20.00', 1),
(16, '978-1-118-94924-5', '20.00', 1),
(5, '978-1-49192-706-9', '20.00', 1),
(18, '978-1-484217-26-9', '20.00', 4),
(18, '978-1-118-94924-5', '20.00', 1),
(19, '978-1-484217-26-9', '20.00', 1),
(19, '978-1-118-94924-5', '20.00', 1),
(20, '978-1-484217-26-9', '20.00', 5),
(19, '978-1-484217-26-9', '20.00', 6),
(18, '978-1-1180-2669-4', '20.00', 1),
(18, '978-1-44937-019-0', '20.00', 1),
(18, '978-1-118-94924-5', '20.00', 1),
(19, '978-1-118-94924-5', '20.00', 1),
(18, '978-1-118-94924-5', '20.00', 1),
(18, '978-0-7303-1484-4', '20.00', 1),
(18, '978-1-44937-019-0', '20.00', 1),
(5, '978-1-118-94924-5', '20.00', 2),
(5, '978-1-118-94924-5', '20.00', 1),
(31, '978-1-484217-26-9', '20.00', 5),
(31, '978-1-118-94924-5', '20.00', 6),
(31, '978-1-1180-2669-5', '20.00', 2),
(32, '978-1-118-94924-5', '20.00', 10),
(36, '978-1-118-94924-5', '20.00', 1),
(37, '978-1-484217-26-9', '20.00', 1),
(38, '978-1-1180-2669-5', '20.00', 15),
(39, '978-1-49192-769-9', '50.00', 1),
(39, '978-1-1180-2669-4', '20.00', 1),
(40, '978-1-49192-769-9', '50.00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Wrox'),
(2, 'Wiley'),
(3, 'O\'Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'Addison-Wesley');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
