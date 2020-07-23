-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 17, 2020 at 02:58 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(32, 'english', 6),
(33, 'geography', 4),
(34, 'economics', 4),
(37, 'entertainment', 0),
(36, 'flowchart and algorithm', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL,
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `post_id` (`post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(60, 'android', 'twfedguwdhjsnbiudhiudd', '32', '25 06 ,20', 55, 'Screenshot (10).png'),
(61, 'operating system', 'uwgswqduhdnhw', '32', '25 06 ,20', 55, 'Screenshot (7).png'),
(62, 'testing', ' 1st Floor. Herbage. Near Gujarat Vidhyopeeth. Ashram Rood. Ahmedabad 380014 Ph 27541Q65.27542369. ohmedofcadSschandgraupcom â€¢ No 6. AhujaChambers. Is?Cross.KurnaraKnipaRood. Bangalore-560001 Ph 22268048.22354008. bangalore Sschandgroup com â€¢ 238-AMP. Nagar.Zone 1. Bhopol 462Oil. Ph: 4274723. bhopolÂ«$chandgrcxjpcom â€¢ 152. AnnoSaiai.Chennai-60DC02 Ph :2846(XD26.cherYnalÂ®schondgroup.com â€¢ S.C.O 6.7 & 8. Sector90. Chandigarh 160317. Ptv2749376.2749377. chandigarh<e$chandgrcup.com â€¢ 1st Floor. Bhortio Tower. Badornboc* CuHack-753 009. Pfv2332580; 2332581. cuftockÂ«8scr>andgroup.com â€¢ 1st Floor. 52-A. Rojpur Road. Dehiodun-248 001. Ph. 2740889. 2740861. oehradunSschandgroup com â€¢ Pan Bazar, Guwahati 781001. Ph 2514155.guworxjfc4hchandgroup.com â€¢ Sultan Bazar. Hyderabod-500195.Ph:24651135.24744815. hyderabod8schandgroup.com â€¢ Mai Hiran Gate. Jalandhor-144008 Ph 2401630. jatandhorÂ©schandgroup.com â€¢ A-14 Janta Store Shopping Complex. University Marg. Bopu Nagar. Jaipur - 302 015. Phone: 2709l53jcjpur@schandgroup.com â€¢ 613-7.M.G.Rood. Ernakuiam.Kochi-682035. Ph 2381740.cochin9schandgroup com â€¢ 285/J.8ip*iBihanGanguliStreet.KoJkala - 700012. Ph:22367459.22', '32', '25 06 ,20', 55, 'Screenshot (100).png'),
(56, 'shakespear', 'qwertyujhghhvbkn', '32', '25 06 ,20', 55, 'h.png'),
(57, 'geography', '                   qwqerthyjhgfvd                ', '34', '25 06 ,20', 55, 'dest1.jpg'),
(63, 'post three', '                   Solution : Clearly, there is one belonging to 20th century. So, A who belongs to 20th century contributes to Marathi poetry. Also, D is a Hindi poet and novelist who belongs to the 19th century. There are only two Marathis. So, C who is a Marathi will contribute to poetry, novel and drama. Clearly, there are only four poets. So, F who is a poet, will be Bengali belonging to the 17th century. There is now no other Bengali, no other Marathi and no other poet B, who wrote drama only cannot be Tamil and does not belong to 19th century. So, B belongs to 17th century and is a Hindi dramatist. Thus, E belonging to the 19th century is a Tamil novelist and dramatist. C will belong to the 19th century. 1. (6): B contributes to Hindi. 2. (c): E is the Tamil writer 3. (a): A contributes to poetry alone. 4. (d): F is the Bengali writer. 5. (d) : C contributes to all the three â€” poetry, novel and drama.                 ', '33', '25 06 ,20', 55, 'Screenshot (56).png'),
(64, 'introduction to flowcharts', 'Solution : Clearly, there is one belonging to 20th century. So, A who belongs to 20th century contributes to Marathi poetry. Also, D is a Hindi poet and novelist who belongs to the 19th century. There are only two Marathis. So, C who is a Marathi will contribute to poetry, novel and drama. Clearly, there are only four poets. So, F who is a poet, will be Bengali belonging to the 17th century. There is now no other Bengali, no other Marathi and no other poet B, who wrote drama only cannot be Tamil and does not belong to 19th century. So, B belongs to 17th century and is a Hindi dramatist. Thus, E belonging to the 19th century is a Tamil novelist and dramatist. C will belong to the 19th century. 1. (6): B contributes to Hindi. 2. (c): E is the Tamil writer 3. (a): A contributes to poetry alone. 4. (d): F is the Bengali writer. 5. (d) : C contributes to all the three â€” poetry, novel and drama. ', '36', '25 06 ,20', 55, 'h.png'),
(65, 'test-1', '                   Ex. 17. Show that 4832718 is divisible by 11.  Sol.    (Sum of digits at odd places) - (Sum of digits at even places)                                           = (8 + 7 + 3 + 4) - (1 + 2 + 8) = 11, which is divisible by 11.             Hence, 4832718 is divisible by 11.  \r\n \r\n \r\nEx. 18. Is 52563744 divisible by 24 ?  Sol.  24 = 3 x 8, where 3 and 8 are co-primes.                     The sum of the digits in the given number is 36, which is divisible by 3. So, the                       given number is divisible by 3.          The number formed by the last 3 digits of the given number is 744, which is  divisible by 8. So, the given number is divisible by 8.          Thus, the given number is divisible by both 3 and 8, where 3 and 8 are co-primes. So, it is divisible by 3 x 8, i.e., 24. \r\n \r\n \r\nEx. 19. What least number must be added to 3000 to obtain a number exactly divisible by 19 ? Sol. On dividing 3000 by 19, we get 17 as remainder.      ïœNumber to be added = (19 - 17) = 2. \r\n \r\n                 ', '34', '26 06 ,20', 56, 'p2.jpg'),
(66, 'test-2', '                                      Ex. 17. Show that 4832718 is divisible by 11.  Sol.    (Sum of digits at odd places) - (Sum of digits at even places)                                           = (8 + 7 + 3 + 4) - (1 + 2 + 8) = 11, which is divisible by 11.             Hence, 4832718 is divisible by 11.  \r\n \r\n \r\nEx. 18. Is 52563744 divisible by 24 ?  Sol.  24 = 3 x 8, where 3 and 8 are co-primes.                     The sum of the digits in the given number is 36, which is divisible by 3. So, the                       given number is divisible by 3.          The number formed by the last 3 digits of the given number is 744, which is  divisible by 8. So, the given number is divisible by 8.          Thus, the given number is divisible by both 3 and 8, where 3 and 8 are co-primes. So, it is divisible by 3 x 8, i.e., 24. \r\n \r\n \r\nEx. 19. What least number must be added to 3000 to obtain a number exactly divisible by 19 ? Sol. On dividing 3000 by 19, we get 17 as remainder.      ïœNumber to be added = (19 - 17) = 2. \r\n \r\n                                 ', '32', '26 06 ,20', 56, 'p4.jpg'),
(67, 'Test-3', '                                      .Numeral : In Hindu Arabic system, we use ten symbols 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 called digits to represent any number.  A group of digits, denoting a number is called a numeral.  We represent a number, say 689745132 as shown below : \r\n \r\nTen Crores (108)  \r\nCrore s(107) \r\nTen Lacs (Millions ) (106) \r\nLacs( 105) \r\nTen Thous ands (104) \r\nThou sands (103) \r\nHundr eds (102) \r\nTen s(1 01) \r\nUni ts(1 00) \r\n6 8 9 7 4 5 1 3 2 We read it as : ''Sixty-eight crores, ninety-seven lacs, forty-five thousand, one hundred and thirty-two''.  II  Place Value or Local Value of a Digit in a Numeral : In the above numeral : Place value of 2 is (2 x 1) = 2; Place value of 3 is (3 x 10) = 30; Place value of 1 is (1 x 100) = 100 and so on. Place value of 6 is 6 x 108 = 600000000  III.Face Value : The face value of a digit in a numeral is the value of the   digit itself at whatever place it may be. In the above numeral, the face value of 2 is 2; the face value of 3 is 3 and so on.                                ', '36', '26 06 ,20', 55, 'p1.jpg'),
(69, 'test-4', 'wdheuydguyd', '33', '28 06 ,20', 55, 'dest1.jpg'),
(70, 'test-5', 'uhsduiqwgdqudgu', '33', '28 06 ,20', 55, 'upload/1593338629-dest1.jpeg'),
(71, 'test-6', 'snxjijsbdijdnqiuwdhnwjidnsnwdwqudqwuwudweifwehewwebwebiwwew\r\nsnxjijsbdijdnqiuwdhnwjidnsnwdwqudqwuwudweifwehewwebwebiwwew\r\nsnxjijsbdijdnqiuwdhnwjidnsnwdwqudqwuwudweifwehewwebwebiwwew\r\nsnxjijsbdijdnqiuwdhnwjidnsnwdwqudqwuwudweifwehewwebwebiwwew\r\nvsnxjijsbdijdnqiuwdhnwjidnsnwdwqudqwuwudweifwehewwebwebiwwew', '32', '28 06 ,20', 55, '1593338978-dest1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `website_name` varchar(60) NOT NULL,
  `logo_image` varchar(60) NOT NULL,
  `footer_desc` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`website_name`, `logo_image`, `footer_desc`) VALUES
('news-site-lucky', 'news.jpg', '@lucky mishra \\\\arshimishra26gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(55, 'walking ', 'dead', 'walking dead', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(56, 'lucky', 'mishra', 'lucky', '81dc9bdb52d04dc20036dbd8313ed055', 0);
