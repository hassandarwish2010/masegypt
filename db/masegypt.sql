-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2019 at 02:52 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masegypt`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `permalink` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'its for seo',
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'its for seo',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'its for seo',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `en_name`, `ar_name`, `en_details`, `ar_details`, `permalink`, `keywords`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'About us', 'دائمًا اكتشف ما يمك', '<h1>&nbsp;14 years ago two passionate engineers, TAREK MA`AMON and KARIM HOSNY<br />\r\n&nbsp;</h1>\r\n\r\n<h1>decided to take their expertise in the Egyptian market into a whole new level, to<br />\r\nstart a new charismatic, vibrant, and fresh Interior Design house that brings its customers a full set of new creative solutions so we started TK DESIGNS</h1>\r\n\r\n<h1><br />\r\nWe provide a group of Designers and implementers in various related projects that involve turning an interior space into an &quot; the ideal space with The best use of the spaces&quot; we turn your imagination into a real life Through a set of ideas that meet your needs in general.</h1>\r\n\r\n<h1>Interiordesign is a multifaceted profession that includes conceptual development, liaising with the stakeholders of a project and the management and execution of our design.</h1>', '<p>دائمًا اكتشف ما يمكن أن تتميز وتبدع فيه.. اكتشف قدراتك ومهاراتك وإمكانياتك التي وهبك الله إياها. كل إنسان على وجه الأرض لديه قدرات ومهارات تميزه عن غيره، اكتشفها، واعمل على تطويرها.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"teads-adCall\" style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: nassim-semibold; font-size: 18px;\">&nbsp;</div>\r\n\r\n<p>كان الرسام الشهير بابلو بيكاسو يمشي في السوق، فرأته امرأة، فجاءته بقطعة من الورق، وقالت له بسعادة وحماس: &quot;سيد بيكاسو.. إنني من أشد المعجبات بك، فهل يمكن أن ترسم لي شيئًا؟&quot;. فاستجاب لها بسعادة، ورسم لها لوحة سريعة، ثم ابتسم وهو يقدمها لها، وقال: &quot;إن هذه الرسمة ستساوي مليون دولار&quot;. فردت المرأة بدهشة وإثارة: &quot;ولكن سيد بيكاسو، إنك لم تستغرق إلا ٣٠ ثانية لترسم هذه التحفة الفنية الصغيرة&quot;. فضحك وقال: &quot;سيدتي، لقد احتجت إلى ٣٠ عامًا حتى أتمكن من رسم هذه التحفة الفنية الصغيرة&quot;.</p>', 'about-us', 'About,us', '14 years ago two passionate engineers, TAREK MA`AMON and KARIM HOSNY decided to take their expertise in the Egyptian market into a whole new level, to\r\nstart a new charismatic, vibrant, and fresh Interior Design house that brings its customers a full\r\nset of new creative solutions so we started TK DESIGNS\r\nWe provide a group of Designers and implementers in various related projects that involve\r\nturning an interior space into an \" the ideal space with The best use of the spaces\" we turn your\r\nimagination into a real life Through a set of ideas that meet your needs in general. Interior\r\ndesign is a multifaceted profession that includes conceptual development, liaising with the\r\nstakeholders of a project and the management and execution of our design', '3050308131554297042.jpg', '2018-08-12 11:57:46', '2019-05-26 13:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `en_title`, `ar_title`, `en_description`, `ar_description`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Re-Designing your life', 'العنوان', '<h1><span style=\"font-size:72px\"><strong><tt><span style=\"font-family:georgia,serif\">Your Life is you responsibilty but your design is ours&nbsp;</span></tt></strong></span></h1>', '<p>العنوانالعنوان ر</p>', '8440341901557394851.jpg', '2019-03-21 03:06:12', '2019-05-14 12:33:36'),
(4, 'Re-discover your space', 'العنوان', '<h1><span style=\"font-size:72px\"><tt><span style=\"font-family:georgia,serif\">We add new insights into your space so that you can see it differently&nbsp;</span></tt></span></h1>', '<p>العنوانالعنوانالعنوانالعنوانالعنوان</p>', '13018204751557394682.jpg', '2019-03-21 03:17:30', '2019-05-14 12:33:51'),
(5, 'make it worthy life', 'title2 title2title2title2title2title2title2title2title2 title2 title2 title2', '<h1><span style=\"font-family:georgia,serif\"><span style=\"font-size:72px\">Anti-Aged Designs, echos on you Soul for sure.</span></span></h1>', '<p><span style=\"color:rgb(0, 0, 0); font-family:cairo\">كان الرسام الشهير بابلو بيكاسو يمشي في السوق، فرأته امرأة، فجاءته بقطعة من الورق، وقالت له بسعادة وحماس</span></p>', '18498136331557394632.jpg', '2019-03-21 03:23:35', '2019-05-23 11:11:57'),
(6, 'en_title', 'العنوان', 'en_titleen_titleen_titleen_title', 'العنوانالعنوانالعنوان', '19732949321558855586.png', '2019-05-26 07:26:26', '2019-05-26 07:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `en_name`, `ar_name`, `en_details`, `ar_details`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Landscape Design', 'عميل', '<p>Landscape designs are so close to our hearts as we love to give our cleints an outstanding outside spcaces that give their lives a new dimension of beauty.&nbsp;</p>', '<p>عميلعميلعميلعميلعميل</p>', '18945222561553266150.jpg', '2018-08-12 10:37:18', '2019-05-14 13:29:39'),
(2, 'Commercial Design', 'عميل 2', '<p>Your Commercial presence we in be in-shape as long as you keep it trendy, luxurious and smart designed by professionals&nbsp;</p>', '<p>عميلعميلعميلعميلعميلعميلعميلعميل2</p>', '10674337951553265772.jpg', '2018-08-15 08:44:07', '2019-05-14 13:29:54'),
(3, 'Exterior Design', 'عميل 3', '<p>We believe that exterior designs are no less important than&nbsp;interior as it represents your fisrt impression and your image to the outside world&nbsp;</p>', '<p>عميل 3عميلعميلعميلعميلعميل</p>', '10940649861553265425.jpg', '2019-02-26 22:24:47', '2019-05-14 13:30:12'),
(4, 'Interior Designr', 'تصميم كلاسيك', '<p>Interior DesignrInterior DesignrInterior DesignrInterior DesignrInterior DesignrInterior DesignrInterior DesignrInterior DesignrInterior Designr</p>', '<p><span style=\"color:rgb(102, 102, 102); font-family:nassim-semibold; font-size:18px\">كان الرسام الشهير بابلو بيكاسو يمشي في السوق، فرأته امرأة، فجاءته بقطعة من الورق، وقالت له بسعادة وحماس: &quot;سيد بيكاسو.. إنني من أشد المعجبات بك، فهل يمكن أن ترسم لي شيئًا؟&quot;. فاستجاب لها بسعادة، ورسم لها لوحة سريعة، ثم ابتسم وهو يقدمها لها، وقال: &quot;إن هذه الرسمة ستساوي مليون دولار&quot;. فردت المرأة بدهشة وإثارة: &quot;ولكن سيد بيكاسو، إنك لم تستغرق إلا ٣٠ ثانية لترسم هذه التحفة الفنية الصغيرة&quot;. فضحك وقال: &quot;سيدتي، لقد احتجت إلى ٣٠ عامًا حتى أتمكن من رسم هذه التحفة الفنية الصغيرة&quot;.</span></p>', '4358712561558525764.jpg', '2019-05-22 11:49:24', '2019-05-22 11:49:24'),
(5, 'resedintial', 'سكنى', '<p>قررت لجنة السياسة النقدية بالبنك المركزي تثبيت أسعار الفائدة على الإيداع والإقراض لليلة واحدة، خلال اجتماعها اليوم الخميس، عند 15.75%، و16.75% على التوالي.</p>\r\n\r\n<p><span style=\"background-color:#000000\">وجاء قرار اللجنة موافقا لتوقعات المحللين بالإبقاء على أسعار الفائدة دون تغيير، وذلك في ظل وجود العديد من الضغوط التضخمية خلال الفترة المقبلة، بالإضافة إلى تحديات الاقتصاد العالمي مع تصاعد الحرب التجارية بين أمريكا والصين، إلى جانب التوترات السياسية في الشرق الأوسط.</span></p>\r\n\r\n<p>وقال البنك في بيان اليوم، إن المعدل السنوي للتضخم العام والأساسي انخفض إلى 13% و8.1% في أبريل الماضي من 14.2% و8.9% في مارس على الترتيب.</p>\r\n\r\n<p>وأضاف أن الانخفاض جاء مدعوما بالتأثير الإيجابي لفترة الأساس، وانخفاض مساهمة أسعار السلع الغذائية، في حين استقرت مساهمة أسعار السلع غير الغذائية إلى حد كبير.</p>\r\n\r\n<p>وذكر المركزي أن وتيرة كل من نمو الاقتصاد العالمي وتقييد الأوضاع المالية العالمية تباطأت، واستمر التأثير السلبي للتوترات التجارية على آفاق الاقتصاد العالمي.</p>\r\n\r\n<p>وتابع أنه في ذات الوقت استمر ارتفاع الأسعار العالمية للبترول منذ بداية عام 2019، ولا تزال عرضة للتقلبات بسبب المخاطر الإقليمية، بالإضافة إلى عوامل محتملة من جانب العرض، وهو ما يشكل مخاطر على النظرة المستقبلية للتضخم المحلي.</p>', '<p>قررت لجنة السياسة النقدية بالبنك المركزي تثبيت أسعار الفائدة على الإيداع والإقراض لليلة واحدة، خلال اجتماعها اليوم الخميس، عند 15.75%، و16.75% على التوالي.</p>\r\n\r\n<p>وجاء قرار اللجنة موافقا لتوقعات المحللين بالإبقاء على أسعار الفائدة دون تغيير، وذلك في ظل وجود العديد من الضغوط التضخمية خلال الفترة المقبلة، بالإضافة إلى تحديات الاقتصاد العالمي مع تصاعد الحرب التجارية بين أمريكا والصين، إلى جانب التوترات السياسية في الشرق الأوسط.</p>\r\n\r\n<p>وقال البنك في بيان اليوم، إن المعدل السنوي للتضخم العام والأساسي انخفض إلى 13% و8.1% في أبريل الماضي من 14.2% و8.9% في مارس على الترتيب.</p>\r\n\r\n<p>وأضاف أن الانخفاض جاء مدعوما بالتأثير الإيجابي لفترة الأساس، وانخفاض مساهمة أسعار السلع الغذائية، في حين استقرت مساهمة أسعار السلع غير الغذائية إلى حد كبير.</p>\r\n\r\n<p><span style=\"color:#000000\">وذكر المركزي أن وتيرة كل من نمو الاقتصاد العالمي وتقييد الأوضاع المالية العالمية تباطأت، واستمر التأثير السلبي للتوترات التجارية على آفاق الاقتصاد العالمي.</span></p>\r\n\r\n<p>وتابع أنه في ذات الوقت استمر ارتفاع الأسعار العالمية للبترول منذ بداية عام 2019، ولا تزال عرضة للتقلبات بسبب المخاطر الإقليمية، بالإضافة إلى عوامل محتملة من جانب العرض، وهو ما يشكل مخاطر على النظرة المستقبلية للتضخم المحلي.</p>', '9962220381558619469.jpg', '2019-05-23 13:51:09', '2019-05-23 13:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `discovers`
--

CREATE TABLE `discovers` (
  `id` int(11) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ar_title` varchar(255) NOT NULL,
  `ar_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discovers`
--

INSERT INTO `discovers` (`id`, `en_title`, `en_details`, `created_at`, `updated_at`, `ar_title`, `ar_details`) VALUES
(1, 'Interior Expertise', '<p>We are proud to address ourselves as an interior designers by both definition and profession which ensures our clients best in town quality and art-driven designs</p>', '2019-03-10 13:17:51', '2019-05-23 12:34:33', 'العنوان', '<p>عنوان الصورهعنوان الصورهعنوان الصورهعنوان الصورهعنوان الصورهعنوان الصوره</p>'),
(2, 'Media Featured', '<p>Our design work usually got featured in the most prestigious and top notch magazines and media portals</p>', '2019-03-10 13:18:16', '2019-05-23 12:34:19', 'بانر جديد', '<p>عنوان الصورهعنوان الصورهعنوان الصورهعنوان الصورهعنوان الصورهعنوان الصورهعنوان الصوره</p>'),
(3, '24/7 support', '<p>Human beings need to sleep and that`s by nature but as long as we are awake, make sure that we will be there to help you and give you the whole support you need.</p>', '2019-03-10 13:18:34', '2019-05-23 12:34:05', 'العنوان2', '<p>عنوان الصورهعنوان الصورهعنوان الصورهعنوان الصورهعنوان الصورهعنوان الصورهعنوان الصورهعنوان الصوره</p>'),
(4, 'Reasonable Price', '<p>Quality comes with a price and both parties endorse that but with tkdesigns quality comes with very competitive and pay-as-you-grow prices</p>', '2019-03-10 13:18:50', '2019-05-23 12:33:48', 'عنوان الصوره', '<p>عنوان الصورهعنوان الصورهعنوان الصورهعنوان الصورهعنوان الصورهعنوان الصورهعنوان الصورهعنوان الصوره</p>'),
(7, 'Friendly business environment', '<p>We are not that kind of bossy designers , we push our clients to speak, think and dream freely to find the best that fits all<br />\r\n&nbsp;</p>', '2019-03-10 13:20:09', '2019-05-14 10:21:00', 'العنوان', '<p>العنوانالعنوانالعنوانالعنوانالعنوانالعنوانالعنوان</p>');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `en_title` varchar(190) NOT NULL,
  `ar_title` varchar(191) NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `en_title`, `ar_title`, `number`, `created_at`, `updated_at`) VALUES
(1, 'SLICE OF PIZZA', 'arabic5', 800, '2019-03-10 08:02:17', '2019-05-14 13:42:38'),
(3, 'PROJECTS COMPLETE', 'arabic', 300, '2019-03-10 08:02:38', '2019-05-14 13:43:05'),
(4, 'HOURS OF WORKS', 'arabic', 200, '2019-03-10 08:02:46', '2019-05-14 10:14:17'),
(5, 'CUPS OF COFFEE', 'arabic3', 500, '2019-03-10 08:18:03', '2019-05-14 14:04:02'),
(6, 'en_title', 'العنوان', 400, '2019-05-15 17:54:11', '2019-05-15 17:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `en_name`, `ar_name`, `en_details`, `ar_details`, `created_at`, `updated_at`) VALUES
(1, 'New Job', 'وظيفه جديده', '<p>New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;New job details&nbsp;</p>', '<p>تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;تفاصيل وظيفة جديدة&nbsp;</p>', '2018-08-12 11:26:12', '2018-08-12 11:26:12'),
(2, 'We are hiring', 'وظيفة جديده', '<p>We are hiring senior&nbsp;We are hiring senior&nbsp;We are hiring senior&nbsp;We are hiring senior We are hiring senior&nbsp;We are hiring senior&nbsp;We are hiring senior&nbsp;We are hiring senior&nbsp;We are hiring senior&nbsp;We are hiring senior&nbsp;We are hiring senior&nbsp;We are hiring senior&nbsp;We are hiring senior&nbsp;We are hiring senior&nbsp;We are hiring senior&nbsp;We are hiring senior&nbsp;We are hiring senior&nbsp;</p>', '<p>نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور&nbsp;نحن بحاجة الى سينيور نحن بحاجة الى سينيور&nbsp;</p>', '2018-08-15 13:22:20', '2018-08-15 13:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_apply`
--

CREATE TABLE `jobs_apply` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs_apply`
--

INSERT INTO `jobs_apply` (`id`, `name`, `email`, `details`, `cv`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 'Ayman', 'ayman@elmalah.com', 'Hello there', '16754808721534410858.pdf', 1, '2018-08-16 09:14:18', '2018-08-16 09:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'if 0 not seen elseif 1 then its seen elseif 2 replied',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `name`, `email`, `details`, `status`, `created_at`, `updated_at`) VALUES
(28, 'شاورما السورى', 'ayman@elmalah.com', 'dddddd', 0, '2019-03-03 08:53:55', '2019-03-03 08:53:55'),
(29, 'شاورما السورى', 'ayman@elmalah.com', 'ffffffffffffff', 0, '2019-03-03 08:58:01', '2019-03-03 08:58:01'),
(30, 'شاورما السورى', 'admin@admin.com', 'vvvvvdddd', 0, '2019-03-03 08:59:30', '2019-03-03 08:59:30'),
(31, 'test', 'ayman@elmalah.com', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 1, '2019-03-05 16:06:21', '2019-03-05 16:06:21'),
(32, 'integ', 'gregorBlign@gmail.com', 'Ciao! \r\n \r\nWe advance \r\n \r\nSending your message through the Contact us form which can be found on the sites in the contact partition. Feedback forms are filled in by our software and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This technique improve the chances that your message will be read. Mailing is done in the same way as you received this message. \r\nYour  commercial offer will be seen by millions of site administrators and those who have access to the sites! \r\n \r\nThe cost of sending 1 million messages is $ 49 instead of $ 99. (you can select any country or country domain) \r\nAll USA - (10 million messages sent) - $399 instead of $699 \r\nAll Europe (7 million messages sent)- $ 299 instead of $599 \r\nAll sites in the world (25 million messages sent) - $499 instead of $999 \r\n \r\n \r\nDiscounts are valid until April 20. \r\nFeedback and warranty! \r\nDelivery report! \r\nIn the process of sending messages we don\'t break the rules GDRP. \r\n \r\nThis message is automatically generated to use our contacts for communication. \r\n \r\n \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype – FeedbackForm2019 \r\nEmail - FeedbackForm@make-success.com \r\n \r\n \r\nSorry to bother you.', 0, '2019-04-19 02:36:42', '2019-04-19 02:36:42'),
(33, 'contactzfhqvy', 'brady_lunsford04@rambler.ru', 'Good whatever time of day it is where you are! \r\n \r\nWe offer sending newsletters of Your commercial offers via follow-up forms to the sites of business organizations via any countries of the world.  \r\n \r\nhttp://xn----7sbb1bbndheurc1a.xn--p1ai \r\n \r\nYour message is sent to email of business organization hundred % will get to inbox folder! \r\n \r\nTest: \r\n10000 messages on foreign zones to your email - twenty dollars. \r\nWe need from You only email address, title and text of the letter. \r\n \r\nIn our price there are more 800 databases for all domains of the world. \r\nCommon databases: \r\nAll Europe 44 countries 60726150 of domain names - 1100$ \r\nAll European Union 28 countries 56752547 of sites- 1000$ \r\nAll Asia 48 countries 14662004 of sites - 300$ \r\nAll Africa 50 countries 1594390 of domain names - 200$ \r\nAll North and Central America in 35 countries 7441637 of domains - 300$ \r\nAll South America 14 countries 5826884 of domain names - 200$ \r\nNew domain names from around the world registered 24-48 hours ago. (A cycle of 15 mailings during the month) - 500$ \r\nCompanies of the Russian Federation 3012045 - 300$ \r\nUkraine 605745 of sites - 100$ \r\nAll Russian-speaking countries minus Russian Federation are 15 countries and there are 1526797 of sites - 200$ \r\nNew domains of the RF, registered 24-48 hours ago (A cycle of 15 mailings during the month) - 250$ \r\n \r\nDatabases for sending newsletters: \r\nWHOIS databases of domain names for all countries of the world. \r\nYou can purchase our databases separately from newsletter\'s service at the request. \r\n \r\nP/S \r\nPls., do not respond to this commercial offer from your electronic box, as it has been generated automatically and will not get anywhere! \r\nUse the contact form from the site http://xn----7sbb1bbndheurc1a.xn--p1ai \r\n \r\n \r\nPRICE LIST: \r\n \r\nTest mailing: $20 – 10000 contact forms websites \r\n \r\nAll Europe 44 countries there are 60726150 websites – $1100 \r\n \r\nAll EU 28 countries there are 56752547 websites – $1000 \r\n \r\nAll Asia 48 countries there are 14662004 websites – $500 \r\n \r\nAll Africa 50 countries there are 1594390 websites – $200 \r\n \r\nAll North and Central America is 35 countries there are 7441637 websites – $300 \r\n \r\nAll South America 14 countries there are 5826884 websites – $200 \r\n \r\nTop 1 Million World’s Best websites – $100 \r\n \r\nTop 16821856 the most visited websites in the world – $200 \r\n \r\nBusinesses and organizations of the Russian Federation – there are 3012045 websites – $300 \r\n \r\nUkraine 605745 websites – $100 \r\n \r\nAll Russian-speaking countries minus Russia – there are 15 countries and 1526797 websites – $200 \r\n \r\n1499203 of hosting websites around the world (there are selections for all countries, are excluded from databases for mailings) – $200 \r\n \r\n35439 websites of public authorities of all countries of the world (selections for all countries, are excluded from databases for mailings) – $100 \r\n \r\nCMS mailings: \r\nAmiro 2294 websites $50 \r\nBitrix 175513 websites $80 \r\nConcrete5 49721 websites $50 \r\nCONTENIDO 7769 websites $50 \r\nCubeCart 1562 websites $50 \r\nDatalife Engine 29220 websites $50 \r\nDiscuz 70252 websites $50 \r\nDotnetnuke 31114 websites $50 \r\nDrupal 802121 websites $100 \r\nHostCMS 6342 websites $50 \r\nInstantCMS 4936 websites $50 \r\nInvision Power Board 510 websites $50 \r\nJoomla 1906994 websites $200 \r\nLiferay 5937 websites $50 \r\nMagento 269488 websites $80 \r\nMODx 67023 websites $50 \r\nMovable Type 13523 websites $50 \r\nNetCat 6936 websites $50 \r\nNopCommerce 5313 websites $50 \r\nOpenCart 321057 websites $80 \r\nosCommerce 65468 websites $50 \r\nphpBB 3582 websites $50 \r\nPrestashop 92949 websites $50 \r\nShopify 365755 websites $80 \r\nSimpla 8963 websites $50 \r\nSitefinity 4883 websites $50 \r\nTYPO3 227167 websites $80 \r\nUMI.CMS 15943 websites $50 \r\nvBulletin 154677 websites $80 \r\nWix 2305768 websites $230 \r\nWordPress 14467405 websites $450 \r\nWooCommerce 2097367 websites $210 \r\n \r\n.com 133766112 websites commercial – $1950 \r\n.biz 2361884 websites business – $150 \r\n.info 6216929 websites information – $250 \r\n.net 15689222 websites network – $450 \r\n.org 10922428 websites organization – $350 \r\n \r\n.abogado 279 websites – $50 \r\n.ac 16799 websites – $50 \r\n.academy 27306 websites – $50 \r\n.accountant 96542 websites – $50 \r\n.actor 1928 websites – $50 \r\n.ad 414 websites – $50 \r\n.adult 10540 websites- $50 \r\n.ae 1821 websites International zone UAE:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ae 199533 websites UAE – $50 \r\n.aero 18325 websites- $50 \r\n.af 3315 websites – $50 \r\n.africa 15056 websites- $50 \r\n.ag 10339 websites – $50 \r\n.agency 47508 websites – $50 \r\n.ai 17199 websites – $50 \r\n.airforce 560 websites – $50 \r\n.al 6078 websites – $50 \r\n.alsace 1982 websites – $50 \r\n.am 17987 websites Armenia – $50 \r\n.am 1684 websites International zone Armenia:.com.net.biz.info.org.name.tel.mobi.asia \r\n.amsterdam 28141 websites Amsterdam, Kingdom of the Netherlands – $50 \r\n.ao 518 websites – $50 \r\n.apartments 3758 websites – $50 \r\n.ar 551804 websites Argentina – $80 \r\n.ar 64008 websites International zone Argentina:.com .net .biz .info .name .tel .mobi .asia – $50 \r\n.archi 2084 websites – $50 \r\n.army 1842 websites – $50 \r\n.art 26402 websites – $50 \r\n.as 10025 websites – $50 \r\n.asia 228418 websites – $80 \r\n.associates 3340 websites – $50 \r\n.at 1356722 websites Austria – $100 \r\n.at 181907 websites International zone Austria :.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.attorney 8224 websites- $50 \r\n.attorney 7204 websites – $50 \r\n.au 2243263 websites Australia – $150 \r\n.au 461279 websites International zone Australia:.com.net.biz.info.org.name.tel.mobi.asia-$80 \r\n.auction 3625 websites- $50 \r\n.audio 23052 websites- $50 \r\n.auto 400 websites- $50 \r\n.aw 235 websites- $50 \r\n.az 11104 websites Azerbaijan – $50 \r\n.az 2036 websites International zone Azerbaijan:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ba 7012 websites – $50 \r\n.ba 2291 websites International zone Bosnia and Herzegovina:.com.net.biz.info.org.name.tel.mobi.asia \r\n.band 11515 websites – $50 \r\n.bank 1621 websites- $50 \r\n.bar 5506 websites – $50 \r\n.barcelona 7919 websites – $50 \r\n.bargains 2997 websites- $50 \r\n.bayern 32565 websites – $50 \r\n.bb 2277 websites – $50 \r\n.be 1349658 websites Belgium – $100 \r\n.be 184810 websites International zone Belgium:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.beer 11834 websites- $50 \r\n.berlin 58088 websites Berlin – $50 \r\n.best 2912 websites – $50 \r\n.bet 17637 websites – $50 \r\n.bf 238 websites – $50 \r\n.bg 33252 websites Bulgaria – $50 \r\n.bg 50685 websites International zone Bulgaria:.com.net.biz.info.org.name.tel.mobi.asia \r\n.bh 453 websites – $50 \r\n.bi 2328 websites Burundi- $50 \r\n.bible 1160 websites – $50 \r\n.bid 474509 websites – $80 \r\n.bike 15729 websites – $50 \r\n.bingo 1332 websites – $50 \r\n.bio 15531 websites- $50 \r\n.bj 147 websites- $50 \r\n.black 6582 websites – $50 \r\n.blackfriday 12106 websites – $50 \r\n.blog 145463 websites – $50 \r\n.blue 16852 websites – $50 \r\n.bm 8089 websites Bermuda – $50 \r\n.bo 2302 websites- $50 \r\n.boats 266 websites- $50 \r\n.boston 21762 websites- $50 \r\n.boutique 8834 websites – $50 \r\n.br 2367290 websites Brazil – $150 \r\n.br 933750 websites International zone Brazil:.com.net.biz.info.org.name.tel.mobi.asia-$100 \r\n.bradesco 129 websites- $50 \r\n.broadway 261 websites- $50 \r\n.broker 660 websites- $50 \r\n.brussels 7181 websites – $50 \r\n.bs 330 websites- $50 \r\n.bt 284 websites- $50 \r\n.build 3857 websites- $50 \r\n.builders 3906 websites- $50 \r\n.business 35168 websites – $50 \r\n.buzz 11257 websites – $50 \r\n.bw 656 websites – $50 \r\n.by 1574 websites International zone Belarus:.com.net.biz.info.org.name.tel.mobi.asia \r\n.by 92679 websites Belarus – $50 \r\n.bz 7751 websites – $50 \r\n.bzh 5403 websites – $50 \r\n.ca 2587463 websites Canada – $150 \r\n.ca 288395 websites International zone Canada:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.cab 3223 websites – $50 \r\n.cafe 13606 websites – $50 \r\n.cam 5156 websites – $50 \r\n.camera 5236 websites – $50 \r\n.camp 6315 websites – $50 \r\n.capetown 4750 websites – $50 \r\n.capital 11387 websites – $50 \r\n.car 342 websites – $50 \r\n.cards 5992 websites – $50 \r\n.care 18204 websites – $50 \r\n.career 1217 websites – $50 \r\n.careers 7055 websites – $50 \r\n.cars 309 websites – $50 \r\n.casa 18918 websites – $50 \r\n.cash 13193 websites – $50 \r\n.casino 4354 websites – $50 \r\n.cat 108569 websites – $50 \r\n.catering 3482 websites – $50 \r\n.cc 1920589 websites Cocos Keeling Islands- $150 \r\n.cd 5365 websites – $50 \r\n.center 35353 websites – $50 \r\n.ceo 2458 websites – $50 \r\n.cf 476142 websites Central African Republic – $50 \r\n.cg 166 – $50 \r\n.ch 1471685 websites Switzerland – $100 \r\n.ch 205292 websites International zone Switzerland:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.chat 11126 websites – $50 \r\n.cheap 3267 websites – $50 \r\n.christmas 15255 websites – $50 \r\n.church 21104 websites – $50 \r\n.ci 112 websites International zone Cote d’Ivoire:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ci 5663 websites Cote d’Ivoire- $50 \r\n.city 46171 websites – $50 \r\n.cl 498401 websites Chile – $80 \r\n.claims 2374 websites – $50 \r\n.cleaning 2385 websites – $50 \r\n.click 181015 websites – $50 \r\n.clinic 7006 websites – $50 \r\n.clothing 13639 websites – $50 \r\n.cloud 134113 websites – $50 \r\n.club 1045323 websites – $100 \r\n.cm 12001 websites Cameroon- $50 \r\n.cn 1372416 websites International zone China:.com.net.biz.info.org.name.tel.mobi.asia-$100 \r\n.cn 7264587 websites China – $300 \r\n.co 1778923 websites Colombia – $150 \r\n.coach 12002 websites- $50 \r\n.codes 6844 websites – $50 \r\n.coffee 17257 websites – $50 \r\n.cologne 5137 websites – $50 \r\n.cologne 5198 websites – $50 \r\n.com.ar 657716 websites Argentina – $80 \r\n.com.br 942898 websites Brazil – $100 \r\n.com.cy 11153 websites Cyprus – $50 \r\n.com.ni 23747 websites – $50 \r\n.com.np 38828 websites – $50 \r\n.com.ru, .net.ru, .org.ru, .spb.ru, .msk.ru 79058 websites Russia – $50 \r\n.community 13013 websites – $50 \r\n.company 61217 websites – $50 \r\n.computer 5039 websites – $50 \r\n.condos 2192 websites – $50 \r\n.construction 6804 websites – $50 \r\n.consulting 22128 websites – $50 \r\n.contractors 3982 websites – $50 \r\n.cooking 1476 websites – $50 \r\n.cool 16008 websites – $50 \r\n.coop 7879 websites – $50 \r\n.corsica 1042 websites – $50 \r\n.country 7144 websites – $50 \r\n.cr 7934 websites – $50 \r\n.credit 4020 websites – $50 \r\n.creditcard 825 websites – $50 \r\n.creditunion 511 websites – $50 \r\n.cricket 33413 websites – $50 \r\n.cruises 2234 websites – $50 \r\n.cu 137 websites – $50 \r\n.cv 1879 websites – $50 \r\n.cx 15753 websites – $50 \r\n.cy 11092 websites Cyprus – $50 \r\n.cy 710 websites International zone Cyprus:.com.net.biz.info.org.name.tel.mobi.asia \r\n.cymru 7114 websites – $50 \r\n.cz 193400 websites International zone Czech Republic:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.cz 930208 websites Czech Republic – $80 \r\n.dance 6290 websites – $50 \r\n.date 123037 websites – $50 \r\n.dating 2892 websites – $50 \r\n.de 15078512 websites Germany – $450 \r\n.de 3894156 websites International zone Germany:.com.net.biz.info.org.name.tel.mobi.asia-$200 \r\n.deals 8132 websites – $50 \r\n.degree 2178 websites – $50 \r\n.delivery 4782 websites – $50 \r\n.democrat 1072 websites – $50 \r\n.dental 7541 websites – $50 \r\n.dentist 3046 websites – $50 \r\n.desi 2647 websites – $50 \r\n.design 71711 websites – $50 \r\n.diamonds 2730 websites – $50 \r\n.diet 18291 websites – $50 \r\n.digital 31449 websites – $50 \r\n.direct 10629 websites – $50 \r\n.directory 18157 websites – $50 \r\n.discount 3898 websites – $50 \r\n.dj 7280 websites – $50 \r\n.dk 1320155 websites Denmark – $100 \r\n.dk 148164 websites International zone Denmark:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.dm 23318 websites – $50 \r\n.do 5255 websites Dominican Republic- $50 \r\n.dog 10030 websites – $50 \r\n.domains 6553 websites – $50 \r\n.download 129223 websites – $50 \r\n.durban 2247 websites – $50 \r\n.dz 982 websites – $50 \r\n.earth 8139 websites – $50 \r\n.ec 11731 websites – $50 \r\n.edu 4445 websites – $50 \r\n.edu.np 4883 websites- $50 \r\n.education 22003 websites – $50 \r\n.ee 10490 websites International zone Estonia:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ee 119701 websites Estonia- $50 \r\n.eg 1699 websites – $50 \r\n.email 77321 websites – $50 \r\n.energy 9769 websites – $50 \r\n.engineer 2785 websites – $50 \r\n.engineering 5533 websites – $50 \r\n.enterprises 6153 websites – $50 \r\n.equipment 5760 websites – $50 \r\n.es 1685048 websites Spain – $100 \r\n.es 541916 websites International zone Spain:.com.net.biz.info.org.name.tel.mobi.asia-$80 \r\n.estate 9185 websites – $50 \r\n.et 124 websites – $50 \r\n.eu 3321576 websites Europe – $150 \r\n.eu 633384 websites International zone Europe:.com.net.biz.info.org.name.tel.mobi.asia-$80 \r\n.eus 8116 websites – $50 \r\n.events 22115 websites – $50 \r\n.exchange 9432 websites – $50 \r\n.expert 31240 websites – $50 \r\n.exposed 3147 websites – $50 \r\n.express 6919 websites – $50 \r\n.fail 3322 websites – $50 \r\n.faith 54195 websites – $50 \r\n.family 15577 websites – $50 \r\n.fans 1388 websites – $50 \r\n.farm 13499 websites – $50 \r\n.fashion 12475 websites – $50 \r\n.feedback 2301 websites – $50 \r\n.fi 178337 websites Finland – $50 \r\n.fi 69631 websites International zone Finland:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.film 3601 websites – $50 \r\n.finance 7982 websites – $50 \r\n.financial 4086 websites – $50 \r\n.fish 4162 websites – $50 \r\n.fishing 1423 websites – $50 \r\n.fit 17007 websites – $50 \r\n.fitness 9689 websites – $50 \r\n.flights 2119 websites – $50 \r\n.florist 2286 websites – $50 \r\n.flowers 25590 websites – $50 \r\n.fm 5407 websites – $50 \r\n.fo 3098 websites- $50 \r\n.football 4877 websites – $50 \r\n.forex 212 websites – $50 \r\n.forsale 7118 websites – $50 \r\n.foundation 10118 websites – $50 \r\n.fr 2391045 websites France – $150 \r\n.fr 639546 websites International zone France:.com.net.biz.info.org.name.tel.mobi.asia-$80 \r\n.frl 14028 websites – $50 \r\n.fun 86419 websites – $50 \r\n.fund 11205 websites – $50 \r\n.furniture 2246 websites – $50 \r\n.futbol 2783 websites – $50 \r\n.fyi 9772 websites – $50 \r\n.ga 12048 websites Gabon – $50 \r\n.gal 4606 websites – $50 \r\n.gallery 17263 websites – $50 \r\n.game 1996 websites – $50 \r\n.games 13234 websites – $50 \r\n.garden 914 websites – $50 \r\n.gd 4238 websites – $50 \r\n.ge 1676 websites International zone Georgia:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ge 17361 websites Georgia – $50 \r\n.gent 3389 websites – $50 \r\n.gf 121 websites – $50 \r\n.gg 9443 websites – $50 \r\n.gh 693 websites – $50 \r\n.gi 1063 websites – $50 \r\n.gift 6281 websites – $50 \r\n.gifts 3757 websites – $50 \r\n.gives 1563 websites – $50 \r\n.gl 3575 websites – $50 \r\n.glass 3539 websites – $50 \r\n.global 38972 websites – $50 \r\n.gm 468 websites – $50 \r\n.gmbh 19186 websites – $50 \r\n.gold 9081 websites – $50 \r\n.golf 8319 websites – $50 \r\n.gop 1341 websites – $50 \r\n.gov 4525 websites – $50 \r\n.gov.np 1937 websites- $50 \r\n.gp 416 websites – $50 \r\n.gq 23306 websites – $50 \r\n.gr 356168 websites Greece – $80 \r\n.gr 57984 websites International zone Greece:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.graphics 7155 websites – $50 \r\n.gratis 4283 websites – $50 \r\n.green 3661 websites – $50 \r\n.gripe 1075 websites – $50 \r\n.group 54983 websites – $50 \r\n.gs 5108 websites – $50 \r\n.gt 15351 websites – $50 \r\n.guide 16044 websites – $50 \r\n.guitars 1278 websites – $50 \r\n.guru 60588 websites – $50 \r\n.gy 2447 websites – $50 \r\n.hamburg 23885 websites – $50 \r\n.haus 5186 websites – $50 \r\n.health 6211 websites – $50 \r\n.healthcare 8051 websites – $50 \r\n.help 13500 websites – $50 \r\n.hiphop 1064 websites – $50 \r\n.hiv 331 websites – $50 \r\n.hk 116093 websites – $50 \r\n.hm 249 websites – $50 \r\n.hn 4732 websites – $50 \r\n.hockey 1102 websites – $50 \r\n.holdings 5412 websites – $50 \r\n.holiday 5017 websites – $50 \r\n.homes 432 websites – $50 \r\n.horse 2116 websites – $50 \r\n.host 31309 websites – $50 \r\n.hosting 4132 websites – $50 \r\n.house 18096 websites – $50 \r\n.how 1957 websites – $50 \r\n.hr 16592 websites International zone Croatia:.com.net.biz.info.org.name.tel.mobi.asia \r\n.hr 43565 websites Croatia – $50 \r\n.ht 2559 websites – $50 \r\n.hu 53940 websites International zone Hungary:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.hu 618532 websites Hungary – $80 \r\n.id 37212 websites – $50 \r\n.ie 195987 websites Ireland – $50 \r\n.ie 49861 websites International zone Ireland:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.il 224167 websites Israel – $80 \r\n.il 38537 websites International zone Israel:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.im 20701 websites – $50 \r\n.immo 16009 websites – $50 \r\n.immobilien 7094 websites – $50 \r\n.in 1143482 websites India – $100 \r\n.in 266179 websites International zone India:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.industries 3749 websites – $50 \r\n.ink 27117 websites – $50 \r\n.institute 10134 websites – $50 \r\n.insure 4615 websites – $50 \r\n.int 191 websites – $50 \r\n.international 23930 websites – $50 \r\n.investments 4113 websites – $50 \r\n.io 314287 websites British Indian Ocean – $50 \r\n.iq 1118 websites – $50 \r\n.ir 15487 websites International zone Iran:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ir 427735 websites Iran- $80 \r\n.irish 3326 websites – $50 \r\n.is 31176 websites Iceland – $50 \r\n.ist 10060 websites – $50 \r\n.istanbul 13139 websites – $50 \r\n.it 2258105 websites Italy – $200 \r\n.it 954040 websites International zone Italy:.com.net.biz.info.org.name.tel.mobi.asia-$100 \r\n.je 2716 websites – $50 \r\n.jetzt 11118 websites – $50 \r\n.jetzt 11704 websites – $50 \r\n.jewelry 3350 websites – $50 \r\n.jo 555 websites – $50 \r\n.jobs 46350 websites- $50 \r\n.joburg 3139 websites – $50 \r\n.jp 1146243 websites Japan – $100 \r\n.juegos 844 websites – $50 \r\n.kaufen 7134 websites – $50 \r\n.kg 664 websites International zone Kyrgyzstan:.com.net.biz.info.org.name.tel.mobi.asia \r\n.kg 8919 websites Kyrgyzstan – $50 \r\n.ki 1146 websites – $50 \r\n.kim 16637 websites- $50 \r\n.kitchen 6581 websites – $50 \r\n.kiwi 19426 websites – $50 \r\n.kn 1271 websites – $50 \r\n.koeln 23489 websites – $50 \r\n.kr 254447 websites Korea- $50 \r\n.krd 375 websites – $50 \r\n.kred 6120 websites – $50 \r\n.kw 423 websites – $50 \r\n.ky 1201 websites – $50 \r\n.kyoto 659 websites – $50 \r\n.kz 112459 websites Kazakhstan – $50 \r\n.kz 5876 websites International zone Kazakhstan:.com.net.biz.info.org.name.tel.mobi.asia \r\n.la 32189 websites Laos – $50 \r\n.land 14474 websites- $50 \r\n.lat 2971 websites – $50 \r\n.law 11842 websites – $50 \r\n.lawyer 11600 websites- $50 \r\n.lc 651 websites- $50 \r\n.lease 1855 websites- $50 \r\n.leclerc 127 websites- $50 \r\n.legal 11047 websites- $50 \r\n.lgbt 2249 websites- $50 \r\n.li 12044 websites – $50 \r\n.life 170053 websites – $50 \r\n.lighting 6096 websites – $50 \r\n.limited 5365 websites – $50 \r\n.limo 2409 websites- $50 \r\n.link 133123 websites – $50 \r\n.live 160896 websites – $50 \r\n.lk 6601 websites – $50 \r\n.loan 1932173 websites- $200 \r\n.loans 3914 websites – $50 \r\n.lol 7470 websites- $50 \r\n.london 82443 websites London, United Kingdom- $50 \r\n.love 22287 websites- $50 \r\n.lt 27710 websites International zone Lithuania:.com.net.biz.info.org.name.tel.mobi.asia \r\n.lt 89073 websites Lithuania- $50 \r\n.ltd 329225 websites – $50 \r\n.lu 43052 websites Luxembourg – $50 \r\n.lu 4125 websites International zone Luxembourg:.com.net.biz.info.org.name.tel.mobi.asia \r\n.luxury 905 websites – $50 \r\n.lv 61886 websites Latvia- $50 \r\n.lv 8887 websites International zone Latvia:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ly 8013 websites – $50 \r\n.ma 51862 websites Morocco – $50 \r\n.maison 1123 websites – $50 \r\n.management 10088 websites- $50 \r\n.market 22167 websites- $50 \r\n.marketing 18262 websites- $50 \r\n.markets 816 websites- $50 \r\n.mba 3023 websites- $50 \r\n.mc 3036 websites Monaco – $50 \r\n.md 15435 websites Moldova – $50 \r\n.md 1293 websites International zone Moldova:.com.net.biz.info.org.name.tel.mobi.asia \r\n.me 761596 websites Montenegro – $80 \r\n.me 86897 websites International zone Montenegro:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.media 40573 websites – $50 \r\n.melbourne 10041 websites – $50 \r\n.memorial 512 websites – $50 \r\n.men 470140 websites – $80 \r\n.menu 5512 websites restaurants- $50 \r\n.mg 3380 websites Madagascar- $50 \r\n.miami 14431 websites Miami, USA – $50 \r\n.mk 12704 websites – $50 \r\n.ml 70170 websites – $50 \r\n.mma 1706 websites – $50 \r\n.mn 16710 websites – $50 \r\n.mo 573 websites – $50 \r\n.mobi 462419 websites- $80 \r\n.moda 3015 websites – $50 \r\n.moe 7709 websites – $50 \r\n.mom 3145 websites – $50 \r\n.money 9731 websites – $50 \r\n.mortgage 3126 websites – $50 \r\n.moscow 22097 websites Moscow Russian Federation- $50 \r\n.movie 2575 websites – $50 \r\n.mr 1725 websites – $50 \r\n.ms 7565 websites – $50 \r\n.mt 1623 websites Malta – $50 \r\n.mu 6175 websites – $50 \r\n.museum 34464 websites – $50 \r\n.mv 1907 websites – $50 \r\n.mw 8579 websites Malawi – $50 \r\n.mx 609278 websites Mexico- $80 \r\n.mx 86593 websites International zone Mexico:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.my 283349 websites Malaysia- $80 \r\n.mz 263 websites – $50 \r\n.na 781 websites – $50 \r\n.nagoya 7807 websites – $50 \r\n.name 135818 websites- $50 \r\n.navy 698 websites – $50 \r\n.nc 1240 websites – $50 \r\n.network 40018 websites – $50 \r\n.news 65546 websites – $50 \r\n.ng 16608 websites – $50 \r\n.ngo 3422 websites – $50 \r\n.ninja 49007 websites – $50 \r\n.nl 1019697 websites International zone Netherlands:.com.net.biz.info.org.name.tel.mobi.asia-$100 \r\n.nl 3566172 websites Netherlands – $200 \r\n.no 579185 websites Norway – $80 \r\n.no 74318 websites International zone Norway:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.nra 144 websites – $50 \r\n.nrw 18487 websites – $50 \r\n.nu 489605 websites Niue- $50 \r\n.nyc 67153 websites – $50 \r\n.nz 576127 websites New Zealand – $80 \r\n.om 1603 websites – $50 \r\n.one 63063 websites – $50 \r\n.ong 3422 websites – $50 \r\n.onl 3790 websites – $50 \r\n.online 695007 websites – $50 \r\n.ooo 6400 websites – $50 \r\n.org.np 7082 websites – $50 \r\n.org.ua 41362 websites – $50 \r\n.organic 1633 websites – $50 \r\n.osaka 628 websites – $50 \r\n.ovh 50056 websites – $50 \r\n.pa 1558 websites – $50 \r\n.paris 19283 websites – $50 \r\n.partners 6576 websites – $50 \r\n.parts 5514 websites – $50 \r\n.party 115578 websites- $50 \r\n.pe 59157 websites International zone Peru:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.pe 69367 websites Peru – $50 \r\n.pet 8487 websites – $50 \r\n.pf 349 websites – $50 \r\n.pg 1979 websites Papua – $50 \r\n.ph 17940 websites Philippines – $50 \r\n.photo 17165 websites- $50 \r\n.photography 50434 websites- $50 \r\n.photos 19107 websites- $50 \r\n.physio 1160 websites- $50 \r\n.pics 7659 websites- $50 \r\n.pictures 7807 websites- $50 \r\n.pink 6373 websites- $50 \r\n.pizza 5949 websites – $50 \r\n.pk 44464 websites Pakistan – $50 \r\n.pl 1675325 websites Poland – $100 \r\n.pl 327587 websites International zone Poland:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.place 7002 websites – $50 \r\n.plumbing 3005 websites – $50 \r\n.plus 9892 websites – $50 \r\n.pm 4401 websites – $50 \r\n.poker 3209 websites – $50 \r\n.porn 10023 websites- $50 \r\n.post 3481 websites – $50 \r\n.pr 18419 websites – $50 \r\n.press 35032 websites – $50 \r\n.pro 280776 websites – $50 \r\n.productions 6144 websites – $50 \r\n.promo 5020 websites – $50 \r\n.properties 14144 websites – $50 \r\n.property 4366 websites – $50 \r\n.ps 2050 websites – $50 \r\n.pt 17691 websites International zone Portugal:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.pt 225136 websites Portugal – $80 \r\n.pub 16703 websites – $50 \r\n.pw 16206 websites – $50 \r\n.py 4635 websites – $50 \r\n.qa 8503 websites – $50 \r\n.quebec 8042 websites – $50 \r\n.racing 55001 websites – $50 \r\n.re 11082 websites – $50 \r\n.realtor 39465 websites – $50 \r\n.realty 55291 websites – $50 \r\n.recipes 3251 websites – $50 \r\n.red 25701 websites – $50 \r\n.rehab 1816 websites – $50 \r\n.reise 4146 websites – $50 \r\n.reisen 9228 websites – $50 \r\n.reit 126 websites – $50 \r\n.ren 108303 websites – $50 \r\n.rent 3788 websites – $50 \r\n.rentals 11823 websites- $50 \r\n.repair 6628 websites- $50 \r\n.report 5869 websites – $50 \r\n.republican 952 websites – $50 \r\n.rest 1894 websites – $50 \r\n.restaurant 7703 websites – $50 \r\n.review 229514 websites – $80 \r\n.reviews 16132 websites- $50 \r\n.rio 1062 websites- $50 \r\n.rip 3199 websites- $50 \r\n.ro 42046 websites International zone Romania:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.ro 483266 websites Romania – $80 \r\n.rocks 81108 websites – $50 \r\n.rs 75503 websites Serbia – $50 \r\n.ru 5292104 websites Russian- $250 \r\n.ru 514668 websites International zone Russian:.com.net.biz.info.org.name.tel.mobi.asia -$80 \r\n.ru.com 6499 websites Russia – $50 \r\n.ruhr 9887 websites – $50 \r\n.run 10622 websites – $50 \r\n.rw 244 websites – $50 \r\n.sa 5064 websites International zone Saudi Arabia:.com.net.biz.info.org.name.tel.mobi.asia \r\n.sa 11604 websites Saudi Arabia- $50 \r\n.saarland 3825 websites – $50 \r\n.sale 35407 websites – $50 \r\n.salon 1782 websites – $50 \r\n.sarl 939 websites – $50 \r\n.sc 4942 websites Seychelles- $50 \r\n.school 11672 websites – $50 \r\n.schule 4678 websites – $50 \r\n.science 74115 websites – $80 \r\n.scot 11175 websites – $50 \r\n.sd 619 websites – $50 \r\n.se 293316 websites International zone Sweden:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.se 1799365 websites Sweden – $150 \r\n.seat 618 websites – $50 \r\n.security 255 websites – $50 \r\n.services 52098 websites – $50 \r\n.sex 7655 websites – $50 \r\n.sexy 18260 websites – $50 \r\n.sg 164351 websites Republic Of Singapore – $50 \r\n.sh 9408 websites – $50 \r\n.shiksha 1626 websites – $50 \r\n.shoes 5007 websites – $50 \r\n.shop 402139 websites – $80 \r\n.shopping 6297 websites – $50 \r\n.show 6946 websites – $50 \r\n.si 12879 websites International zone Slovenia:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.si 39749 websites Slovenia- $50 \r\n.singles 3559 websites – $50 \r\n.site 384414 websites – $80 \r\n.sk 31572 websites International zone Slovakia:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.sk 347101 websites Slovakia- $80 \r\n.ski 5071 websites – $50 \r\n.sl 418 websites – $50 \r\n.sm 2009 websites – $50 \r\n.sn 344 websites International zone Senegal:.com.net.biz.info.org.name.tel.mobi.asia \r\n.sn 4954 websites Senegal – $50 \r\n.so 9003 websites – $50 \r\n.soccer 2833 websites – $50 \r\n.social 19134 websites – $50 \r\n.software 13001 websites – $50 \r\n.solar 7095 websites – $50 \r\n.solutions 81282 websites – $50 \r\n.soy 1200 websites – $50 \r\n.space 220771 websites – $80 \r\n.sr 638 – $50 \r\n.srl 4391 – $50 \r\n.st 7683 websites – $50 \r\n.storage 623 – $50 \r\n.store 167141 websites – $50 \r\n.stream 239795 websites – $80 \r\n.studio 39132 websites – $50 \r\n.study 5132 websites – $50 \r\n.style 9248 websites – $50 \r\n.su 125358 websites Russian- $50 \r\n.sucks 7629 websites – $50 \r\n.supplies 3082 websites – $50 \r\n.supply 4580 websites – $50 \r\n.support 20377 websites – $50 \r\n.surf 2573 websites – $50 \r\n.surgery 1778 websites – $50 \r\n.sv 8132 websites Salvador- $50 \r\n.swiss 17323 websites – $50 \r\n.sx 3240 websites – $50 \r\n.sy 2063 websites – $50 \r\n.sydney 10073 websites – $50 \r\n.systems 26094 websites – $50 \r\n.sz 194 websites – $50 \r\n.taipei 5664 websites – $50 \r\n.tattoo 2004 websites- $50 \r\n.tax 5788 websites – $50 \r\n.taxi 5784 websites – $50 \r\n.tc 16384 websites Turks and Caicos Islands- $50 \r\n.team 18421 websites- $50 \r\n.tech 196321 websites – $50 \r\n.technology 40181 websites- $50 \r\n.tel 80752 websites- $50 \r\n.tennis 1494 websites – $50 \r\n.tf 2049 websites – $50 \r\n.tg 521 websites – $50 \r\n.th 23968 websites Kingdom Of Thailand- $50 \r\n.theater 1053 websites – $50 \r\n.tickets 1141 websites – $50 \r\n.tienda 2951 websites – $50 \r\n.tips 31287 websites- $50 \r\n.tires 960 websites – $50 \r\n.tirol 5412 websites – $50 \r\n.tj 34 websites International zone Tajikistan:.com.net.biz.info.org.name.tel.mobi.asia \r\n.tj 6804 websites Tajikistan- $50 \r\n.tk 12799253 websites Tokelau – $450 \r\n.tl 2728 websites – $50 \r\n.tm 6056 websites Turkmenistan- $50 \r\n.tm 44 websites International zone Turkmenistan:.com.net.biz.info.org.name.tel.mobi.asia \r\n.tn 27383 websites – $50 \r\n.to 16987 websites Tonga- $50 \r\n.today 98034 websites – $50 \r\n.tokyo 90132 websites – $50 \r\n.tools 10439 websites – $50 \r\n.top 2140480 websites – $200 \r\n.tours 9151 websites – $50 \r\n.town 3328 websites – $50 \r\n.toys 4391 websites – $50 \r\n.tr 138818 International zone Turkey:.com.net.biz.info.org.name.tel.mobi.asia -$50 \r\n.tr 317690 websites Turkey – $80 \r\n.trade 151130 websites – $50 \r\n.trading 896 websites – $50 \r\n.training 18192 websites – $50 \r\n.travel 18054 websites – $50 \r\n.tt 516 websites – $50 \r\n.tube 2104 websites – $50 \r\n.tv 559502 websites Tuvalu – $80 \r\n.tw 243062 websites Taiwan – $50 \r\n.tz 1874 websites – $50 \r\n.ua 117701 websites International zone Ukraine:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.ua 553216 websites Ukraina – $80 \r\n.ug 2331 websites Ukraina \r\n.uk 3304606 websites International zone United Kingdom:.com.net.biz.info.org.name.tel.mobi.asia-$150 \r\n.uk 5496382 websites United Kingdom – $250 \r\n.university 5799 websites – $50 \r\n.uno 16394 websites – $50 \r\n.us 3139563 websites USA – $200 \r\n.us 578927 websites International zone USA:.com.net.biz.info.org.name.tel.mobi.asia-$80 \r\n.uy 14683 websites Uruguay – $50 \r\n.uz 365 websites International zone Uzbekistan:.com.net.biz.info.org.name.tel.mobi.asia \r\n.uz 14689 websites Uzbekistan – $50 \r\n.vacations 3926 websites – $50 \r\n.vc 16606 websites – $50 \r\n.ve 14015 websites Venezuela – $50 \r\n.vegas 18008 websites Las Vegas NV United States of America – $50 \r\n.ventures 10066 websites – $50 \r\n.versicherung 2009 websites – $50 \r\n.vet 5760 websites – $50 \r\n.vg 8389 site – $50 \r\n.viajes 2512 site – $50 \r\n.video 16204 websites- $50 \r\n.villas 1940 site – $50 \r\n.vin 5094 websites – $50 \r\n.vip 755289 websites – $80 \r\n.vision 6420 websites – $50 \r\n.vlaanderen 6114 websites – $50 \r\n.vn 161855 websites International zone Vietnam:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.vn 436005 websites Vietnam – $80 \r\n.vodka 1420 websites – $50 \r\n.vote 2316 websites – $50 \r\n.voto 269 websites – $50 \r\n.voyage 2773 websites – $50 \r\n.vu 1201 websites – $50 \r\n.wales 13063 websites – $50 \r\n.wang 604718 websites – $80 \r\n.watch 6120 websites – $50 \r\n.webcam 60142 websites – $50 \r\n.website 207002 websites -$50 \r\n.wedding 22162 websites – $50 \r\n.wf 1188 websites – $50 \r\n.wien 14464 websites – $50 \r\n.wien 14913 websites – $50 \r\n.wiki 14129 websites wikis – $50 \r\n.win 655735 websites – $80 \r\n.wine 13095 websites – $50 \r\n.work 256086 websites – $80 \r\n.works 15112 websites – $50 \r\n.world 86012 websites – $50 \r\n.ws 97008 websites Samoa- $80 \r\n.wtf 10038 websites – $50 \r\n.xin 178450 websites – $50 \r\n.xn--3ds443g 44019 websites – $50 \r\n.xn--55qx5d 47456 websites – $50 \r\n.xn--6qq986b3xl 18188 websites – $50 \r\n.xn--czr694b 21109 websites – $50 \r\n.xn--czru2d 9020 websites – $50 \r\n.xn--fiq228c5hs 12145 websites – $50 \r\n.xn--io0a7i 30199 websites – $50 \r\n.xn--j6w193g 31764 websites – $50 \r\n.xn--kput3i 31856 websites – $50 \r\n.xn--mgbaam7a8h 2038 websites – $50 \r\n.xn--mgberp4a5d4ar 2534 websites – $50 \r\n.xn--mk1bu44c 6001 websites – $50 \r\n.xn--rhqv96g 7723 websites – $50 \r\n.xn--ses554g 198539 websites – $80 \r\n.xn--tckwe 6197 websites – $50 \r\n.xn--vuq861b 19706 websites – $50 \r\n.xxx 119879 websites- $50 \r\n.xyz 1888763 websites – $150 \r\n.yachts 154 websites – $50 \r\n.yoga 7963 websites – $50 \r\n.yokohama 8140 websites – $50 \r\n.yt 2004 websites – $50 \r\n.za 837189 websites South Africa – $100 \r\n.zm 224 websites – $50 \r\n.zone 25798 websites – $50 \r\n.бг (.xn--90ae) 2470 websites – $50 \r\n.дети 169 websites – $50 \r\n.москва (.xn--80adxhks) 19582 websites Moscow – $50 \r\n.онлайн 3403 websites – $50 \r\n.орг 1160 websites – $50 \r\n.рус (.xn--p1acf) 110789 websites – $50 \r\n.рф (.xn--p1ai) 869759 websites Russia – $80 \r\n.сайт 1146 websites – $50 \r\n.укр (.xn--j1amh) 10563 websites- $50 \r\n.संगठन 105  sites – $50 \r\n>.みんな 166  sites – $50 \r\n.コム    6532  sites – $50 \r\n.世界    4171  sites – $50 \r\n.公司    46161  sites – $50 \r\n.商城    6 907  sites – $50 \r\n.商标    9865  sites – $50 \r\n.我爱你 15465  sites – $50 \r\n.手机    31543  sites – $50 \r\n.机构    243  sites – $50 \r\n.游戏    187  sites – $50 \r\n.移动    3277  sites – $50 \r\n.网店    3711  sites – $50 \r\n.网络    30808  sites – $50 \r\n.닷컴    5937  sites – $50 \r\n.بازار  sites 648 – $50 \r\n.شبكة   sites 833 – $50 \r\n.موقع   sites 478 – $50', 0, '2019-04-21 09:14:25', '2019-04-21 09:14:25'),
(34, 'Jacob Elbaum', 'jacob@instaspeedgrowth.com', 'Hi there!\r\n\r\nMy name is Jacob Elbaum. I help exterior designers grow their Instagram account to build their digital presence.\r\n\r\nI’m looking for some new people to work with and I saw your website - http://www.tkdesigns-eg.com/contact \r\n\r\nIf growing your Instagram is something you may be interested in..let me know. Would love to chat.\r\n\r\nThanks, \r\nJacob', 0, '2019-04-25 17:06:41', '2019-04-25 17:06:41'),
(35, 'شاورما السورى', 'ayman@elmalah.com', 'asssssssssssssssssssssssss', 0, '2019-05-19 08:32:58', '2019-05-19 08:32:58'),
(36, 'admin2', 'hassandarwish2010@gmail.com', 'aaaaaaaaaaaaaaa', 0, '2019-05-22 08:55:49', '2019-05-22 08:55:49'),
(37, 'test', 'admin@admin.com', 'SFS FSDFSD FSD FSD FSDF S', 0, '2019-05-27 09:25:00', '2019-05-27 09:25:00'),
(38, 'شاورما السورى', 'ayman@elmalah.com', 'aaaaaaaaaaaaaaaaaaaaaaaaaaa', 0, '2019-05-27 10:13:27', '2019-05-27 10:13:27'),
(39, 'test', 'hassan@darwish.com', 'sddddddddddddddddd', 0, '2019-05-27 10:14:34', '2019-05-27 10:14:34'),
(40, 'شاورما السورى', 'ayman@elmalah.com', 'sdddddddd', 0, '2019-05-27 10:18:29', '2019-05-27 10:18:29'),
(41, 'شاورما السورى', 'ayman@elmalah.com', 'sdddddddd', 0, '2019-05-27 10:19:46', '2019-05-27 10:19:46'),
(42, 'شاورما السورى', 'ayman@elmalah.com', 'sdddddddd', 0, '2019-05-27 10:20:24', '2019-05-27 10:20:24'),
(43, 'test', 'hassan@darwish.com', 'sdddddddd', 0, '2019-05-27 10:21:01', '2019-05-27 10:21:01'),
(44, 'شاورما السورى', 'hassan@darwish.com', 'sddddddddd', 0, '2019-05-27 10:22:15', '2019-05-27 10:22:15'),
(45, 'شاورما السورى', 'hassan@darwish.com', 'dssssssssssss', 0, '2019-05-27 10:24:09', '2019-05-27 10:24:09'),
(46, 'test', 'ayman@elmalah.com', 'dsssssss', 0, '2019-05-27 10:27:11', '2019-05-27 10:27:11'),
(47, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddddddddddddd', 0, '2019-05-27 10:29:19', '2019-05-27 10:29:19'),
(48, 'شاورما السورى', 'ayman@elmalah.com', 'sdddddddddd', 0, '2019-05-27 10:31:16', '2019-05-27 10:31:16'),
(49, 'شاورما السورى', 'ayman@elmalah.com', 'sdddddddddddddd', 0, '2019-05-27 10:33:54', '2019-05-27 10:33:54'),
(50, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddddd', 0, '2019-05-27 11:18:06', '2019-05-27 11:18:06'),
(51, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddddd', 0, '2019-05-27 11:18:31', '2019-05-27 11:18:31'),
(52, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddddd', 0, '2019-05-27 11:19:58', '2019-05-27 11:19:58'),
(53, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddddd', 0, '2019-05-27 11:20:32', '2019-05-27 11:20:32'),
(54, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddddd', 0, '2019-05-27 11:20:50', '2019-05-27 11:20:50'),
(55, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddddd', 0, '2019-05-27 11:21:19', '2019-05-27 11:21:19'),
(56, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddddd', 0, '2019-05-27 11:22:17', '2019-05-27 11:22:17'),
(57, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddddd', 0, '2019-05-27 11:22:29', '2019-05-27 11:22:29'),
(58, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddddd', 0, '2019-05-27 11:22:41', '2019-05-27 11:22:41'),
(59, 'شاورما السورى', 'ayman@elmalah.com', 'dsssssss', 0, '2019-05-27 11:23:23', '2019-05-27 11:23:23'),
(60, 'شاورما السورى', 'ayman@elmalah.com', 'dsssssss', 0, '2019-05-27 11:34:10', '2019-05-27 11:34:10'),
(61, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddd', 0, '2019-05-27 11:36:47', '2019-05-27 11:36:47'),
(62, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddd', 0, '2019-05-27 11:38:30', '2019-05-27 11:38:30'),
(63, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddd', 0, '2019-05-27 11:39:04', '2019-05-27 11:39:04'),
(64, 'شاورما السورى', 'ayman@elmalah.com', 'sddddddddd', 0, '2019-05-27 11:39:11', '2019-05-27 11:39:11'),
(65, 'شاورما السورى', 'ayman@elmalah.com', 'dddddd', 0, '2019-05-27 11:40:19', '2019-05-27 11:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_25_180630_create_categories_table', 1),
(4, '2018_07_26_103417_create_products_table', 1),
(5, '2018_07_26_123419_create_product_images_table', 1),
(6, '2018_07_26_133646_create_banners_table', 1),
(7, '2018_07_26_150601_create_agents_table', 1),
(8, '2018_07_26_154034_create_news_table', 1),
(9, '2018_07_26_164953_create_settings_table', 1),
(10, '2018_07_30_093328_create_mails_table', 1),
(11, '2018_07_30_104506_create_abouts_table', 1),
(12, '2018_07_30_144054_create_jobs_table', 1),
(14, '2018_08_16_104240_create_jobs_apply_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permalink` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'its for seo',
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'its for seo',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'its for seo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `en_title`, `ar_title`, `en_details`, `ar_details`, `image`, `permalink`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(1, '5 Top Trends In 2018', 'title ar 3', '<p><span style=\"color:rgb(28, 30, 33); font-family:helvetica,arial,sans-serif; font-size:14px\">5 Top Trends In 2018</span><br />\r\n<br />\r\n<span style=\"color:rgb(28, 30, 33); font-family:helvetica,arial,sans-serif; font-size:14px\">2018 with it`s fast rhythm has changed a lot of our thinking towards the whole design industry landscape and also Medy Navani, CEO of Design Haus Medy has also declared the same during his interview with Design Middle East Magazine and here`s a quick recap for what he believes about 2018 trends&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:rgb(28, 30, 33); font-family:helvetica,arial,sans-serif; font-size:14px\">1- wallpaper is making a comeback</span><br />\r\n<br />\r\n<span style=\"color:rgb(28, 30, 33); font-family:helvetica,arial,sans-serif; font-size:14px\">wallpaper is making a comeback. Bright and patterns are in. We are using wallpaper more than ever before, and not just limiting it to the four walls either. NO longer reserved for just a feature wall, we use wallpaper to express our individuality and personality whether that`s through clashing wallpeper or long-scale patterns and murals<br />\r\n<br />\r\n2-sinks with drama are right on trend<br />\r\n<br />\r\nsinks with drama are right on trend, concrete, stone, copper or granite to be in fashion in 2018. today`s sinks are clever, functional works of art. an example would be.......</span></p>', '<p><span style=\"color:rgb(102, 102, 102); font-family:nassim-semibold; font-size:18px\">النظام الإيراني الحالي محيّر، ويبعث على الاندهاش والاستغراب؛ فهو حالة فريدة من نوعها، لم ولن تتكرر في الأنظمة السياسية، بما فيها الأنظمة الديكتاتورية والقمعية المعروفة في صفحات التاريخ الحديث. هذا النظام يستحق أن نصفه بحزمة من الأوصاف &quot;الغريبة&quot; مثله؛ فهو أغبى نظام في العالم؛ لأنه يحلم بالمستحيل، ويجتهد صباحًا ومساء لتحقيق هذا المستحيل، أو لنقل إنه عصابة مجرمة، تقود دولة وشعبًا إلى حافة الهاوية، أو من الممكن التأكيد أنه &quot;العار الأكبر&quot; على البشرية؛ لأنها تقبل بهذا النظام بينها. ومن الممكن وصف هذا النظام بكل هذه الأوصاف مجتمعة.</span></p>', '15045575471553357043.png', 'welcome-in-our-website', 'Welcome,in,our,website', 'Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website ', '2018-08-12 11:40:34', '2019-05-22 08:00:53'),
(2, '5 things to consider when you are choosing an interior designer', 'title ar 2', '<p><span style=\"color:rgb(28, 30, 33); font-family:helvetica,arial,sans-serif; font-size:14px\">5 things to consider when you are choosing an interior designer</span><br />\r\n<br />\r\n<span style=\"color:rgb(28, 30, 33); font-family:helvetica,arial,sans-serif; font-size:14px\">Finding an interior designer that can make your vision come to life is like finding a partner &ndash; it&rsquo;s not going to work if there&rsquo;s no chemistry and you need to like the same stuff. It&rsquo;s not enough to simply be into your interior designer&rsquo;s style. The process is very personal and it&rsquo;s important to find someone you find it easy to work</span><span style=\"color:rgb(28, 30, 33); font-family:helvetica,arial,sans-serif; font-size:14px\">&nbsp;with. Here are five tips for finding the right interior designer for you:<br />\r\n<br />\r\nChemistry : Yes this might look a little bit cheesy but in fact it`s not because Building a practical relationship and the ability to work well together is key, so you must be both comfortable and compatible with each other&rsquo;s personality and communication style.<br />\r\n<br />\r\nExpectations : Setting a mutual expectations from the start to outline clear expectations, especially terms of responsibilities, communication, deliverable, budget and compensation. Will finally create a relieving work environment which will lead to a perfect output<br />\r\n<br />\r\nBudget : this is a very materialistic world so based on the size and scope of your project, you must determine a working budget. This is an amount that should be discussed upfront with an interior designer, this will help your interior designer to picture your limits and how far he/she can go with you&nbsp;<br />\r\n<br />\r\nStyle consideration : before hiring an interior designer, you should have first understand your needs and specify your decorative style, because if you`re not understanding what you want, how do you expect that he/she will understand ?! being specific will shorten the debate routes and take your interior designer directly to what you really aspire&nbsp;<br />\r\n<br />\r\nQuestions : most of professional architects and interior designers will ask you a lot and we mean a lot of questions, they are not interrogating you they are simply trying to get into your imagination and you should be happy for that, also you too should ask your interior designer to make sure that he/she is getting you will understood&nbsp;</span></p>', '<p><span style=\"color:rgb(102, 102, 102); font-family:nassim-semibold; font-size:18px\">النظام الإيراني الحالي محيّر، ويبعث على الاندهاش والاستغراب؛ فهو حالة فريدة من نوعها، لم ولن تتكرر في الأنظمة السياسية، بما فيها الأنظمة الديكتاتورية والقمعية المعروفة في صفحات التاريخ الحديث. هذا النظام يستحق أن نصفه بحزمة من الأوصاف &quot;الغريبة&quot; مثله؛ فهو أغبى نظام في العالم؛ لأنه يحلم بالمستحيل، ويجتهد صباحًا ومساء لتحقيق هذا المستحيل، أو لنقل إنه عصابة مجرمة، تقود دولة وشعبًا إلى حافة الهاوية، أو من الممكن التأكيد أنه &quot;العار الأكبر&quot; على البشرية؛ لأنها تقبل بهذا النظام بينها. ومن الممكن وصف هذا النظام بكل هذه الأوصاف مجتمعة.</span></p>', '16139847711553356892.png', 'the--news', 'The,,news', 'The second news details The second news details The second news details The second news details The second news details The second news details The second news details The second news details The second news details The second news details The second news details ', '2018-08-14 11:16:20', '2019-05-22 08:01:06'),
(3, 'Customer persuasion syndrome', 'title ar', '<div class=\"text_exposed_root text_exposed\" id=\"id_5c9656ef125d78119118715\" style=\"display: inline; font-family: inherit;\"><span style=\"color:rgb(28, 30, 33); font-family:helvetica,arial,sans-serif; font-size:14px\"><span style=\"font-family:inherit\">Customer persuasion syndrome<br />\r\n<br />\r\nAway from the usual controversy about the importance of having an architect working for you<br />\r\n<br />\r\nLet us move on to the next stage ... You have a completely empty space of everything, and in contrast, your head is full of many ideas to decorate this place and turn it into a small paradise.<br />\r\n<br />\r\n<span style=\"font-family:inherit\">Here comes the role of interior designer, but wait for one moment !!<br />\r\nYou are now surrounded by thousands of ads in social networking sites, on the streets and on&nbsp;<br />\r\nYour mobile phone.<br />\r\n<br />\r\nEveryone tries to convince you that it is the best and this is something very legitimate. The competition will always be in your favor first<br />\r\n<br />\r\nBut let&#39;s take a different route this time.<br />\r\nMost of the time you will be placed in front of a specific set of choices, but what if you make a new choice! Will they leave you enough space to do that?<br />\r\nLet&#39;s be tough but real. You will not have enough space to choose<br />\r\n<br />\r\nAnd now you are asking yourself, WHY?&nbsp;<br />\r\nA good question by the way.<br />\r\n<br />\r\nThe answer is &ldquo; Customer persuasion syndrome &ldquo;&nbsp;<br />\r\n<br />\r\nWhen you are trying to find Architect/interior designer, This is an implicit statement that you do not know very well about these things so you tried to hire someone who knows &hellip; completely make sense .. right ?&nbsp;<br />\r\n<br />\r\nAnd based on this information most specialists offer you a range of choices and all you have to do is to &quot;choose&quot; , in fact you do not choose, you are carrying out the desire of another person, but in the form of choice because you are not creative enough to make architectural choices or you are not visionary enough to understand interior design techniques &hellip;&hellip; please please please DON`T do this again<br />\r\n<br />\r\nAnd here&#39;s the moral of those long line &ldquo; choose based on criteria &ldquo;&nbsp;<br />\r\n<br />\r\nYou Are Good Enough. You Are Smart Enough. You Are Creative Enough. And You Know What Else? This Is YOUR home, YOUR Life and above all it`s YOUR dream . Do Whatever Lights Your Soul On Fire and passion<br />\r\n<br />\r\nNow you know how to choose an Interior Designer, if there is anything else you want to discuss it with us, please feel free to send us or call us or even give us a visit at our office.</span></span></span></div>\r\n\r\n<div id=\"fbPhotoSnowliftCTMButton\" style=\"font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); width: 311.594px; padding-top: 16.3906px;\">&nbsp;</div>\r\n\r\n<div class=\"fbCommerceProductMiniListHscroll\" id=\"fbPhotoSnowliftProductMiniListHscroll\" style=\"font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33);\">&nbsp;</div>\r\n\r\n<div class=\"fbPhotoProductTags\" id=\"fbPhotoSnowliftProductTags\" style=\"display: inline-block; width: 328px; font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33);\">&nbsp;</div>\r\n\r\n<div id=\"fbPhotoSnowliftChainingPhotoHScroll\" style=\"font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33);\">&nbsp;</div>', '<p><span style=\"color:rgb(102, 102, 102); font-family:nassim-semibold; font-size:18px\">النظام الإيراني الحالي محيّر، ويبعث على الاندهاش والاستغراب؛ فهو حالة فريدة من نوعها، لم ولن تتكرر في الأنظمة السياسية، بما فيها الأنظمة الديكتاتورية والقمعية المعروفة في صفحات التاريخ الحديث. هذا النظام يستحق أن نصفه بحزمة من الأوصاف &quot;الغريبة&quot; مثله؛ فهو أغبى نظام في العالم؛ لأنه يحلم بالمستحيل، ويجتهد صباحًا ومساء لتحقيق هذا المستحيل، أو لنقل إنه عصابة مجرمة، تقود دولة وشعبًا إلى حافة الهاوية، أو من الممكن التأكيد أنه &quot;العار الأكبر&quot; على البشرية؛ لأنها تقبل بهذا النظام بينها. ومن الممكن وصف هذا النظام بكل هذه الأوصاف مجتمعة.</span></p>', '10937041751553356635.png', 'customer-persuasion-syndrome', 'Customer,persuasion,syndrome', 'Customer persuasion syndrome\r\n\r\nAway from the usual controversy about the importance of having an architect working for you\r\n\r\nLet us move on to the next stage ... You have a completely empty space of everything, and in contrast, your head is full of many ideas to decorate this place and turn it into a small paradise.\r\n\r\nHere comes the role of interior designer, but wait for one moment !!\r\nYou are now surrounded by thousands of ads in social networking sites, on the streets and on \r\nYour mobile phone.\r\n\r\nEveryone tries to convince you that it is the best and this is something very legitimate. The competition will always be in your favor first\r\n\r\nBut let\'s take a different route this time.\r\nMost of the time you will be placed in front of a specific set of choices, but what if you make a new choice! Will they leave you enough space to do that?\r\nLet\'s be tough but real. You will not have enough space to choose\r\n\r\nAnd now you are asking yourself, WHY? \r\nA good question by the way.\r\n\r\nThe answer is “ Customer persuasion syndrome “ \r\n\r\nWhen you are trying to find Architect/interior designer, This is an implicit statement that you do not know very well about these things so you tried to hire someone who knows … completely make sense .. right ? \r\n\r\nAnd based on this information most specialists offer you a range of choices and all you have to do is to \"choose\" , in fact you do not choose, you are carrying out the desire of another person, but in the form of choice because you are not creative enough to make architectural choices or you are not visionary enough to understand interior design techniques …… please please please DON`T do this again\r\n\r\nAnd here\'s the moral of those long line “ choose based on criteria “ \r\n\r\nYou Are Good Enough. You Are Smart Enough. You Are Creative Enough. And You Know What Else? This Is YOUR home, YOUR Life and above all it`s YOUR dream . Do Whatever Lights Your Soul On Fire and passion\r\n\r\nNow you know how to choose an Interior Designer, if there is anything else you want to discuss it with us, please feel free to send us or call us or even give us a visit at our office.\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n ', '2019-02-27 13:10:33', '2019-05-22 08:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photogallery`
--

CREATE TABLE `photogallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_image` varchar(191) NOT NULL,
  `afterimage` varchar(255) NOT NULL,
  `en_title` varchar(191) NOT NULL,
  `ar_title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photogallery`
--

INSERT INTO `photogallery` (`id`, `main_image`, `afterimage`, `en_title`, `ar_title`, `created_at`, `updated_at`) VALUES
(9, '14506617901555171135.jpg', '5985785461555171136.jpg', 'North-Coast Villa Renovation', '', '2019-03-10 09:44:56', '2019-04-13 22:58:57'),
(10, '895710351555172809.jpeg', '6402233991555172810.jpg', 'CEO Office Design', '', '2019-03-10 11:56:35', '2019-04-13 23:26:50'),
(12, '762171291555170258.jpg', '13856734271555170259.jpg', 'New-Cairo Villa Renovation', 'العنوان', '2019-04-03 19:41:41', '2019-05-14 10:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` int(11) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_details` text NOT NULL,
  `ar_title` varchar(255) NOT NULL,
  `ar_details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `processes`
--

INSERT INTO `processes` (`id`, `en_title`, `en_details`, `ar_title`, `ar_details`, `created_at`, `updated_at`) VALUES
(6, 'Build & install', '<p>This will be one of your best moment ever, when you finally got your home delivered in tuxedo on turn-key stage ready for you and your family to start a new chapter in your happy life</p>', '', '', '2019-04-01 15:32:36', '2019-04-12 21:32:08'),
(7, 'Design & Create', '<p>it`s double-sided talk between our two parties, we exhibit our designs and you exhibit your thoughts, ideas and amends, to finally reach the safe shore of both agreed<br />\r\nupon all terms of design</p>', '', '', '2019-04-01 15:34:45', '2019-04-12 21:31:21'),
(8, 'Meet & Agree', '<p>It`s open Microphone stage, feel free to say whatever crosses your mind regarding your home designs you are dreaming of, we will just listen and give you best advice</p>', '', '', '2019-04-12 21:28:33', '2019-04-12 21:28:33'),
(10, 'Raised  Floors', '<p>any details en</p>', 'العنوان', '<p>any details ar&nbsp;</p>', '2019-05-14 10:41:32', '2019-05-14 10:44:02'),
(11, 'Raised  Floors5', '<p><span style=\"color:rgb(102, 102, 102); font-family:nassim-semibold; font-size:18px\">كان الرسام الشهير بابلو بيكاسو يمشي في السوق، فرأته امرأة، فجاءته بقطعة من الورق، وقالت له بسعادة وحماس: &quot;سيد بيكاسو.. إنني من أشد المعجبات بك، فهل يمكن أن ترسم لي شيئًا؟&quot;. فاستجاب لها بسعادة، ورسم لها لوحة سريعة، ثم ابتسم وهو يقدمها لها، وقال: &quot;إن هذه الرسمة ستساوي مليون دولار&quot;. فردت المرأة بدهشة وإثارة: &quot;ولكن سيد بيكاسو، إنك لم تستغرق إلا ٣٠ ثانية لترسم هذه التحفة الفنية الصغيرة&quot;. فضحك وقال: &quot;سيدتي، لقد احتجت إلى ٣٠ عامًا حتى أتمكن من رسم هذه التحفة الفنية الصغيرة&quot;.</span></p>', 'العنوان', '<p>Raised&nbsp; Floors5Raised&nbsp; Floors5Raised&nbsp; Floors5Raised&nbsp; Floors5Raised&nbsp; Floors5</p>', '2019-05-22 11:40:54', '2019-05-22 11:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `permalink` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'its for seo',
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'its for seo',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'its for seo',
  `position` tinyint(1) NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `en_name`, `ar_name`, `en_details`, `ar_details`, `image`, `category_id`, `permalink`, `keywords`, `description`, `position`, `image2`, `image3`, `created_at`, `updated_at`) VALUES
(14, 'Roof Design', 'project', '<p><span style=\"background-color:rgb(24, 25, 27)\">Roof Redesign in New-Cairo Villa</span></p>', '<p>تفاصيل تفاصيل تفاصيل تفاصيل تفاصيل تفاصيل</p>', '9420338211555271623.jpg', 1, 'roof-design', 'Roof,Design', 'Roof Redesign in New-Cairo Villa', 1, '11201268081551702043.jpg', '2255837141555272625.jpg', '2019-03-03 09:57:43', '2019-04-15 06:46:26'),
(16, 'Landscape New-Cairo', 'project', '<p>Landscape New-Cairo</p>', '<p>تفاصيل تفاصيل تفاصيل تفاصيل تفاصيل تفاصيل</p>', '6308089941555269711.jpg', 1, 'landscape-new-cairo', 'Landscape,New-Cairo', 'Landscape New-Cairo', 1, '3679199271555269714.jpg', '9599189061555269714.jpg', '2019-03-03 16:22:04', '2019-04-15 06:43:19'),
(17, 'CEO Office  Design', 'project', '<p>CEO Office&nbsp; Design</p>', '<p>تفاصيل تفاصيل تفاصيل تفاصيل تفاصيل تفاصيل</p>', '18332445771555173264.jpg', 2, 'first', 'first', 'Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our', 1, '14942934061555173265.jpg', '17645244811555173265.jpg', '2019-03-04 08:30:50', '2019-04-13 23:34:25'),
(18, 'Clinic Interior Design', 'تفاصيل3', '<p>Clinic Interior Design&nbsp;</p>', '<p>تفاصيل تفاصيل تفاصيل تفاصيل تفاصيل تفاصيل3</p>', '18482026361555173606.jpg', 3, 'any', 'any', 'Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our website Welcome in our', 1, '18817458591555173606.jpg', '8732740171555173606.jpg', '2019-03-04 08:33:18', '2019-05-26 13:39:49'),
(19, 'Interior Design2', 'عميل', '<p>any dataany dataany dataany dataany data</p>', '<p>دائمًا اكتشف ما يمكن أن تتميز وتبدع فيه.. اكتشف قدراتك ومهاراتك وإمكانياتك التي وهبك الله إياها. كل إنسان على وجه الأرض لديه قدرات ومهارات تميزه عن غيره، اكتشفها، واعمل على تطويرها.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"teads-adCall\" style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: nassim-semibold; font-size: 18px;\">&nbsp;</div>\r\n\r\n<p>كان الرسام الشهير بابلو بيكاسو يمشي في السوق، فرأته امرأة، فجاءته بقطعة من الورق، وقالت له بسعادة وحماس: &quot;سيد بيكاسو.. إنني من أشد المعجبات بك، فهل يمكن أن ترسم لي شيئًا؟&quot;. فاستجاب لها بسعادة، ورسم لها لوحة سريعة، ثم ابتسم وهو يقدمها لها، وقال: &quot;إن هذه الرسمة ستساوي مليون دولار&quot;. فردت المرأة بدهشة وإثارة: &quot;ولكن سيد بيكاسو، إنك لم تستغرق إلا ٣٠ ثانية لترسم هذه التحفة الفنية الصغيرة&quot;. فضحك وقال: &quot;سيدتي، لقد احتجت إلى ٣٠ عامًا حتى أتمكن من رسم هذه التحفة الفنية الصغيرة&quot;.</p>', '19776100431557943056.jpg', 1, 'interior-design2', 'Interior,Design2', 'any dataany dataany dataany dataany data', 1, '10805376741557943056.jpg', '11271629581557943056.jpg', '2019-05-15 17:57:36', '2019-05-22 08:50:59'),
(20, 'hhhhhh8', 'cat3', '<p>any dataany dataany dataany dataany data</p>', '<p>arabic&nbsp;any dataany dataany dataany dataany data</p>', '14300468651557943109.png', 1, 'hhhhhh8', 'hhhhhh8', 'any dataany dataany dataany dataany data', 1, '14811253151557943109.jpg', '19872610821557943109.jpg', '2019-05-15 17:58:29', '2019-05-15 17:58:29'),
(21, 'hhhhhh9', 'cat8', '<p>any dataany dataany dataany dataany data</p>', '<p>arabic&nbsp;any dataany dataany dataany dataany data</p>', '10207314151557943167.jpg', 1, 'hhhhhh9', 'hhhhhh9', 'any dataany dataany dataany dataany data', 1, '12895956341557943167.jpg', '1279370511557943167.jpg', '2019-05-15 17:59:27', '2019-05-15 17:59:27'),
(22, 'hhhhhh89', 'cat99', '<p>any dataany dataany dataany dataany dataany data</p>', '<p>arabic&nbsp;any dataany dataany dataany data</p>', '9705772491557943222.jpeg', 1, 'hhhhhh89', 'hhhhhh89', 'any dataany dataany dataany dataany dataany data', 1, '16286998411557943222.jpg', '14564826951557943223.jpg', '2019-05-15 18:00:23', '2019-05-15 18:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(11, '4488605991555173122.jpg', 17, NULL, NULL),
(12, '709903751555173134.jpg', 17, NULL, NULL),
(13, '14132135851555173681.jpg', 18, NULL, NULL),
(14, '6773833861555173709.jpg', 18, NULL, NULL),
(15, '17024292971555173731.jpg', 18, NULL, NULL),
(16, '7303688251555173758.jpg', 18, NULL, NULL),
(50, '4727261741555285498.jpg', 16, NULL, NULL),
(51, '21329605721555285513.jpg', 16, NULL, NULL),
(52, '11924353301555285538.jpg', 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleCat_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleBAfter_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleDiscover_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleprocess_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleCat_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleBAfter_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleprocess_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleDiscover_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `phone`, `email`, `address`, `lat`, `lon`, `facebook`, `youtube`, `instagram`, `linkedin`, `titleCat_en`, `titleBAfter_en`, `titleDiscover_en`, `titleprocess_en`, `titleCat_ar`, `titleBAfter_ar`, `titleprocess_ar`, `titleDiscover_ar`, `about_en`, `about_ar`, `permalink`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(1, '+(20) 0106 632 7766', 'admin@masegyptdecor.com', '5 Ahmed fahim street , Nasr city , Cairo , Egypt', '30.04378873907079', '31.332052767736855', 'https://www.facebook.com/masegypt/', 'https://www.youtube.com/masegypt', 'https://www.instagram.com/masegypt', 'https://www.linkedin.com/masegypt', 'Scope Of Our Works', 'Before & After', 'Why  MasEgypt', 'Our Work Philosophy', 'مجال اعمالنا', 'قبل & بعد', 'لمحة عنا', 'لماذا نحن الاختيار الامثل لك؟', '<p>Since more than seventy years , the company has planned for itself certain targets through a well organized development plan</p>', '<p>الشركة المصرية</p>', 'MasEgypt', 'interior design, interior design company in cairo,', 'MasEgypt is interior design and fit out finishing company based in Cairo-Egypt, we are leading the industry of interior design in Egypt for almost 25 years in a row.', NULL, '2019-05-27 09:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hassan', 'info@td.com.eg', '$2y$10$0NfnBA6GZULyN0uheU79WeTtJM7LlCPMYe9.7zAZY9V5Rqw2mcWSO', 'FERtpLUY2lLPBl1bs2PxvEP4aHq7QCqI9gOndpCLXDNnsluOeMJI9moCj5tK', NULL, '2019-03-18 22:30:48'),
(2, 'hassan', 'hassan@darwish.com', '$2y$10$9ejW6OLm5e7Vc9ADNQtjUOvPi8WzTMCthZ0lBrc8gm3hyQH2SMMSa', NULL, '2018-08-12 10:31:18', '2018-08-12 10:31:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discovers`
--
ALTER TABLE `discovers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_apply`
--
ALTER TABLE `jobs_apply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_apply_job_id_foreign` (`job_id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photogallery`
--
ALTER TABLE `photogallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `discovers`
--
ALTER TABLE `discovers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs_apply`
--
ALTER TABLE `jobs_apply`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `photogallery`
--
ALTER TABLE `photogallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs_apply`
--
ALTER TABLE `jobs_apply`
  ADD CONSTRAINT `jobs_apply_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
