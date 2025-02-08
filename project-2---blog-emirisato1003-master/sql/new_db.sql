-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 04:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`) VALUES
(1, 'Maria', 'Harris'),
(2, 'Kai', 'Handerson'),
(3, 'Emiri', 'Sato'),
(4, 'Zyam', 'Uyan'),
(11, 'Bruce', 'Elgort'),
(12, 'Megan', 'Williams');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`) VALUES
(1, 'Travel'),
(2, 'Food'),
(3, 'Coffee'),
(4, 'Outdoor'),
(5, 'Books'),
(6, 'Design'),
(7, 'Fashion'),
(8, 'Health and Fitness'),
(14, 'School'),
(15, 'Beauty'),
(16, 'Skincare'),
(17, 'Cooking'),
(18, 'Interior'),
(19, 'Self-Improvement'),
(20, 'Parenting'),
(21, 'Family'),
(22, 'Relationships'),
(23, 'Career'),
(24, 'Financial'),
(25, 'Crafts'),
(26, 'Sustainability'),
(27, 'Pop Culture'),
(28, 'Pet');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `content` varchar(4096) NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `date`, `content`, `author`) VALUES
(1, 'Wellness Insights: Nurturing Mind, Body, and Soul', '2021-05-10', 'Welcome to Wellness Insights, a personal blog where I share my journey toward holistic well-being, focusing on health, fitness, and self-care. Join me as we explore the pillars of wellness and discover practical tips, insights, and inspiration to nurture our minds, bodies, and souls. From fitness routines and nutritious recipes to self-care practices and mindfulness techniques, this blog is a space dedicated to embracing a balanced and vibrant lifestyle.\r\nFitness Routines and Workouts:\r\nExplore a variety of fitness routines and workouts tailored to different goals and fitness levels. From strength training and cardio workouts to yoga flows and mindful movement, I\'ll provide step-by-step instructions, modifications, and motivational tips to help you stay active and energized. Discover new exercises, find workout routines that suit your preferences, and embrace the joy of movement.\r\nNutritious Recipes and Healthy Eating:\r\nDelve into the world of nutritious and delicious recipes that support a healthy lifestyle. From wholesome breakfast options to nourishing lunch and dinner ideas, I\'ll share recipes that are packed with nutrients, flavors, and creativity. Explore tips for meal planning, ingredient substitutions, and mindful eating practices to develop a positive relationship with food and nourish your body from within.\r\nSelf-Care Practices and Mindfulness:\r\nPrioritize self-care and explore practices that promote inner well-being and balance. From mindfulness meditation and breathing exercises to journaling and gratitude practices, I\'ll share techniques to cultivate self-awareness, reduce stress, and foster a sense of calm and clarity. Discover self-care rituals that resonate with you and learn how to prioritize self-nurturing in your daily life.\r\nWellness Tips for Daily Living:\r\nDiscover practical tips and insights for incorporating wellness into your everyday life. From sleep hygiene and stress management techniques to time management and productivity hacks, I\'ll provide guidance on creating a balanced lifestyle that supports your overall well-being. Explore ways to optimize your daily routines, find balance in work and personal life, and cultivate habits that promote long-term health and happiness.\r\nPersonal Reflections and Inspiring Stories:\r\nJoin me in personal reflections and inspiring stories that shed light on the challenges, triumphs, and lessons learned on the path to wellness. I\'ll share my own experiences, anecdotes, and insights gained from my journey toward health and balance. Through vulnerable storytelling, we\'ll create a community where we can support and inspire each other on our wellness journeys.\r\nWellness Insights is a personal blog that invites you to prioritize your health, fitness, and self-care. By exploring fitness routines, nutritious recipes, self-care practices, and mindfulness techniques, we aim to create a space that fosters holistic well-being. Join me on this journey towards nurturing mind, body, and soul, and discover how small changes and intentional choices can lead to a life of vitality and balance.', 1),
(2, 'Unleash Your Style: Elevating Your Fashion Game', '2021-05-11', 'Fashion is an expressive art form that allows us to showcase our unique personalities and make a statement without saying a word. Embracing fashion isn\'t just about following trends; it\'s about harnessing the power of clothing to boost our confidence and create a visual representation of who we are. In this blog post, we\'ll explore some tips and tricks to elevate your fashion game and unleash your personal style.', 3),
(3, 'Wanderlust Unleashed: Exploring the World, One Adventure at a Time', '2021-05-12', 'Travel is an opportunity to step out of your comfort zone and embrace the unknown. Be open to new experiences, cultures, and ways of life. Let go of preconceived notions and allow yourself to be pleasantly surprised by the unexpected. Engage with locals, try unfamiliar cuisines, and immerse yourself in the local customs and traditions. The more you embrace the unknown, the richer your travel experiences will be.', 2),
(4, 'Embrace the Great Outdoors: Discovering the Beauty of Nature', '2021-05-27', 'The great outdoors offers a magnificent playground for adventure, relaxation, and connecting with nature. Whether you\'re an avid hiker, a camping enthusiast, or simply enjoy spending time outside, immersing yourself in outdoor activities can have numerous benefits for your physical and mental well-being. In this blog post, we\'ll explore the wonders of the natural world and provide inspiration for outdoor enthusiasts to embark on new adventures and embrace the beauty of nature.', 4),
(5, 'Brewing Culture: Exploring Portland\'s Coffee Scene', '2023-05-19', 'Portland, Oregon, is renowned for its vibrant coffee culture and thriving specialty coffee scene. With a plethora of independent coffee shops, passionate baristas, and a deep appreciation for quality brews, the city offers a haven for coffee enthusiasts. In this blog post, we\'ll take a deep dive into Portland\'s coffee culture, uncovering the best coffee shops, highlighting unique brewing techniques, and celebrating the city\'s love affair with this beloved beverage.', 1),
(6, 'Bibliophile\'s Paradise: Exploring the World of Books', '2023-05-18', 'Welcome to Bibliophile\'s Paradise, a blog dedicated to the love of books and the joy of reading. Here, we invite you to embark on a literary journey through various genres, discover new authors, and dive into thought-provoking discussions. Whether you\'re a bookworm, a casual reader, or someone looking to reignite your passion for reading, this blog is your haven for all things book-related. Join us as we delve into the enchanting world of literature and share our insights, recommendations, and musings.', 2),
(7, 'Gastronomic Delights: Exploring the World of Flavors', '2023-05-10', 'Follow along as I embark on culinary adventures, trying out new recipes and sharing the ups and downs of my cooking experiments. From testing unique flavor combinations to exploring different cooking techniques, I\'ll provide insights, tips, and honest reflections on the joys and challenges of the culinary journey. Join me in embracing the creativity and discovery that come from experimenting with ingredients and flavors.', 3),
(20, 'Travel to Japan', '2023-05-12', 'Nestled in the heart of East Asia, Japan beckons travelers with its enchanting blend of ancient traditions and modern innovations. From the bustling streets of Tokyo to the serene temples of Kyoto, this captivating country offers a diverse range of experiences that cater to every traveler\'s interests. Start your journey in Tokyo, a metropolis that pulsates with energy. Lose yourself in the neon-lit streets of Shibuya, where throngs of people cross the famous scramble intersection. Immerse yourself in the tranquil beauty of Meiji Shrine, a peaceful oasis in the midst of the city\'s hustle and bustle. Indulge your senses in the trendy districts of Shinjuku and Akihabara, where you can delve into the world of technology, anime, and gaming.\r\nVenture to Kyoto, a city steeped in timeless elegance and spiritual tranquility. Stroll through the narrow lanes of the Gion district, known for its geisha culture, and catch a glimpse of these elegant performers in their traditional attire. Marvel at the shimmering gold facade of Kinkaku-ji, the iconic Golden Pavilion, and discover the art of Zen meditation in the serene rock gardens of Ryoan-ji. Don\'t miss the vibrant vermillion torii gates of Fushimi Inari Shrine, a sight that is sure to leave you awestruck. As you explore Japan, be sure to indulge in its renowned cuisine. From savoring bowls of steaming ramen in Tokyo\'s backstreet alleyways to sampling the delicate flavors of sushi in Tsukiji Fish Market, your taste buds will be treated to a symphony of flavors. Don\'t forget to try the street food delights of Osaka, such as the mouthwatering takoyaki and savory okonomiyaki.\r\nBeyond the cities, Japan\'s natural beauty awaits. In Hiroshima, pay homage to the past at the Peace Memorial Park and Museum, and then take a ferry to the tranquil Miyajima Island to witness the breathtaking sight of Itsukushima Shrine\'s iconic torii gate seemingly floating on the water. In Nara, encounter friendly deer roaming freely in Nara Park and explore the grandeur of Todai-ji, home to the awe-inspiring Great Buddha statue. For those seeking outdoor adventures, Hokkaido is a paradise of untouched wilderness. Hit the slopes in Niseko, renowned for its world-class skiing and snowboarding conditions, or embark on a trek through the stunning landscapes of Daisetsuzan National Park. Unwind in the relaxing hot springs of Noboribetsu and savor fresh seafood from the coastal towns.\r\nIn Kanazawa, discover the artistry and tradition that define Japan. Explore the meticulously manicured Kenrokuen Garden, considered one of the country\'s most beautiful gardens. Immerse yourself in the history of the Nagamachi Samurai District and marvel at the preserved wooden teahouses in the Higashi Chaya District. As your journey through Japan comes to an end, you\'ll be left with cherished memories of vibrant cityscapes, serene temples, magnificent landscapes, and warm hospitality. Whether you\'re a history enthusiast, a nature lover, a foodie, or an admirer of art and culture, Japan promises an immersive travel experience that will leave you captivated and longing to return.', 2),
(42, 'Ignite Your Fitness Journey: Powerful Workouts for Strength and Endurance', '2023-05-21', 'Fitness enthusiasts are always on the lookout for effective workout routines that push their limits and help them achieve their fitness goals. In this workout blog, we will explore a range of exercise routines designed to target different muscle groups and enhance overall strength and endurance. Whether you\'re a beginner just starting your fitness journey or a seasoned athlete looking to switch up your routine, these workouts will provide a challenging and rewarding experience. From full-body workouts to targeted strength training exercises, get ready to sweat, build muscle, and take your fitness to the next level. Let\'s kick things off with a full-body workout that incorporates a combination of strength and cardio exercises. Begin with a dynamic warm-up to get your heart rate up and prepare your muscles for the workout ahead. Move on to compound exercises like squats, lunges, and push-ups, which engage multiple muscle groups simultaneously. Incorporate cardiovascular exercises such as burpees, mountain climbers, or jumping jacks to elevate your heart rate and burn calories. Finish off the workout with core exercises like planks or Russian twists to strengthen your abdominal muscles. This full-body routine will leave you feeling invigorated and accomplished. If you\'re looking to focus on specific muscle groups, we\'ve got you covered. Target your upper body with exercises like bench presses, pull-ups, and shoulder presses to develop strength and definition in your chest, back, and shoulders. For a lower body workout, include exercises like squats, deadlifts, and leg presses to strengthen your glutes, quadriceps, and hamstrings. Don\'t forget about your core! Add in exercises such as bicycle crunches, leg raises, or medicine ball twists to improve stability and build a strong core. By incorporating targeted exercises into your routine, you\'ll be able to sculpt and tone specific areas of your body, helping you achieve a well-rounded physique. Paragraph 1: Fitness enthusiasts are always on the lookout for effective workout routines that push their limits and help them achieve their fitness goals. In this workout blog, we will explore a range of exercise routines designed to target different muscle groups and enhance overall strength and endurance. Whether you\'re a beginner just starting your fitness journey or a seasoned athlete looking to switch up your routine, these workouts will provide a challenging and rewarding experience. From full-body workouts to targeted strength training exercises, get ready to sweat, build muscle, and take your fitness to the next level. Paragraph 2: Let\'s kick things off with a full-body workout that incorporates a combination of strength and cardio exercises. Begin with a dynamic warm-up to get your heart rate up and prepare your muscles for the workout ahead. Move on to compound exercises like squats, lunges, and push-ups, which engage multiple muscle groups simultaneously. Incorporate cardiovascular exercises such as burpees, mountain climbers, or jumping jacks to elevate your heart rate and burn calories. Finish off the workout with core exercises like planks or Russian twists to strengthen your abdominal muscles. This full-body routine will leave you feeling invigorated and accomplished. Paragraph 3: If you\'re looking to focus on specific muscle groups, we\'ve got you covered. Target your upper body with exercises like bench presses, pull-ups, and shoulder presses to develop strength and definition in your chest, back, and shoulders. For a lower body workout, include exercises like squats, deadlifts, and leg presses to strengthen your glutes, quadriceps, and hamstrings. Don\'t forget about your core! Add in exercises such as bicycle crunches, leg raises, or medicine ball twists to improve stability and build a strong core. By incorporating targeted exercises into your routine, you\'ll be able to sculpt and tone specific areas of your body, helping you achieve a well-rounded physique. Remember, consistency is key when it comes to achieving your fitness goals. Stay motivat', 4);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `post_category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`post_category_id`, `post_id`, `category_id`) VALUES
(1, 1, 8),
(2, 2, 7),
(3, 3, 1),
(4, 3, 2),
(5, 3, 4),
(6, 4, 4),
(7, 5, 3),
(8, 5, 1),
(9, 6, 5),
(10, 7, 2),
(11, 7, 1),
(12, 3, 6),
(17, 1, 4),
(18, 11, 3),
(19, 12, 1),
(20, 13, 3),
(21, 14, 7),
(22, 15, 5),
(23, 16, 5),
(24, 17, 3),
(25, 18, 23),
(26, 20, 4),
(27, 20, 1),
(28, 42, 15),
(29, 42, 8),
(30, 42, 19);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_tag_id`, `post_id`, `tag_id`) VALUES
(1, 1, 4),
(2, 1, 7),
(3, 1, 8),
(4, 2, 11),
(5, 2, 4),
(6, 3, 4),
(7, 3, 2),
(8, 3, 10),
(9, 3, 7),
(10, 4, 7),
(11, 4, 2),
(12, 4, 6),
(13, 4, 14),
(14, 5, 3),
(15, 5, 1),
(16, 1, 9),
(17, 1, 10),
(18, 5, 2),
(19, 5, 10),
(20, 6, 1),
(21, 6, 15),
(22, 6, 4),
(23, 7, 10),
(24, 7, 2),
(25, 7, 5),
(26, 11, 13),
(27, 12, 13),
(28, 13, 1),
(29, 14, 2),
(30, 15, 7),
(31, 16, 3),
(32, 17, 13),
(33, 18, 3),
(34, 19, 13),
(35, 20, 11),
(36, 20, 10),
(37, 20, 5),
(38, 20, 2),
(39, 21, 3),
(40, 22, 13),
(41, 23, 3),
(42, 24, 13),
(43, 40, 3),
(44, 41, 9),
(45, 41, 8),
(46, 41, 4),
(47, 42, 9),
(48, 42, 8),
(49, 42, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `tag`) VALUES
(1, 'Portland'),
(2, 'Travel'),
(3, 'Coffee'),
(4, 'LifeStyle'),
(5, 'Journal'),
(6, 'Hiking'),
(7, 'Outdoors'),
(8, 'Health'),
(9, 'Fitness'),
(10, 'Food'),
(11, 'Fashion'),
(13, 'Design'),
(14, 'Nature'),
(15, 'Books');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`post_category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_tag_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `post_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `post_tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
