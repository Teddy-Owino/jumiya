-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 04, 2024 at 09:28 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jumiya`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_desc` varchar(500) NOT NULL,
  `product_cost` int(50) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_desc`, `product_cost`, `product_category`, `product_image_name`) VALUES
(1, 'Infinix', 'An affordable smartphone with a 6.6-inch HD+ display, 64GB storage, and a 50MP dual camera setup, perfect for social media enthusiasts', 13000, 'phones', 'phone1.jpg'),
(2, 'Tecno Spark', 'Offers a stunning 6.78-inch FHD+ display, 128GB storage, and a 50MP main camera with 5G capabilities for fast internet browsin', 12500, 'phones', 'phone2.jpg'),
(3, 'Samsung Galaxy A54', 'A mid-range smartphone featuring a 6.4-inch Super AMOLED display, 128GB storage, and a powerful 50MP camera', 45000, 'phones', 'phone4.jpg'),
(4, 'Nokia G21', 'A reliable device with a 6.5-inch display, 128GB storage, and a 50MP triple camera, known for its robust build and long battery life.', 34750, 'phones', 'phone5.jpg'),
(5, 'Xiaomi Redmi Note 11', 'Features a 6.43-inch AMOLED display, 128GB storage, and a versatile quad-camera system, balancing performance and style', 45666, 'phones', 'phone6.jpg'),
(6, 'Oppo A77', 'A budget-friendly phone with a 6.51-inch display, 64GB storage, and a 13MP dual camera, great for everyday use.', 445000, 'phones', 'phone1.jpg'),
(7, 'Huawei P50 Lite', 'Boasts a 6.67-inch display, 128GB storage, and a powerful camera system, perfect for photography lovers', 50000, 'phones', 'phone4.jpg'),
(8, 'Realme C30', ' An entry-level smartphone with a 6.5-inch display, 32GB storage, and a decent 8MP camera, ideal for first-time smartphone users.', 45000, 'phones', 'phone3.jpg'),
(9, 'iPhone 13', 'A premium smartphone featuring a 6.1-inch Super Retina XDR display, 128GB storage, and advanced dual-camera system for stunning photos and videos.', 700000, 'phone', 'phone5.jpg'),
(10, 'Vivo Y21', 'A budget-friendly phone with a 6.51-inch display, 64GB storage, and a 13MP dual camera, great for everyday use.', 35000, 'phones', 'phone6.jpg'),
(21, 'Moisturizing Face Cream', 'A rich and hydrating face cream for all skin types.', 26, 'beauty', 'bed1.jpg'),
(22, 'Organic Lip Balm', 'Natural lip balm to keep your lips soft and moisturized.', 9, 'beauty', 'bed2.jpg'),
(23, 'Revitalizing Eye Serum', 'An eye serum that reduces puffiness and dark circles.', 30, 'beauty', 'bed3.jpg'),
(24, 'Gentle Cleansing Foam', 'A gentle foam cleanser that removes impurities.', 19, 'beauty', 'bed4.jpeg'),
(25, 'Exfoliating Face Scrub', 'A mild exfoliating scrub for a fresh glow.', 13, 'beauty', 'bed5.jpg'),
(26, 'Hydrating Face Mask', 'A hydrating mask that rejuvenates the skin.', 22, 'beauty', 'bed6.jpg'),
(27, 'Nourishing Hair Oil', 'A lightweight oil that nourishes and strengthens hair.', 15, 'beauty', 'bed11.jpg'),
(28, 'Brightening Serum', 'A serum that brightens and evens skin tone.', 29, 'beauty', 'bed8.jpg'),
(29, 'Sunscreen SPF 50', 'Broad-spectrum sunscreen for daily protection.', 20, 'beauty', 'bed9.jpg'),
(30, 'Makeup Setting Spray', 'A setting spray that keeps makeup in place all day.', 16, 'beauty', 'bed10.jpg'),
(31, 'Classic White T-Shirt', 'A versatile white t-shirt made from soft cotton.', 20, 'fashion', 'decor1.jpg'),
(32, 'Slim Fit Jeans', 'Stylish slim fit jeans that offer comfort and style.', 50, 'fashion', 'decor2.jpg'),
(33, 'Leather Jacket', 'A timeless leather jacket that adds edge to any outfit.', 130, 'fashion', 'decor3.jpg'),
(34, 'Floral Maxi Dress', 'A beautiful floral maxi dress perfect for summer outings.', 40, 'fashion', 'decor4.jpg'),
(35, 'Casual Sneakers', 'Comfortable sneakers for everyday wear.', 60, 'fashion', 'decor5.jpg'),
(36, 'Men’s Button-Up Shirt', 'A smart button-up shirt for formal and casual occasions.', 35, 'fashion', 'decor2.jpg'),
(37, 'Knit Sweater', 'A cozy knit sweater ideal for chilly days.', 45, 'fashion', 'decor1.jpg'),
(38, 'Stylish Sunglasses', 'Trendy sunglasses to elevate your look.', 25, 'fashion', 'decor5.jpg'),
(39, 'Backpack Purse', 'A chic backpack purse for everyday essentials.', 40, 'fashion', 'decor3.jpg'),
(40, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'fashion', 'decor4.jpg'),
(41, 'Men’s Button-Up Shirt', 'A smart button-up shirt for formal and casual occasions.', 35, 'electronics', 'decor1.jpg'),
(42, 'Knit Sweater', 'A cozy knit sweater ideal for chilly days.', 45, 'electronics', 'decor3.jpg'),
(43, 'Stylish Sunglasses', 'Trendy sunglasses to elevate your look.', 25, 'electronics', 'decor4.jpg'),
(44, 'Backpack Purse', 'A chic backpack purse for everyday essentials.', 40, 'electronics', 'screen4.jpg'),
(45, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'electronics', 'screen3.jpg'),
(46, 'Men’s Button-Up Shirt', 'A smart button-up shirt for formal and casual occasions.', 35, 'electronics', 'screen1.jpg'),
(47, 'Knit Sweater', 'A cozy knit sweater ideal for chilly days.', 45, 'electronics', 'screen2.jpg'),
(48, 'Stylish Sunglasses', 'Trendy sunglasses to elevate your look.', 25, 'electronics', 'screen3.jpg'),
(49, 'Backpack Purse', 'A chic backpack purse for everyday essentials.', 40, 'electronics', 'screen5.jpg'),
(50, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'electronics', 'screen2.jpg'),
(51, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'shoes', 'appl.jpg'),
(52, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'shoes', 'appl2.jpg'),
(53, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'shoes', 'appl3.jpg'),
(54, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'shoes', 'appl4.jpg'),
(55, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'shoes', 'appl5.jpg'),
(56, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'shoes', 'bath1.jpg'),
(57, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'shoes', 'bath2.jpg'),
(58, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'shoes', 'bath4.jpg'),
(59, 'Knit Sweater', 'A cozy knit sweater ideal for chilly days.', 45, 'shoes', 'decor3.jpg'),
(60, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'shoes', 'screen3.jpg'),
(61, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'television', 'screen3.jpg'),
(62, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'television', 'screen4.jpg'),
(63, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'television', 'screen5.jpg'),
(64, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'television', 'screen2.jpg'),
(65, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'television', 'screen1.jpg'),
(66, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'television', 'screen3.jpg'),
(67, 'Wool Scarf', 'A warm wool scarf that adds style and comfort.', 30, 'television', 'screen4.jpg'),
(68, 'Sneakers', 'they describe here', 400, 'fashion', 'f5.jpg'),
(69, 'samsung', 'ghery', 3, '', 'f6.jpg'),
(70, 'samsung', 'ghery', 3, '', 'f6.jpg'),
(71, ' Floral Maxi Dress', 'A flowing maxi dress adorned with vibrant floral patterns, perfect for summer outings.', 999, 'dresses', 'dress6.jpg'),
(72, 'Little Black Dress', ' A timeless classic with a fitted silhouette, ideal for cocktail parties and formal events.', 900, 'dresses', 'dress1.jpg'),
(73, 'Bohemian Sundress', 'A lightweight sundress with a relaxed fit and intricate embroidery, perfect for beach days.', 1000, 'dresses', 'dress6.jpg'),
(74, 'A-Line Midi Dress', 'A flattering A-line midi dress featuring a cinched waist and flowy skirt, great for both casual and dressy occasions.', 950, 'dresses', 'dress2.jpg'),
(75, 'Off-Shoulder Party Dress', 'An elegant off-shoulder dress that combines comfort and style, suitable for evening gatherings.', 1200, 'dresses', 'dress4.jpg'),
(76, 'Casual T-Shirt Dress', 'A versatile T-shirt dress made from soft cotton, perfect for everyday wear and lounging.', 1300, 'dresses', 'dress3.jpg'),
(77, 'Denim Jumper Dress', 'A cute and casual denim jumper dress with adjustable straps, ideal for layering.', 850, 'dresses', 'dress10.jpg'),
(78, 'Chiffon Wrap Dress', 'A beautiful chiffon wrap dress that flows elegantly, perfect for weddings and special occasions.', 780, 'dresses', 'dress8.jpg'),
(79, 'Sweater Dress', 'A cozy sweater dress that combines warmth and style, ideal for fall and winter wear.', 1600, 'dresses', 'dress7.jpg'),
(80, 'Sequin Evening Gown', 'A glamorous sequin gown that sparkles with every movement, perfect for formal events and galas.', 1500, 'dresses', 'drees11.jpg'),
(81, 'Classic Tote Bag', 'A spacious tote bag made from durable canvas, perfect for daily errands and weekend getaways.', 500, 'handbags', 'handbag1.jpg'),
(82, 'Leather Crossbody Bag', 'A chic leather crossbody bag with an adjustable strap, ideal for hands-free convenience.', 750, 'handbags', 'handbag2.jpg'),
(83, 'Stylish Clutch', 'An elegant clutch featuring intricate beadwork, perfect for evening events and special occasions.', 850, 'handbags', 'handbag3.jpg'),
(84, 'Bucket Bag', 'A trendy bucket bag with a drawstring closure and ample space, great for a casual day out.', 950, 'handbags', 'handbag4.jpg'),
(85, ' Backpack Purse', 'A fashionable backpack purse with multiple pockets, combining style and functionality for on-the-go lifestyles.', 1000, 'handbags', 'handbag5.jpg'),
(86, 'Faux Fur Handbag', 'A fun and trendy faux fur handbag that adds a touch of glamour to any outfit.', 850, 'handbags', 'handbag6.jpg'),
(87, 'Mini Satchel', 'A compact mini satchel with a structured design and top handle, perfect for carrying essentials.', 700, 'handbags', 'handbag7.jpg'),
(88, 'Hobo Bag', 'A slouchy hobo bag made from soft leather, offering a relaxed look and plenty of room for your belongings.', 950, 'handbags', 'handbag8.jpg'),
(89, 'Travel Duffel Bag', 'A spacious travel duffel bag featuring a stylish design and multiple pockets, ideal for weekend trips.', 850, 'handbags', 'handbag9.jpg'),
(90, 'Cotton Ankle Socks', 'Soft and breathable cotton ankle socks designed for all-day comfort, available in assorted colors.', 50, 'socks', 'socks1.jpg'),
(91, 'Wool Hiking Socks', 'Warm and moisture-wicking wool hiking socks with extra cushioning for outdoor adventures.', 70, 'socks', 'socks2.jpg'),
(92, 'Athletic Performance Socks', 'High-performance athletic socks with arch support and ventilation channels, perfect for workouts.', 80, 'socks', 'socks3.jpg'),
(93, 'Novelty Pattern Socks', 'Fun and quirky novelty socks featuring playful patterns and designs, ideal for adding flair to any outfit.', 70, 'socks', 'socks4.jpg'),
(94, 'Dress Socks', ' Classic dress socks made from soft, breathable fabric, perfect for formal occasions and business attire.', 100, 'socks', 'socks5.jpg'),
(95, 'Compression Socks', 'herapeutic compression socks designed to improve circulation and reduce fatigue, ideal for travel or long days on your feet.', 80, 'socks', 'socks7.jpg'),
(96, 'Classic Leather Belt', 'A timeless leather belt with a polished silver buckle, perfect for both casual and formal outfits.', 400, 'belt', 'belt1.jpg'),
(97, 'Canvas Casual Belt', ' A durable canvas belt with a metal buckle, ideal for everyday wear and outdoor activities.', 600, 'belt', 'belt2.jpg'),
(98, ' Woven Stretch Belt', 'A stylish woven stretch belt that adjusts comfortably, great for pairing with summer outfits.', 550, 'belt', 'belt3.jpg'),
(99, 'Reversible Belt', 'A versatile reversible belt with two colors in one, perfect for coordinating with any outfit.', 750, 'belt', 'belt4.jpg'),
(100, 'suede Dress Belt', ' A luxurious suede belt featuring a sleek buckle, ideal for adding a touch of elegance to dress pants.', 650, 'belt', 'belt5.jpg'),
(101, 'Braided Leather Belt', 'A fashionable braided leather belt that adds texture to your look, suitable for both casual and smart-casual attire.', 650, 'belt', 'belt6.jpg'),
(102, 'Narrow Fashion Belt', 'A chic narrow belt made from synthetic leather, perfect for accentuating the waist on dresses or tunics.', 950, 'belt', 'belt7.jpg'),
(103, 'Sports Belt', ' A lightweight and adjustable sports belt designed for active lifestyles, featuring multiple pockets for essentials.', 850, 'belt', 'belt8.jpg'),
(104, 'Classic Baseball Cap', 'A timeless baseball cap made from 100% cotton, featuring an adjustable strap for a comfortable fit.', 300, 'caps', 'cap7.jpg'),
(105, 'Trucker Hat', 'A stylish trucker hat with a breathable mesh back and a fun graphic design, perfect for casual outings.\r\n', 400, 'caps', 'cap1.png'),
(106, 'Beanie Hat', 'A cozy knitted beanie designed to keep you warm during the colder months, available in multiple colors.', 350, 'caps', 'cap2.png'),
(107, 'Snapback Cap', 'A trendy snapback cap with a flat brim and adjustable snap closure, ideal for streetwear style.', 500, 'caps', 'cap3.png'),
(108, 'Visor Cap', 'A lightweight visor cap perfect for outdoor activities, providing sun protection while keeping you cool.', 350, 'caps', 'cap4.png'),
(109, 'Sun Hat', 'A wide-brim sun hat made from breathable fabric, ideal for beach days and sunny outings.', 250, 'caps', 'cap5.png'),
(110, 'Dad Hat', 'A wide-brim sun hat made from breathable fabric, ideal for beach days and sunny outings.', 200, 'caps', 'cap6.jpg'),
(111, ' Sports Cap', 'A moisture-wicking sports cap designed for running and outdoor activities, featuring a reflective strip for safety.', 300, 'caps', 'cap8.jpg'),
(112, 'Bucket Hat', 'A trendy bucket hat made from soft cotton, great for summer festivals and outdoor adventures', 350, 'caps', 'cap9.jpg'),
(113, 'Floral Print Cap', 'A stylish cap adorned with a vibrant floral print, perfect for adding a pop of color to your outfit.', 450, 'caps', 'cap10.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
