-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2018 at 07:19 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rashanx`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE IF NOT EXISTS `blog_posts` (
`id` int(11) NOT NULL,
  `postdate` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `posttitle` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `postdis` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `postbody` mediumtext CHARACTER SET utf8 COLLATE utf8_bin,
  `postauthor` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cat` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `postdate`, `posttitle`, `postdis`, `postbody`, `postauthor`, `cat`, `views`) VALUES
(26, '20th July 2018', 'ISP (Internet Service Provider) ට පුලුවන්ද අපි internet එකේ කරන දේවල් Track කරන්න?', 'Internet එකේ ඉන්න හැම කෙනෙක්ටම තියනවා තමන්ගේම කියලා පෞද්ගලිකත්වයක්(Privacy). මේක සමහර විට තමන් කැමති වෙබ්අඩවියක්, එහෙම නැත්නම් තමන් සම්බන්ධ දෙයක් වෙන්න පුළුවන්.', '<div class="entry-content">\r\n<article>\r\n<p>Internet එකේ ඉන්න හැම කෙනෙක්ටම තියනවා තමන්ගේම කියලා පෞද්ගලිකත්වයක්(Privacy). මේක සමහර විට තමන් කැමති වෙබ්අඩවියක්, එහෙම නැත්නම් තමන් සම්බන්ධ දෙයක් වෙන්න පුළුවන්.. අපි මේ විදියට පෞද්ගලිකත්වයක් තියාගෙන අන්තර්ජාලයේ සැරිසරනකොට, එහෙම නැත්නම් ඒ වගේ දේවල් වෙන කෙනෙක් එක්ක බෙදාගන්නකොට මේ හැම දෙයක්ම ගමන් කරන්නේ ISP කෙනෙක් හරහා.. ලංකාවේ මේ වෙනකොට නම් හැම දුරකථන සේවා ජාලයක්ම ISP කෙනෙක් වෙලා ඉවරයි(SLT, Mobitel, Dialog axiata, Airtel වගේ ඒවා).. ඒ හැමෝටම තමන්ගෙම කියලා Internet Authority එකක් තියනවා සාමාන්&zwj;ය මිනිස්සුන්ට කොන්දේසි යටතේ අන්තර්ජාලය සපයන්න පුළුවන් විදියට..&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f7f/1/16/1f60a.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span><br />මේ යටතේ Online privacy කියන එක අපිට කොටස් දෙකකට කඩන්න පුළුවන්.. පලවෙනි එක තමයි අපේ Web Browser එක, එහෙම නැත්නම් අපි භාවිතා කරන app එක හරහා අපිට ලැබෙන Privacy පහසුකම්.. දැන් අලුතින් එන හැම Web Browser එකකම Incognito mode එකක් තියනවා.. මේකෙන් කරන්නේ අපි Internet යනකොට අපිට වෙබ් අඩවිවලින් එවන cookies, site logs වගේ ඒවා Perment විදියට ගබඩා කරගන්නේ නැතිව, ඒවා Temporary විදියට තියාගෙන අදාළ වෙලාවේදී පමණක් ප්&zwj;රයෝජනයට ගන්න එක.. අපි Incognito mode එකෙන් අයින් වෙනකොටම ඒකෙ ගබඩා වෙලා තිබුණු Temporary cookies &amp; Logs අපේ පරිගණකයෙන් අයින් වෙලා යනවා..&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/fd2/1/16/1f604.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span></p>\r\n<p>ඊට අමතරව දැන් ගොඩක් browser වල තියනවා &ldquo;Do Not Track&rdquo; කියලා ඔප්ෂන් එකක්.. Do Not Track mode එක ON කරාට පස්සේ අපි ගමන් කරපු වෙබ්අඩවිවල විස්තර අනිත් වෙබ්අඩවිවලට යැවෙන එක වැළකෙනවා..<br />තේරුනේ නෑ&hellip;?&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f4/1/16/1f60f.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span><br />සමහර දවසට අපි Google එකේ මොනවහරි දෙයක් search කරලා ඉවරවෙලා Facebook එකට log වුනා කියමු.. එතක්කොට Facebook එකෙත් අපි ඉස්සෙල්ලා Google එකේ හොයපු දේට සම්බන්ධ Ads දකින්න ලැබෙනවා වගේ අද්දැකීම් ඔයගොල්ලොන්ටත් ඇති..&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f2c/1/16/1f631.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span>&nbsp;මේක කරන්නේ වෙබ්අඩවිවලින් අපේ browser එකට inject කරන public cookies වලින්.. (මේ විදියට තමයි targeted ads කියන සංකල්පෙත් හැදිලා තියෙන්නේ) Do Not Track එකෙන් කරන්නේ අදාළ Public Cookies බෙදාහැරීමේ සේවාව නවත්තලා දාන එක..<br />දැන් සමජ්ගයා..?&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f75/1/16/1f618.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span></p>\r\n<p>ඊට අමතරව Whatsapp වගේ apps හරහා අපේ පෞද්ගලික දේවල් බෙදාගන්නවා නම් ඒ apps වලින් අපේ messages Encrypt කරගන්නවා.. ඒ නිසා අපේ දත්ත වලට වැඩි ආරක්ෂාවක් ලැබෙනවා.. මේ වගේ විවිධාකාරයේ technologies නිසා අපේ පැත්තෙන් අපිට ආරක්ෂාව හදාගන්න පුළුවන්..&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f51/1/16/1f603.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span></p>\r\n<p>එතකොට දෙවෙනි කොටස.. ISP අපි කරන හැම දෙයක්ම track කරනවද..?<br />නෑ, ISP කෙනෙක් කියන්නේ අපේ පිටිපස්සෙන් වාඩිවෙලා ඉදගෙන, අපි internet එකේ කරන හැම click එකක් ගානෙම අපි දිහා බලාගෙන ඉන්න කෙනෙක් නෙමෙයි.. නමුත් ඒකෙන් කියවෙන්නේ අපි කරන කියන දේවල් ඒ අයගේ System ඇතුලේ ගබඩා වෙන්නේ නෑ කියන එකත් නෙමෙයි..!&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f4/1/16/1f60f.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span><br />ISP කෙනෙක් ප්&zwj;රධාන කාරණා කිහිපයකට අපේ දත්ත සහ අපි internet එකේ කරන දේවල්වල logs තමන්ගේ severs වල ගබඩාකරගන්නවා..</p>\r\n<p>*. ඒ අතරින් ප්&zwj;රධානම දේ තමයි පාරිභෝගිකයන්ගේ anonymous browsing logs පිලිබඳ නිරීක්ෂණය කිරීම හරහා තමන්ගේ අන්තර්ජාල සේවා සැපයීමේ ගුණාත්මකභාවය පිළිබද මිණුම් ලබාගැනීම..&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f2/1/16/1f60d.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span><br />* ඊට අමතරව ISP ලා අපෙන් එකතුකරගන්න තොරතුරු පොලිස් දෙපාර්තමේන්තුව, අපරාධ පරීක්ෂණ දෙපාර්තමේන්තුව වගේ රජයේ ආයතන වලට අපරාධයකට සාක්ෂි විදියට ලබාදෙන්නත් බැදිලා ඉන්නවා.. ඒ නිසා අපි සම්බන්ධ වෙන host වල IP address සහ දිනවකවානු ISP ලා තමන්ගේ ලග ගබඩාකරගෙන තියාගන්නවා..&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f2c/1/16/1f631.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span><br />* ඊට අමතරව සමහර ISPලා තමන්ගේ පාරිබෝගිකයන්ගේ තොරතුරු තෙවන පාර්ශවයන්ට විකුණලත් සැලකියයුතු ආදායමක් ලබාගන්නවා..</p>\r\n<p>ඉතින් අපිට ISP ට අහුවෙන්නේ නැතුව Internet එකේ සැරිසරන්න බැරිද..?&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f4/1/16/1f60f.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span><br />=======================<br />සරලම පිළිතුර &ndash; එහෙම කරන්න බැහැ..<br />අපි සම්බන්ධ වෙන හැම host එකක් පිළිබඳවම තොරතුරු ISP හරහා තමයි අපිට ලැබෙන්නේ.. එතෙන්ට අහුවෙන්නේ නැතුව Internet යන්න පුළුවන් කියන්නේ උගුරට හොරා බෙහෙත් බොනවා වගේ වැඩක්.. නමුත් අපිට පුළුවන් අපි අන්තර්ජාලය හරහා ලබාගන්න තොරතුරු එක එක මාර්ග හරහා යවලා (Tunneling) ISPට අපිව Track කරගැනීම අපහසු කරන්න.. එහෙම නැත්නම් ඒ තොරතුරු ISPට බලන්න බැරි විදියට Encrypt කරලා හුවමාරු කරගන්න..&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f32/1/16/1f637.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span><br />අපි ගොඩක් වෙලාවට anonymous විදියට internet යන්න ඕන නම් භාවිතා කරන්නේ Onion Router (Tor) , I2P සහා Freenet වගේ Web Browsers.. අපි ISP හරහා කෙලින්ම වෙබ්අඩවිවලට සම්බන්ධ කරනවා වෙනුවට මේවයින් කරන්නේ අපේ ISP හරහා තවත් ISP කෙනෙකුට, ඒ ISP හරහා තවත් ISP කෙනෙක්ට වගේ ISPලා ජාලයක් අතරින් අපේ දත්ත ආරක්ෂිතව අප වෙන ලබාගන්න එක.. මේ ක්&zwj;රමේදී අපේ ISP හරහා අපි කෙලින්ම සම්බන්ධ වෙලා තියෙන්නේ වෙනත් ISP කෙනෙක්ගේ Interface එකකට නිසා අපි ඇත්තටම Surf කරපු වෙබ්අඩවියේ host එක හොයාගන්න එක ISPට තනියම කරගන්න අමාරුයි.. කවුරුහරි කෙනෙක් Tor දාගෙන මොකක්හරි Website එකක් Hack කරනවා වගේ නීති විරෝධී දෙයක් කරා කියමුකෝ.. එතකොට ISPට හැකියාවක් තියනවා ඒ වෙලාවේදී hacker සම්බන්ධ වෙලා හිටපු මුළු network එකේම ISPලා එක්ක එකතුවෙලා අදාළ පුද්ගලයා කරපු හැම දෙයක් ගැනම තොරතුරු ලබාගන්න.. ඒ නිසා ඇත්තටම අපි මේ එදිනෙදා භාවිතා කරන PC එකකින්වත්, වෙන මොකක්හරි VPN tool එකකින්වත් අපිට 100%ක් Anonymous විධියට වැඩ කරන්න බැහැ..&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/fbd/1/16/1f62a.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span>&nbsp;Encrypt කරලා යවන දෙයක් වුනත් ඒ වගේ තමයි, අනිත් පැත්තට Decrypt කරන්න පුළුවන් අදාළ app එක reverse කරොත්..&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/fd2/1/16/1f604.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span>&nbsp;ඒ නිසා මේ කිසිම ක්&zwj;රමයකින් අපිව &ldquo;සම්පූර්ණයෙන්ම&rdquo; ආරක්ෂාකාරීව තියන්න බැහැ.. අපි කරපු දේවල් ගැන යම්කිසි පරිශ්&zwj;රමයක් දරලා විස්තර හොයාගන්න හැකියාවක් ISPට තියනවා..&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f1e/1/16/1f61a.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span></p>\r\n<p>ලිව්වේ :&nbsp;<a class="profileLink" href="https://www.facebook.com/RashanOfficial/?fref=mentions" data-hovercard="/ajax/hovercard/page.php?id=1937269246500675&amp;extragetparams=%7B%22fref%22%3A%22mentions%22%7D" data-hovercard-prefer-more-content-show="1">Rashan Hasaranga</a><br />වැරදි ඇතොත් නිවැරදි කරත්වා.. බෙදාගන්න සිත් ඇත්තෝ මිත්&zwj;රයන් සමග බෙදාගනිත්වා..<br />සුබ දවසක්..~!&nbsp;<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f98/1/16/1f49e.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span><span class="_5mfr _47e3"><img class="img" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f7f/1/16/1f60a.png" alt="" width="16" height="16" /><span class="_7oe">????</span></span></p>\r\n</article>\r\n</div>', 'Rashan Hasaranga', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `contact_submissions`
--

CREATE TABLE IF NOT EXISTS `contact_submissions` (
`id` int(11) NOT NULL,
  `submitedtime` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ip` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `contact_submissions`
--

INSERT INTO `contact_submissions` (`id`, `submitedtime`, `ip`, `name`, `email`, `message`) VALUES
(25, '2018-07-18 21:18:06', '::1', 'Rashan Hasaranga', 'rashanhasa@gmail.com', 'Hello there!'),
(31, '2018-07-18 22:25:41', '::1', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_submissions`
--
ALTER TABLE `contact_submissions`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `contact_submissions`
--
ALTER TABLE `contact_submissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
