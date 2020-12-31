-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 31, 2020 at 12:50 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.3.1p1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dropdictionary`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `word` varchar(200) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `parentNumber` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `word`, `username`, `comment`, `parentNumber`, `date`) VALUES
(1, '헐랭방구', '묘', '감사합니다 ^^ thx', 0, '2020-05-11 11:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `definitions`
--

CREATE TABLE `definitions` (
  `id` int(11) NOT NULL,
  `word` varchar(200) NOT NULL,
  `pronunciation` varchar(500) DEFAULT NULL,
  `synonym` varchar(200) DEFAULT NULL,
  `definition` text NOT NULL,
  `example` varchar(200) DEFAULT NULL,
  `date` datetime NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `definitions`
--

INSERT INTO `definitions` (`id`, `word`, `pronunciation`, `synonym`, `definition`, `example`, `date`, `hits`) VALUES
(2, '갑분싸', 'gab-bun-ssa', '', 'the abbreviation for \'갑자기 분위기 싸해지다\' (to make a sudden silence). Used to describe the situation where the whole room/things got awkward and serious because someone made a bad dad joke, said something that shouldn\'t have said, or just took everything so serious that you can\'t keep a conversation going anymore', '와 갑분싸 오진다', '2020-05-06 18:48:45', 355),
(3, '탈덕하다', 'tal-duk-ha-da', '', 'To stop supporting someone due to their behaviour (being racist, seixst, or homophobic) or just because you don\'t like them anymore\r\n\r\n탈 comes from the chinnese word 脫 meaning \'to quit\'\r\n덕 is short for 덕질하다/덕후질하다 which means \"to stan, support someone\"', '너 설마 탈덕했냐? (Oh so you don\'t stan them anymore?)', '2020-05-06 20:29:57', 218),
(4, '멘붕', 'menbung', '멘탈 털리다', '멘붕 is short for \'멘탈붕괴\'; It might sound a bit serious since the direct translation of it is \'having mental breakdown\' but in slang it\'s used to express confusion and shock in a fun way', '와 멘붕 왔어...', '2020-05-06 20:47:47', 212),
(5, '맞팔하다', 'mat-pal-ha-da', '', '맞팔하다 is short for 맞팔로우하다 meaning \'to follow each other\'. \r\n\r\nPeople on instagram gain their followers by using hashtags like #맞팔, #맞팔해요 and things like that.', '우리 맞팔할래?', '2020-05-06 22:24:29', 38),
(6, '주접댓글', NULL, '', 'A silly but hilarious comment \r\n\r\n주접 comess from the word \"주접 떨다\" (to act too greedy, selfish or annoying) but in slang, 주접떨다 turns into a positive word and its meaning is \"to make funny comments in a dramatic way, telling someone how appreciated, lovely, and cute they are\" And 댓글 is a korean term for comment.', '주접 댓글들 달린 것 좀 봐 (Look at these silly comments)', '2020-05-07 00:59:08', 723),
(7, '인싸', 'inssa', '', '인싸 (english: Inssa) is the abbreviation of 인사이더(insider) meaning someone who is outgoing and gets along with others, who is just \"inside\" a specific group\r\n\r\n아싸(아웃사이더, outsider) is a word for the opposite of 인싸; It refers to someone who is socially awkward, shy, or an outcast.', '인싸의 삶이란..', '2020-05-07 10:57:26', 214),
(8, 'ㅇㅈ', 'Injeong', '동의', 'Short for 인정(approval); It\'s casually used when someone says something relatable, true or something you can agree with.\r\n\r\nKoreans tent to prefer a single word or phrase to express their opinion to a complete sentence.', '그건 ㅇㅈ한다 (Yeah that\'s true)', '2020-05-07 11:08:01', 249),
(9, '성덕', 'sung-duk', '', '(n) a succesful fan, who got lucky enough to meet someone they like in person or at least connect with them.\r\n\r\n성덕 is short for 성공한 덕후; 성공한 is a korean term for \"being successful\" and 덕후 is used to describe someone who is a fan of someone or something, obsessed with them. It originated from the japanese word Otaku (Korean: 오타쿠) meaning \"a person who likes watching anime a lot.\" which was used in a negative/offensive way but as the way we write the word changed(오타쿠 -> 오덕후 -> 덕후), It has taken on a different meaning and now 덕후 is used in a lot more positive way refering to a fan of someone.', '와.. 나 오늘 성덕 됐어.', '2020-05-08 11:44:35', 381),
(10, 'RGRG', 'rgrg', '알mouse', 'RGRG is pronounced/written as 알쥐알쥐 in korean which basically means \"Yeah I know, I know what you\'re talking about.\" \r\n\r\nPeople noticed that how the korean famous youtuber \"wassup man\" saying \"알지\" sounds like \"알쥐\" and they made a meme about it so that\'s where this phrase came from.\r\n\r\nIt also can be used in a sarcastic way ', '아 그 뉴스? 나도 RGRG..', '2020-05-08 16:51:53', 344),
(11, '눈물버튼', 'nunmul button', '롬곡버튼 (turn the word 롬곡 upside down. it\'s 눈물)', '눈물버튼(cry button) is a konglish term to describe something that makes you cry, something that got you in tears; It can be used whenever you see something emotional.', '', '2020-05-08 17:41:06', 24),
(12, '노잼', 'no-jam', '핵노잼', '노잼(No jam) is a konglish term for something or someone that\'s not funny used a lot by teens.\r\n\r\nJam (잼) has nothing to do with the jam you\'re thinking about, the thing you spread on your bread. It\'s just short for the korean word 재미 meaning fun', '와 이 영화 진심 노잼이다.. (Whoa this movie is absolutely boring..)', '2020-05-08 21:05:57', 198),
(13, 'Hoxy', 'hoksi', '혹쉬', 'Hoxy is the korean word \"혹시(By any chance)\" just spelled in english.\r\n\r\nIt sounds more polite if you say it while asking for help or something like that but in slang, It\'s just fun meaningless wordplay.', '저기.. Hoxy 물티슈 좀 줄래?', '2020-05-09 00:07:49', 209),
(14, '오바하다', 'over-ha-da', '오버하다, 에바다, 에바참치꽁치(wordplay)', '오바하다(over-hada) is a konglish word used when someone is being overdramatic and too much, or just over(korean: 오바) the top.', '쟤 좀 봐 또 또 오바한다', '2020-05-09 00:11:42', 34),
(15, '안뇽', 'an-nyong', '안농, 안뇽하세요', 'A cute way of saying 안녕(Hi). It\'s generally used when you want to say hello to someone in a cute and friendly way.', '다들 안뇽!', '2020-05-09 00:20:15', 13),
(16, '실화냐?', 'sil-haw-nay?', '진심?, ㄹㅇ?', 'Is it for real?\r\n\r\n실화 is a general korean term for \"true story\" so you basically ask people if it was a true story, it was something that happened because you simply can\'t believe what you\'ve seen or heard.', '와.. 실화냐?', '2020-05-09 00:25:32', 25),
(17, 'ㅇㅋ', 'okay', '', 'Short for 오키(오케이) meaning literally \"Okay\".\r\n\r\nHow the word changed with the same meaning:\r\nOKAY -> 오케이 -> 오키 -> ㅇㅋ', 'ㅇㅋ 알겠음', '2020-05-09 00:34:26', 42),
(18, 'JMT', 'JMT', '존맛, 꿀맛, 핵맛', 'JMT stands for Jon Mat Taeng (korean: 존맛탱) meaning \"freaking delicious\". It\'s used when you have something tasty and good.\r\n\r\n존(J)- 존나(freaking)\r\n맛(M) - 맛있다(delicious)\r\n탱(T) - just an emphasis', '이 과자 JMT임', '2020-05-09 18:33:08', 73),
(19, '존버', 'jon-beo', 'hodl', '존버 is short for 존나 버티다(meaning: hold freaking fast, stick to what you\'ve got) used to describe a situation where the stock market crashed so you lose money but you hold the stocks you bought till the market rises again because you can\'t do it otherwise. It\'s also used when you\'re going through something unpleasant, something you don\'t want to do but you have to.', '역시 존버가 답이다 (존버 is the best decision you could ever make)', '2020-05-09 18:38:39', 50),
(20, '존예', 'jon-ye', '', '존예 is a shortened form of the word 존나 예쁘다 meaning \"freaking beautiful\". It\'s used to describe a person who looks beautiful and amazing', '와.. 저 사람은 실물이 더 존예네', '2020-05-10 14:48:22', 7),
(21, '존멋', 'jon-mut', '존멋', 'Short for 존나 잘생겼다 meaning \"freaking good looking\" used to describe a person who looks handsome and amazing', '얘 좀 봐 존잘이지 않아?', '2020-05-10 14:49:21', 28),
(22, '프사', 'peu-sa', '', 'the abbreviation for 프로필 사진(profile sajin) meaning \"profile picture\", the image that represents you on social media.', '고양이 프사', '2020-05-10 14:50:19', 37),
(23, '근자감', 'geun-ja-gam', '', 'the abbreviation for 근거 없는 자신감 meaning \"groundless self-confidence\" used when someone is having too much self-confidence based on nothing/without any proof.', '근자감 보소', '2020-05-10 14:51:38', 12),
(24, '헐랭방구', 'heol-raeng-bang-gu', '헐랭, 헐 ', '● 헐랭방구 Is a combination of 헐랭 and 방구.\r\n\r\n- 헐랭 is a cute version of 헐/헉 (=Wow, i got surprised/shocked)\r\n- 방구 is a cute version of FART used to emphasize the word 헐랭 in some ways. (*방귀 in korean)\r\n\r\n● MEANING? \r\n1. It\'s used when you got surprised at something or someone in a fun way. you can you this word which is cuter than just saying 헐, 헉.\r\n\r\n2. Used when you feel ridiculous or unbelievable to accept the situations you\'re facing right now.', '헐랭방구 이 강아지 진짜 귀엽다.\r\n헐랭방구 나는 너가 다른 사람인 줄 알았어!.\r\n와.. 진짜 뉴스들 다 헐랭방구네. 믿을 수 없어.', '2020-05-11 11:26:07', 366),
(25, '발연기', 'bal-yun-gi', '', '발연기 is a shortened form of the expression 발로 연기하다 which basically means \"to suck at acting\".\r\n\r\n발연기 is made up of two words: 발 and 연기(acting) and the meaning of 발(general meaningng: feet) here is something negative or bad(i.e. 발번역,  발컨트롤).', '와 저 배우 발연기 하는 것 좀 봐', '2020-05-11 22:15:15', 34),
(26, 'ㅉㅉ', NULL, '', 'ㅉㅉ is short for 쯧쯧 meaning \"shaking my head\" used when something/someone is disappointing or stupid.', 'ㅉㅉ.. 너 대체 뭐하니? (smh what the heck are you doing?)', '2020-05-11 22:22:18', 49),
(27, 'ㅋㅋㅋ', NULL, '', 'A simple way to write laughter online. It\'s used when you see something funny. ㅋㅋㅋ comes from the expression 크크크(hahhaha, lol) but it\'s shortened now and it also could be used in a sarcastic way in some cases.', '개웃겨 ㅋㅋㅋㅋㅋㅋㅋ (so funny looool)', '2020-05-13 23:52:35', 29),
(28, '셀카', 'selca', '', '셀카(selca) is a konglish term for selfie; It\'s short for 셀프 카메라(Self camera) meaning \"a photo of you taken by yourself\"', '셀카 찍자! (Let\'s take a selfie!)', '2020-05-13 23:56:02', 27),
(29, '베프', 'bepeu', '절친', '베프 is a short term for 베스트 프렌드(Best Friend) literally meaning your best, closest friend.', '나 새로 베프 생겼다! (i got a new bff!)', '2020-05-14 00:05:03', 26),
(30, '미자', 'mija', '', 'Abbreviated term for 미성년자 meaninh a minor, someone under the certain age. A person under the age of 19 is \"미자\" in korea', '너 아직 미자야? ㅋㅋㅋ', '2020-05-14 12:50:40', 15),
(31, '종특', 'jongteug', '', '종특 comes from the word 종족 특징(english: racial trait) meaning what a specific group of people tend to do, what they usually do.', '단합 잘하는 거 한국인들 종특인듯', '2020-05-14 13:03:24', 67),
(32, '인생샷', 'insaengshot', '', '인생샷 is a combination of the two words 인생(life) and 샷(shot) meaning \"the best picture/selfie you could ever take in your entire life\"', '이거 진심 인생샷인듯(it\'s like my best selfie ever!!!!)', '2020-05-14 13:09:30', 51),
(33, '개소리', 'Gaesori', '개솔', '개소리 is used when something is bullshit or someone said something that does not make any sense at all.\r\n\r\nYou should be careful using this term since it might offend someone if you use it.', '개소리 작작해! (Stop that bullshit!)', '2020-05-15 01:42:51', 62),
(34, '존웃', 'Jon-ut', '졸웃, 현웃, 개웃', '존웃 is short for 존나 웃기다 meaning \"freaking hilarious\" used when you see something absolutely funny, things like comedy tv shows or memes!\r\n\r\n존 in slang is typically a shortened form of the swear word \"존나(freaking)\" such as \'존\'예, \'존\'잘, and \'존\'귀 used a lot on the internet.', 'ㅋㅋㅋㅋㅋ 짤 존웃이네 (That meme is freaking hilarious)', '2020-05-16 00:35:48', 85),
(35, '지리다', 'Jilida', '지렸다, 지림', 'It originally meant \"to pee your pants\" but its meaning has changed a bit over time and now It basically means \"awesome\" or \"dope\".', '미친 너 시험 문제 하나도 안 틀렸어? 지린다... (Omg you got nothing wrong on the test? Jilinda...)', '2020-05-16 01:13:14', 65),
(36, '읽씹', 'Ikssib', '', 'Short for 읽고 씹다(leave you on read); It\'s used when you read a message sent to you but not respond to it.\r\n\r\nThere\'s another term called 안읽씹 which typically means \"left you on unread\"', '읽씹을 했다고? 진심 너무했네 (oh did they left you on read? So ruthless)', '2020-05-16 09:00:58', 36),
(37, 'ㅇㅉ', '', '저쩔, 저쩌라고, ㅇㅉㄹㄱ', 'ㅇㅉ comes from the expression 어쩌라고 meaning \"So what?\", \"Who cares tho?\" which has shortened to 어쩔 and then became just ㅇㅉ\r\n\r\nIt\'s used to express anger implying that you want to stop talking with them or about the subject.', '그래서 ㅇㅉ? 걔들 얘기 그만 좀 해 (So what? Stop talking about them)', '2020-05-17 00:10:51', 54),
(38, 'ㅂㄹ', NULL, '별루 ', 'ㅂㄹ is short for 별로 meaning \"nah\", \"I don\'t like that idea\".', '근데 그거 ㅂㄹ인듯 .. (I don\'t like it tho)', '2020-05-17 01:11:44', 48),
(39, '남돌', 'namdol', '', 'Shortened from of the phrase 남자 아이돌(namja idol) meaning \"a member from a boy band\" and there\'s this phrase called 남돌 그룹(Namdol group) which typically means \"boy band\".\r\n\r\n아이돌 comes from the english word \"idol\", someone tha you look up to but in korea it simply means a member of a girl group/boy band.', '새로운 남돌 그룹 (New boy band/boy group)', '2020-05-18 02:26:59', 50),
(40, '찐이다', 'Jjinida', '레알, ㄹㅇ', '찐이다 refers to something that\'s real. It originated from the word 진짜다 (It\'s real) and people started to put an emphasis on 진(眞) which then became 찐(이다)', '뭐가 찐이야? (Which one is real?)', '2020-05-18 12:22:50', 94),
(41, '노답', 'Nodab', '개노답', '노답 comes from the korean expression 답이 없다 (Literal translation: There\'s no answer, Meaning: There\'s no way/the right \"answer\" to fix someone or sth) used to describe someone or something hopeless, out of one\'s hand.', '너무 답답해 죽겠네 너 진짜 노답이다.. (Omg it\'s frustrating you\'re just no dab)', '2020-05-18 12:44:36', 73),
(42, 'ㅇㅇ', 'eung eung', '웅웅, 엉엉', '응응(okay), a shortened respond. \r\n\r\n* Warning: You only need to use it to your close friends since it\'s way informal and some people find it a bit rude', '- 잘 지내? (How are you?)\r\n- ㅇㅇ (kk)', '2020-05-19 12:29:58', 29),
(43, 'ㅗ', '', '', 'ㅗ means \"f*ck you/f*ck off\" because ㅗ looks like you\'re holding up your middle finger.', 'ㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗ 엿먹어라', '2020-05-20 13:37:42', 40),
(44, 'ㅈㄹ', '', '개소리', 'short for 지랄(Jiral) meaing \"bullshit\" used to express anger or disbelief.', 'ㅈㄹ ㄴㄴ (지랄 노노, stop your bullshit)', '2020-05-21 20:01:07', 66),
(45, '팩트폭력', 'Fact-pog-lyeog', '팩폭(shortened), 팩력배', 'comes from two words \"팩트\" and \"폭력\". 팩트 is an english term for \"fact\" just spelled in korean while 폭력 means \"violence\" so basically the literal translation should be \"fact violence\" and It actually refers to a situation where someone said a straight-up fact so there\'s no way to deny it and the one that was wrong along the way is getting hurt by the truth just like they got beaten by the facts. related english idiom is \"truth hurts\".', '와 팩폭 지림!', '2020-05-21 20:15:06', 39),
(46, '콜', 'Call', '좋아!', 'Meaning) I\'m down, deal, I\'m cool with it, agreed!', '- 내일 영화 콜?\r\n- 콜!', '2020-05-21 20:19:52', 26),
(47, '짤', 'JJal', '짤방', 'meme, a photo that\'s funny, iconic, or popular.', '짤줍 감사요 (짤줍=짤을 줍는다, save the meme)\r\nThanks i\'ll save the meme.', '2020-05-21 20:22:24', 17),
(48, '스루하다', 'through-ha-da', '무시하다, 그냥 지나치다', 'through(하다); konish term meaning \"to ignore something, to go away from something\" usually used when two people can\'t agree with each other fighting over something and one wants to end the argument right away.', '기분 나쁘면 그냥 스루하면 되잖아?\r\nIf you find it offensive, why don\'t you just \"through (ignore)\" it?', '2020-05-21 20:28:29', 17),
(49, '끌올하다', 'kkeul-ol-ha-da', '다시 가져오다', 'Short for 끌어 올리다 meaning \"to bring something up again, especially the past controversy or drama\"', '끌올 좀 그만 하세요!\r\nDon\'t bring this up again!', '2020-05-24 20:21:41', 73),
(50, 'ㅂㅂ', '', 'ㅂㅇㅂㅇ, ㅂㅇ, ㅃㅃ, ㅃㅇㅃㅇ, ㅃ2', 'ㅂㅂ is short for 바바 which is a shortened form of the expression 바이바이 meaning \"bye bye\"', '나 갈게 ㅂㅂㅂ (I gotta go bye)', '2020-05-24 20:29:17', 60),
(51, '맛집', 'mat-jib', '', 'Originally the korean term for \"Popular restaurant\" but in slang, it refers to someone good at something, having a superior factor (i.e. 셀카 맛집 - someone always taking a nice selfie, 비주얼(visual, face) 맛집 - someone always looking good)', '', '2020-05-24 21:52:30', 248),
(52, '트친', 'teu-chin', '', '트친 is short for \"트위터 친구(Twitter friend)\"; It\'s used to describe a mutual, someone you interact with on twitter.', '트친소(트위터 친구를 소개합니다, a tweet where you can get more mutuals)', '2020-05-24 22:12:56', 59),
(53, '미드', 'Mi-deu', '', '미드 is a shortened term for 미국 드라마 which literally translated as \"American drama (tv shows)\". The same goes for 영드 refering to \"British tv shows\".', '재밌는 미드 추천 좀요! (Any funny american tv show recommendations?!)', '2020-05-24 22:29:20', 43),
(54, '동공지진', 'dong-gong-ji-jin', '', '동공지진 is a combination of two words 동공(pupil) and 지진(earthquake) which typically means \"eyes shaking like the earthquake is happening (because you\'re surprised as hell)\", usually used to express surprise and confusion.', '와 동공지진 일어날 뻔.. 너무 당황스러웠어 (Whoa I was about to have my eyes shaking I just didn\'t know what to do)', '2020-05-25 11:12:25', 78),
(55, 'ㅈㅂ', '', '', '제발 (Please)', 'ㅈㅂ... (Please...)', '2020-05-25 12:20:49', 36),
(56, '사바사', 'sabasa', '케바케 (Case by case, it depends)', '사바사 is a shortened form of the expression 사람 바이 사람(person by person) meaning \"It depends on the person\"', '그건 사바사야 (it depends on the person)', '2020-05-27 11:08:09', 31),
(57, '관종', 'gwanjong', '어그로(troll)', 'A shortening of 관심종자 (Attention seeker) typcially refering to someone who does weird stuff, something normal people wouldn\'t do because they are desprate for attention', '관종짓 좀 그만해 (stop being an attetion seeker)', '2020-05-27 11:34:22', 46),
(58, '한글패치', 'hangul patch', '', '한글패치 is derived from the words \'한글(Hangul)\' and \'패치(Patch)\'. It\'s typically used to describe someone REALLY good at korean, someone that sounds like a native korean speaker as if they got a hangul patch installed into their brain. ', '한글 패치 된 외국인 (non-korean really good at korean)', '2020-05-28 23:42:19', 23),
(59, '작작하다', 'jak-jak-ha-da', '그만하다', '작작하다 means \'stop doing it\' usually used when someone is being dramatic and trying to cross the line. this term is synonymous w 그만하다 but used in a more aggresive way', '작작해라 진짜! (stop ding it!)\r\n그것 좀 제발 작작해 줄래? (Can you please stop it?)', '2020-06-01 20:17:24', 11),
(60, '싸불', 'ssa-bul', '', '싸불 is a shortened form of the word 사(싸)이버 불링 (english: cyberbullying)', '싸불 자제 (no cyberbullying allowed)', '2020-06-01 20:23:01', 10),
(61, '별다줄', 'byul-da-jul', '', 'short for 별 걸 다 줄이네 meaning \"You guys really shorten every word and phrase\". the fact that this expression is also shortened and at the same time pointing the finger at people shorten things is the ironic part and that\'s why this got popularized on the internet.', '그렇군 별다줄이네 ㄹㅇ.. (ok you really shorten everything literally..)', '2020-06-01 20:37:53', 42),
(62, '힝', 'hing / heeing ', '흑 ', 'When you say 힝, you are so sad that you express the feeling of sadness with the sound(힝) in a cute way.', '힝... 고양이 나만 없어..\r\n힝 배고파ㅠ\r\n집가고 싶다 힝힝 ㅠㅠ..', '2020-06-02 21:52:16', 25),
(63, 'ㄱㄱ', '', '고고씽, 가즈아', 'konglish term; it stands for 고고 (english: Go Go) meaning \"Let\'s go / Let\'s do it\".', '- 내일 영화관 가실? (Do you want to go to the movies tomorrow?)\r\n- 좋아 ㄱㄱ (Of course! ㄱㄱ)', '2020-06-02 22:47:43', 28),
(64, 'ㅁㅊ', '미친(Michin)', '돌았다, 돌았네', 'ㅁㅊ is a shortened version of 미친(meaning: what the hell, That\'s crazy) which has multiple meanings, depending on the context. It\'s typically used to express surprise, shock or disbelief usually used in online conversations.', '와 미쳤네 (that\'s crazy whoa)\r\nㅁㅊ 이거 뭐야? (WTH.. what is this?)', '2020-06-02 23:10:04', 25),
(65, 'ㅎㅎㅎㅎ', '', '하하하하, ㅎㅎ', 'a shortening of 하하하하 (english: hahahaha) used to describe the sound made when someone laughs, same as ㅋㅋㅋㅋ(크크크크)', '이 웹툰 존웃 ㅎㅎㅎㅎ (this cartoon is funny as hell hahaha)', '2020-06-03 10:45:54', 20),
(66, '엉엉', 'eong-eong', 'ㅇㅇ (ok), 우앵 (the sound of crying)', '엉엉 has two particular meanings, depending on the context. (1) the sound made when someone crys (2) used to say 응응(meaning: okay, alright) in a friendly way', '', '2020-06-03 23:56:33', 13),
(67, '기레기', 'giregi', '', '기레기 is derived from the words 기자(English: gija) and 쓰레기(English: sseu-re-gi) refering to a journalist writing a s*itty article or spreading false imformation.\r\n\r\n기레기 often write an exaggerated article for money and provoke people just for attention', '기레기들은 진짜 최악이야 (Giregi is the worst stg)', '2020-06-05 00:56:37', 29),
(68, '스밍', 'seuming', '', '스밍 is a shortened version of the english word streaming (korean: 스트리밍) primarily used by stans on social media.', '새로 나온 노래 스밍 돌리자! (Let\'s stream a new single!)', '2020-06-05 01:34:24', 11),
(69, 'whyrano', '와이라노', '왜 그러니?', 'whyrano(korean: 와이라노) is a korean slang term meaning \"what\'s wrong? / what\'s going on\"; it\'s a dialet spoken somewhere around gyeongsangdo and got popularized on the internet in early 2020', 'whyrano whyrano.. ', '2020-06-07 00:00:23', 58),
(70, '개이득', 'gae-i-deuk', 'ㄱㅇㄷ, 득템, 개꿀', '개이득 is a mix of two words 개 and 이득 meaning \"so much value\". 개 is an emphasis put on the first letter of a word meaning really and 이득 is a korean term for value/advantage refering to something you\'ve got effortlessly.', '우와 이거 무료로 받았다! ㄱㅇㄷ (wow i got this free! so much value)', '2020-06-07 00:14:42', 21),
(77, '썸', 'some', '', '썸 is derived from the english word something(korean: 썸띵) used to describe a relationship where two people have a thing for each other even tho they didn\'t talk about their feelings yet, just like there\'s \"something\" going on between two people.', '오 너네 둘이 썸 타? (Oh so there\'s going on bewteen you two!!)', '2020-06-09 23:59:40', 48),
(78, '움짤', 'um- jjal', '', 'GIF pictures.\r\nit\'s a shortened version of 움직이는 짤 which is directly translated as \"moving meme\"', '움짤 보내주세요\r\nSend me some GIF', '2020-06-10 13:13:45', 22),
(79, '넘', 'neom', '아주, 너무, 진짜', '넘 means \"very\", shortened form of 너무', '그 아이가 너무 예쁘지 않아? \r\nIsn\'t that child so pretty? ', '2020-06-10 13:16:57', 27),
(80, '개뿔', 'ggae bbul', '지랄', 'similar to the word 지랄(bullshit). Mostly used as \"00 무슨 개뿔?\" If it\'s used that way it can mean \"Forget 00\'', '공부는 무슨 개뿔? 나 그냥 영화나 볼거야 \r\nForget studying. I\'m just gonna watch movies. ', '2020-06-10 13:21:14', 135),
(81, '응 아니야', 'eung, aniya', '', '\"Yeah.. No! / of course not\". A response to a silly question used in a sarcastic way!', '- 나 귀여워 (Am i cute?)\r\n- 응 아니야 (of course.. not!)', '2020-06-10 13:22:46', 45),
(82, '현생', 'hyeonsaeng', '지금의 삶', 'The life your are living right now. ', '', '2020-06-10 13:26:09', 27),
(83, '천상계', 'cheonsangkye', '천국', 'heaven', '', '2020-06-10 13:28:29', 21),
(84, '아닥', 'adak', '닥쳐', 'Same meaning with 닥쳐. Contracted form of 아가리 닥쳐 which means shut your pie hole. Very vulgar word. ', '', '2020-06-10 13:31:53', 41),
(85, '보굽다', 'bogubda', '보고싶다, 보구미', '보굽다 is a shortened form of the expression 보구싶다 meaning \"I miss you\" or \"I can\'t wait to see u again\".\r\n\r\nhow the word changed: 보고싶다 -> 보구십다 -> 보굽다', '보굽다 친구야!!! (can\'t wait to see u again!!)', '2020-06-10 23:08:49', 84),
(86, '얼죽아', 'ul-juk-ah', '', 'original form: 얼어 죽어도 아이스 아메리카노\r\nMeaning: I\'ll go for an Iced americano even if i freeze to death.\r\n\r\nexaggerated way to show your love for an ICED americano', '얼죽아파 없나..?!?! (Where\'s my ICED AMERICANO TEAM at?)', '2020-06-10 23:38:46', 71),
(87, '당근', 'Dang-geun', '당연, 당욘', '당근 means \"of course\". It comes from the korean expression 당연하지 and shortened afterwards.\r\n\r\n당근(translation: carrot) has the same sound but the slang term 당근 has nothing to do with something you eat, the carrot.', '- 나 좋아? (You like me?)\r\n- 당근당근 (Of course!)', '2020-06-12 19:20:23', 77),
(89, '귀요미', 'Gui-yo-mi', '귀욤', '귀요미 refers to someone really cute, made poupular by the song \'귀요미송\'', '이 귀요미야 !! (you cute!!)', '2020-06-13 20:29:55', 30),
(90, '뇌피셜', 'noeffical', '', '뇌피셜 is a mix of the words \"뇌(meaning: brain)\" + \"오피셜(english: official)\" refering to something that\'s not confirmed offically and just an opinion that came from their \"brain\".', '', '2020-06-14 23:24:32', 29),
(91, '극혐', 'geuk-hyum', '혐극', '극혐 means something you truly don\'t like. shortened version of 극도로 (extremely, freaking) 혐오 (hatred).', '바퀴벌레 극혐!!!!\r\ni freakin hate cockroaches!!!!', '2020-06-14 23:31:28', 40),
(92, '알라뷰', 'Al-La-bu', '알랍', '알라뷰 comes from the english expression \"I love you\"; 아이 러브 유 is how ily is spelled out in korean and then it was shortened to 알라뷰', '알라뷰 !!! (ily)', '2020-06-15 14:05:14', 112),
(93, '꼰대', 'kkondae', '꼰머, 꼰대질', '꼰대 is a korean slang term for boomer; It refers to an elderly person who sticks to their old traditions insisting they\'re always right no matter what.', '어쩌라고 이 꼰대야 (Ok boomer)', '2020-06-17 09:21:02', 187),
(94, 'ㅁㄹ', '', '모름', 'ㅁㄹ is a shortened version of 몰라 meaning idk (stands for i don\'t know)', '', '2020-06-17 09:30:47', 45),
(95, 'ㄴㄴ', '', '놉', 'ㄴㄴ stands for 노노(English: No No) used to express disagreement. ㅇㅇ is the opposite of ㄴㄴ', '', '2020-06-17 09:40:02', 38),
(96, 'ㅈㄴ', '', 'ㅈㄹ (졸라)', 'ㅈㄴ is short for 존나 meaning \"freaking\" only used in online converstations.', 'ㅈㄴ 웃겨 (freaking hilarious)', '2020-06-18 07:33:24', 35),
(97, '알바', '', '', '알바 is short for 아르바이트 which comes from the german term \"Arbeit\" meaning \'part-time job\'', '', '2020-06-18 07:55:12', 24),
(98, '어먹금', 'eo-muk-geum', '병먹금, ㅂㅁㄱ, ㅇㅁㄱ. 먹금', 'short for 어그로 먹이 금지 meaning \"don\'t feed this troll(animal)\" used when you don\'t want people to pay attention to the troll / attention seeker', '- 쟤 진짜 존못 ㅋㅋㅋ (he\'s so ugly)\r\n- 어쩌라고 ㅇㅁㄱ (So what? don\'t feed this troll guys)', '2020-06-24 01:20:55', 19),
(99, '뇌절', 'noe-jul', '', 'it means \"over the top\" used when someone is being so extra but don\'t really need (want) to', '뇌절 하네 또! (you\'re being extra again!)', '2020-06-24 01:24:54', 15),
(100, '공카', 'gong-ka', '', '공카 is short for 공식 카페 meaning Official Cafe usually used to refer to an official fan-based community where your \'idol\' also joins to interact with u.', '공카 들어가 봐!\r\nCheck out the official cafe!', '2020-06-26 14:30:17', 9),
(101, '잠수타다', 'jamsutada', '고스팅, 연락이 없다', '잠수타다 originally means \"to go underwater\" but in korean slang it basically means \"to ghost\" used when someone disappear suddenly avoiding meeting people.', '너 왜 잠수 탔어?? (Why did u ghost??)', '2020-06-26 14:55:25', 12),
(102, '영고', 'younggo', '', '영고 is a shortened version of the expression \"영원히 고통 받다(suffering forever)\" usually used to refer to a situation where the video / selfie / picture of you that\'s cringe-worthy and embarrassing has been going around on the internet and people post it again and again and again and you have to deal with it feeling \"painful\" (because of the embarrassment you feel) and there\'s no way around it.', '진짜 영고일듯... ', '2020-06-26 15:03:18', 13),
(103, '핵잼', '', '꿀잼, 존잼', '핵잼 is directly translated to \"Nuclear funny\" which basically means \"hella funny\". People in korea casually use the word 핵 just to emphasize things.\r\n\r\nthe opposite of the word 핵잼 is 노잼 which typically means \"not funny at all\"', '', '2020-06-30 18:41:41', 13),
(104, '안물안궁', 'An-mul-an-gung', '어쩔, 어쩌라고', '\'안\' 물었고 \'안\' 궁금하다\r\nit means \"didn\'t ask u about this and didn\'t even wonder\" used as a reponse to something you don\'t wanna know', '진짜 안물안궁이다.. (I didn\'t ask u about this and didn\'t even know about it tbh..)', '2020-06-30 20:15:18', 7),
(105, '실트', 'Silteu', '', '실트 is a shortened form of the phrase 실시간 트렌드 meaning \"Trending now\" often used on twitter', '', '2020-06-30 20:37:27', 17),
(106, 'ㄲㅈ', '', '', 'shortened version of the korean curse word 꺼져 meaning F*ck off, Get the hell out of here', '아 좀 ㄲㅈ (Oh please get the hell outta here)', '2020-07-03 17:24:23', 42),
(107, '오모나', 'omona', '엄마야', 'a cute way of saying 어머나 meaning \"Oh god!\"', '오모나 무서워라..! (Oh god that scares me!)', '2020-07-03 17:30:02', 210),
(108, '쫄보', 'jjolbo', '쪼다, 겁쟁이', '쫄보 refers to someone who got scared a lot, someone who\'s afraid of the smallest thing.', '이 쫄보!!! ㅉㅉ (you coward smh!!!)', '2020-07-03 17:43:10', 53),
(109, '계이', 'gye-i', '계정 변경', 'short for 계정 이동 meaning \"account changed\" used when you move your account to another', '같이 계이하자 ㄱㄱㄱ (Let\'s change an account together! let\'s do it)', '2020-07-03 17:46:48', 37),
(110, '지뢰', 'ji-roe', '', 'the original meaning of 지뢰 is \"land mine \" but in slang it basically means \"celebrity you dislike\" used by stans on stan twitter', '지뢰 피할게요 (I\'ll be just avoiding any celeb i dislike)', '2020-07-03 17:51:32', 20),
(111, '국룰이다', 'guk-rul-i-da', '', '국룰(English: Guk Rule) is a konglish term which is directly translated to \"National rule you should follow\". It\'s used to describe something you have to do, A must-do thing', '등산하고 컵라면은 국룰이지 (You defo have to eat ramen noodles after hiking)', '2020-07-03 17:56:24', 24),
(112, '병크', 'byung-keu', '사건사고, 사건', '병크 is short for 병신 크러스트 meaning \"drama\" used a lot on stan twitter. it technically refers to an inappropriate incident a celebrity or social figure caused.\r\n\r\n* Warning: 병신 is an offensive term refering to people with disabilities. I strongly suggest you not to use the word alone to describe someone', '', '2020-07-04 15:28:51', 91),
(113, '맞짱 뜨다', 'mat-jjang ddeu-da', '', 'To fight someone face to face', '- (맞장) 뜰까?\r\nyou wanna fight?\r\n- 그래 나가서 뜨자\r\nyeah let\'s take it outside', '2020-07-04 15:52:07', 24),
(114, 'ㅈㅅ', '', '미안', '죄송 (sorry)', '- 너 실수했어 (you made a mistake)\r\n- 아 ㅈㅅ (oh sorry)', '2020-07-04 16:12:25', 38),
(115, '맛잘알', 'mat-jal-al', '', '\'맛\'을 \'잘\' \'아는\' 자. 맛잘알 is a slang phrase refering to someone who knows what food is yummy and what\'s not.\r\n\r\n-잘알 is a commonly used phrase refering to someone who knows something very well.\r\n', '와우 맛잘알 인정합니다 (yeah you know what food is yummy)', '2020-07-08 13:59:17', 70),
(116, 'ㅠㅠ', '', 'T_T, :(', 'crying emoji; used to express sadness since it looks like tears falling down your face. ', '개우울해 ㅠㅠㅠㅠㅠ\r\ni\'m depressed as hell :-(', '2020-07-08 14:17:28', 45),
(117, '싫테', 'sil-te', '싫어요 폭탄 (dislike bomb)', '싫테 is short for 싫어요 테러 meaning \"dislike attacks\". it\'s used to describe a situation where people hit the dislike button a LOT to show hate.\r\n\r\n좋테 has the opposite meaning - \"like attacks\"', '제 비디오에다 싫테 자제하세요 \r\nstop hitting the dislike button on my vids', '2020-07-22 21:36:01', 49),
(118, '욜로', 'yolo', '', '욜로 is \"YOLO\" spelled out in korean meaning \"you only live once\" as you already know.', '욜로 하다 골로 간다 (You\'re gonna end up miserable if you think like \"YOLO\")', '2020-07-22 21:39:30', 49),
(119, '8282', '', 'ㅃㄹ', '빨리빨리 (sounds smiliar to 8282) meaning \"hurry up!\"', '8282 집에 오셈 (Come home as soon as possible)', '2020-07-22 21:41:34', 58),
(120, '솔까말', 'solkkamal', '솔까', '솔직히 까놓고 말해서 (To be honest, if i\'m being honest)', '솔까 쌤들 진짜 싫음 (tbh I hate my teachers)', '2020-07-22 21:44:00', 62),
(121, '쌤', 'ssam', '쌤님', 'shortened version of 선생님(teacher or used to refer to an eldery person) used in an informal way', '쌤 죄송해요 ㅠㅠㅠㅠ\r\nSorry, ssam :(', '2020-07-22 21:46:14', 70),
(122, '초반', 'Choban', '', '초반 is short for 초면(에) 반말 literally meaning \"talking to someone you see for the first time in an informal / casual manner\"', '초반 할래?', '2020-08-24 11:43:06', 33),
(123, '쯔업', 'jjup', '흠', 'same as 쩝 meaning hmm..', '쯔업... 오늘 뭐하지? (Hmm.. what should i do today?)', '2020-09-05 00:51:43', 49),
(124, '믿거', '', '', '믿거 = 믿고 거른다(colander) \r\nmeaning \"It\'s worth a skip with no doubt\"', '', '2020-09-05 01:10:08', 68);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `date` datetime NOT NULL,
  `IP` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `word` text NOT NULL,
  `status` text,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `word`, `status`, `date`, `username`) VALUES
(1, '움짤', 'done', '2020-06-13 19:59:32', 'dnemdtod'),
(2, '응 아니야', 'done', '2020-06-13 19:59:35', 'dnemdtod'),
(3, '썸', 'done', '2020-06-13 19:59:47', 'dnemdtod'),
(4, '아닥', 'done', '2020-06-13 19:59:58', 'dnemdtod'),
(5, '극혐', 'done', '2020-06-14 23:31:28', 'dnemdtod'),
(6, '귀요미', 'done', '2020-06-13 20:29:55', 'dnemdtod'),
(7, '천상계', 'done', '2020-06-13 19:53:38', 'dnemdtod'),
(8, '현생', 'done', '2020-06-13 19:53:26', 'dnemdtod'),
(9, '개뿔', 'done', '2020-06-13 19:53:28', 'dnemdtod'),
(10, '넘', 'done', '2020-06-13 19:53:30', 'dnemdtod'),
(11, '보굽다', 'done', '2020-06-13 19:53:32', 'arkyutek'),
(12, '뇌절', 'done', '2020-06-24 01:24:54', 'dropdictionary'),
(13, '맛잘알', 'done', '2020-07-08 13:59:17', 'oxxsbxn'),
(14, '초반', 'done', '2020-08-24 11:43:06', 'nunsongyi');

-- --------------------------------------------------------

--
-- Table structure for table `updated`
--

CREATE TABLE `updated` (
  `id` int(11) NOT NULL,
  `word` varchar(200) NOT NULL,
  `identifier` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `updated` varchar(8) NOT NULL,
  `backup` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `updated`
--

INSERT INTO `updated` (`id`, `word`, `identifier`, `date`, `updated`, `backup`) VALUES
(2, '갑분싸', 'dropdictionary', '2020-05-06 18:48:45', 'Defined', 'the abbreviation for \'갑자기 분위기 싸해지다\' (to make a sudden silence). Used to describe the situation where the whole room/things got awkward and serious because someone made a bad dad joke, said something that shouldn\'t have said, or just took everything so serious that you can\'t hold a conversation with them anymore /  / '),
(3, '탈덕하다', 'dropdictionary', '2020-05-06 20:29:57', 'Defined', 'To stop supporting someone due to their behaviour (being racist, seixst, or homophobic) or just because you fell out of love with them.\r\n\r\n탈 is a chinnese word meaning \'to quit\' and 덕 is short for 덕질하다/덕후질하다 which means \'to stan/support someone\'. /  / 너 설마 탈덕했냐? (Oh did you stop supporting them?)'),
(4, '탈덕하다', 'dropdictionary', '2020-05-06 20:33:09', 'Edited', 'To stop supporting someone due to their behaviour (being racist, seixst, or homophobic) or just because you don\'t like them anymore\r\n\r\n탈 is a chinnese word meaning \'to quit\' and 덕 is short for 덕질하다/덕후질하다 which means \'to stan/support someone\'. /  / 너 설마 탈덕했냐? (Oh so you don\'t stan them anymore?)'),
(5, '갑분싸', 'dropdictionary', '2020-05-06 20:37:16', 'Edited', 'the abbreviation for \'갑자기 분위기 싸해지다\' (to make a sudden silence). Used to describe the situation where the whole room/things got awkward and serious because someone made a bad dad joke, said something that shouldn\'t have said, or just took everything so serious that you can\'t hold a conversation with them anymore /  / 와 갑분싸 오진다'),
(6, '멘붕', 'dropdictionary', '2020-05-06 20:47:47', 'Defined', '멘붕 is short for 멘탈붕괴\r\nIt might sound a bit serious since the literal meaning of it is \'having mental breakdown\' but in slang it\'s used to express confusion and shock in a fun/it\'s-not-that-serious way / 멘탈 털리다 / 와 멘붕 왔어...'),
(7, '멘붕', 'dropdictionary', '2020-05-06 21:36:56', 'Edited', '멘붕 is short for 멘탈붕괴\r\nIt might sound a bit serious since the literal meaning of it is \'having mental breakdown\' but in slang it\'s used to express confusion and shock in a fun/not thar serious way / 멘탈 털리다 / 와 멘붕 왔어...'),
(8, '멘붕', 'dropdictionary', '2020-05-06 21:48:06', 'Edited', '멘붕 is short for \'멘탈붕괴\'; It might sound a bit serious since the literal meaning of it is \'having mental breakdown\' but in slang it\'s used to express confusion and shock in a fun/not thar serious way / 멘탈 털리다 / 와 멘붕 왔어...'),
(9, '맞팔하다', 'dropdictionary', '2020-05-06 22:24:29', 'Defined', '맞팔하다 is short for 맞팔로우하다 meaning \'to follow each other\'. \r\n\r\nPeople on instagram gain their followers by using hashtags like #맞팔, #맞팔해요 and things like that. /  / - 야 맞팔하실?\r\n- 그래 고고'),
(10, '맞팔하다', 'dropdictionary', '2020-05-06 22:36:02', 'Edited', '맞팔하다 is short for 맞팔로우하다 meaning \'to follow each other\'. \r\n\r\nPeople on instagram gain their followers by using hashtags like #맞팔, #맞팔해요 and things like that. /  / 우리 맞팔할래?'),
(11, '주접댓글', 'dropdictionary', '2020-05-07 00:59:08', 'Defined', 'A silly comment full of jokes; 주접 is originally from the word \"주접 떨다\" (to act too greedy, selfish or annoying) but in slang the meaning is \"to be overdramatic making funny comments, telling someone how appreciated, lovely, and cute they are\". And 댓글 is a korean term for comment. /  / 한국인들 주접 진짜 잘 떤다 주접 댓글 꿀잼 ㅋㅋㅋㅋ'),
(12, '주접댓글', 'dropdictionary', '2020-05-07 01:06:33', 'Edited', 'A silly comment full of jokes.\r\n\r\n주접 is originally from the word \"주접 떨다\" (to act too greedy, selfish or annoying) but in slang the meaning of it is \"to make funny comments overdramatically, telling someone how appreciated, lovely, and cute they actually are\". And 댓글 is a korean term for comment. /  / 주접 댓글들 달린 것 좀 봐 (Look at these silly comments)'),
(13, '주접댓글', 'dropdictionary', '2020-05-07 10:17:00', 'Edited', 'A silly comment full of jokes.\r\n주접 came from the word \"주접 떨다\" (to act too greedy, selfish or annoying) but in slang the word 주접 떨다 changes from a nagative meaning to positive one. It\'s the act of \"making funny comments in a dramatic way, telling someone how appreciated, lovely, and cute they are\". And 댓글 is a korean term for comment. /  / 주접 댓글들 달린 것 좀 봐 (Look at these silly comments)'),
(14, '주접댓글', 'dropdictionary', '2020-05-07 10:37:31', 'Edited', 'A silly comment full of jokes.\r\n\r\n주접 came from the word \"주접 떨다\" (to act too greedy, selfish or annoying) but in slang the word 주접떨다 becomes positive and its meaning is \"to make funny comments in a dramatic way, telling someone how appreciated, lovely, and cute they are\". And 댓글 is a korean term for comment. /  / 주접 댓글들 달린 것 좀 봐 (Look at these silly comments)'),
(15, '인싸', 'dropdictionary', '2020-05-07 10:57:26', 'Defined', '인싸 (english: Inssa) is the abbreviation of 인사이더(insider). It means someone who is outgoing and gets along with others, who is just \"inside\" a specific group\r\n\r\n아싸(아웃사이더, outsider) is a word for the opposite of 인싸; It refers to someone who is socially awkward, shy, or an outcast. /  / 인싸의 삶이란..'),
(16, 'ㅇㅈ', 'dropdictionary', '2020-05-07 11:08:01', 'Defined', 'Short for 인정(I agree); It\'s casually used when someone says something relatable, something you can agree with.\r\n\r\nKoreans tent to prefer a single word or phrase to express their opinion to a fully complete sentence. / 동의 / 그거 꿀잼 ㅇㅈ한다'),
(17, 'ㅇㅈ', 'dropdictionary', '2020-05-07 11:08:15', 'Edited', 'Short for 인정(I agree); It\'s casually used when someone says something relatable, something you can agree with.\r\n\r\nKoreans tent to prefer a single word or phrase to express their opinion to a fully complete sentence. / 동의 / 그건 ㅇㅈ한다'),
(18, 'ㅇㅈ', 'dropdictionary', '2020-05-07 11:23:07', 'Edited', 'Short for 인정(approval); It\'s casually used when someone says something relatable, true or something you can agree with.\r\n\r\nKoreans tent to prefer a single word or phrase to express their opinion to a fully complete sentence. / 동의 / 그건 ㅇㅈ한다 (Yeah that\'s true)'),
(19, '주접댓글', 'dropdictionary', '2020-05-07 11:32:30', 'Edited', 'A silly comment full of jokes.\r\n\r\n주접 came from the word \"주접 떨다\" (to act too greedy, selfish or annoying) but in slang 주접떨다 turns into a positive word and its meaning is \"to make funny comments in a dramatic way, telling someone how appreciated, lovely, and cute they are\". And 댓글 is a korean term for comment. /  / 주접 댓글들 달린 것 좀 봐 (Look at these silly comments)'),
(20, '성덕', 'dropdictionary', '2020-05-08 11:44:35', 'Defined', '(n) a succesful fan, who got lucky enough to meet someone they like in person.\r\n\r\n성덕 is short for 성공한 덕후; 성공한 is a korean term for \"suceessful\" and 덕후 is used to describe someone who is a fan of someone or something, obsessed with them. It originated from the japanese word Otaku (Korean: 오타쿠) meaning \"a person who likes watching anime a lot.\" which was used in a negative/offensive way but as the way we write the word changed(오타쿠 -> 오덕후 -> 덕후), It has taken on a different meaning and now 덕후 is used in a lot more positive way refering to a fan of someone. /  / 와.. 나 오늘 성덕 됐어.'),
(21, '성덕', 'dropdictionary', '2020-05-08 11:53:38', 'Edited', '(n) a succesful fan, who got lucky enough to meet someone they like in person or at least connect with them.\r\n\r\n성덕 is short for 성공한 덕후; 성공한 is a korean term for \"suceessful\" and 덕후 is used to describe someone who is a fan of someone or something, obsessed with them. It originated from the japanese word Otaku (Korean: 오타쿠) meaning \"a person who likes watching anime a lot.\" which was used in a negative/offensive way but as the way we write the word changed(오타쿠 -> 오덕후 -> 덕후), It has taken on a different meaning and now 덕후 is used in a lot more positive way refering to a fan of someone. /  / 와.. 나 오늘 성덕 됐어.'),
(22, '성덕', 'dropdictionary', '2020-05-08 16:26:38', 'Edited', '(n) a succesful fan, who got lucky enough to meet someone they like in person or at least connect with them.\r\n\r\n성덕 is short for 성공한 덕후; 성공한 is a korean term for \"being suceessful\" and 덕후 is used to describe someone who is a fan of someone or something, obsessed with them. It originated from the japanese word Otaku (Korean: 오타쿠) meaning \"a person who likes watching anime a lot.\" which was used in a negative/offensive way but as the way we write the word changed(오타쿠 -> 오덕후 -> 덕후), It has taken on a different meaning and now 덕후 is used in a lot more positive way refering to a fan of someone. /  / 와.. 나 오늘 성덕 됐어.'),
(23, '성덕', 'dropdictionary', '2020-05-08 16:27:32', 'Edited', '(n) a succesful fan, who got lucky enough to meet someone they like in person or at least connect with them.\r\n\r\n성덕 is short for 성공한 덕후; 성공한 is a korean term for \"being successful\" and 덕후 is used to describe someone who is a fan of someone or something, obsessed with them. It originated from the japanese word Otaku (Korean: 오타쿠) meaning \"a person who likes watching anime a lot.\" which was used in a negative/offensive way but as the way we write the word changed(오타쿠 -> 오덕후 -> 덕후), It has taken on a different meaning and now 덕후 is used in a lot more positive way refering to a fan of someone. /  / 와.. 나 오늘 성덕 됐어.'),
(24, 'RGRG', 'dropdictionary', '2020-05-08 16:51:53', 'Defined', 'RGRG Is pronounced 알쥐알쥐 in korean which basically means \"Yeah I know, I know what you\'re talking about.\" \r\n\r\nPeople noticed that how the korean famous youtuber \"wassup man\" saying \"알지\" sounds like \"알쥐\" and they made a meme  about it so that\'s where this all came from.\r\n\r\nIt also can be used in a sarcastic way  / 알mouse / 그 뉴스? 나도 RGRG..'),
(25, 'RGRG', 'dropdictionary', '2020-05-08 16:52:16', 'Edited', 'RGRG Is pronounced 알쥐알쥐 in korean which basically means \"Yeah I know, I know what you\'re talking about.\" \r\n\r\nPeople noticed that how the korean famous youtuber \"wassup man\" saying \"알지\" sounds like \"알쥐\" and they made a meme about it so that\'s where this all came from.\r\n\r\nIt also can be used in a sarcastic way  / 알mouse / 그 뉴스? 나도 RGRG..'),
(26, 'RGRG', 'dropdictionary', '2020-05-08 16:52:49', 'Edited', 'RGRG Is pronounced 알쥐알쥐 in korean which basically means \"Yeah I know, I know what you\'re talking about.\" \r\n\r\nPeople noticed that how the korean famous youtuber \"wassup man\" saying \"알지\" sounds like \"알쥐\" and they made a meme about it so that\'s where this all came from.\r\n\r\nIt also can be used in a sarcastic way  / 알mouse / 아 그 뉴스? 나도 RGRG..'),
(27, '눈물버튼', 'dropdictionary', '2020-05-08 17:41:06', 'Defined', '눈물버튼(cry button) is a konglish term to describe something that makes you cry, something that got you in tears; It can be used whenever you see something emotional. / 롬곡버튼 (turn the word 롬곡 upside down. it\'s 눈물) / '),
(28, '노잼', 'dropdictionary', '2020-05-08 21:05:57', 'Defined', '노잼(No jam) is a konglish term for something or someone that\'s not funny used a lot by teens.\r\n\r\nJam (잼) has nothing to do with the jam you\'re thinking about, the thing you spread on your bread. It\'s just short for the korean word 재미 meaning fun / 핵노잼 / 와 이 영화 진심 노잼이다.. (Whoa this movie is absolutely boring..)'),
(29, '인싸', 'dropdictionary', '2020-05-08 21:15:10', 'Edited', '인싸 (english: Inssa) is the abbreviation of 인사이더(insider) meaning someone who is outgoing and gets along with others, who is just \"inside\" a specific group\r\n\r\n아싸(아웃사이더, outsider) is a word for the opposite of 인싸; It refers to someone who is socially awkward, shy, or an outcast. /  / 인싸의 삶이란..'),
(30, 'RGRG', 'dropdictionary', '2020-05-08 21:17:42', 'Edited', 'RGRG is pronounced 알쥐알쥐 in korean which basically means \"Yeah I know, I know what you\'re talking about.\" \r\n\r\nPeople noticed that how the korean famous youtuber \"wassup man\" saying \"알지\" sounds like \"알쥐\" and they made a meme about it so that\'s where this phrase came from.\r\n\r\nIt also can be used in a sarcastic way  / 알mouse / 아 그 뉴스? 나도 RGRG..'),
(31, 'Hoxy', 'dropdictionary', '2020-05-09 00:07:49', 'Defined', 'Hoxy is the korean word \"혹시(By any chance)\" just written in english.\r\n\r\nIt sounds more polite if you say it while asking for help or something like that but in slang, It\'s just fun meaningless wordplay. / 혹쉬 / 저기.. Hoxy 물티슈 좀 줄래?'),
(32, '오바하다', 'dropdictionary', '2020-05-09 00:11:42', 'Defined', '오바하다(over-hada) is a konglish word used when someone is being overdramatic and too much, or just over(korean: 오바) the top. /  / 쟤 좀 봐 또 또 오바한다'),
(33, '오바하다', 'dropdictionary', '2020-05-09 00:15:41', 'Edited', '오바하다(over-hada) is a konglish word used when someone is being overdramatic and too much, or just over(korean: 오바) the top. / 오버하다 / 쟤 좀 봐 또 또 오바한다'),
(34, '안뇽', 'dropdictionary', '2020-05-09 00:20:15', 'Defined', 'A cute way of saying 안녕(Hi). It\'s generally used when you want to say hello to someone in a cute and friendly way. / 안농, 안뇽하세요 / 다들 안뇽!'),
(35, '실화냐?', 'dropdictionary', '2020-05-09 00:25:32', 'Defined', 'Is it for real?\r\n\r\n실화 is a general korean term for \"true story\" so you basically ask people if it was a true story, it was something that happened before because you simply can\'t believe what you\'ve  seen or heard. / 진심?, ㄹㅇ? / 와.. 실화냐?'),
(36, '실화냐?', 'dropdictionary', '2020-05-09 00:27:09', 'Edited', 'Is it for real?\r\n\r\n실화 is a general korean term for \"true story\" so you basically ask people if it was a true story, it was something that happened because you simply can\'t believe what you\'ve seen or heard. / 진심?, ㄹㅇ? / 와.. 실화냐?'),
(37, 'ㅇㅋ', 'dropdictionary', '2020-05-09 00:34:26', 'Defined', 'Short for 오키(오케이) meaning literally \"Okay\".\r\n\r\nHow the word changed with the same meaning:\r\nOKAY -> 오케이 -> 오키 -> ㅇㅋ /  / ㅇㅋ 알겠음'),
(38, '주접댓글', 'dropdictionary', '2020-05-09 13:06:00', 'Edited', 'A silly but hilarious comment \r\n\r\n주접 comess from the word \"주접 떨다\" (to act too greedy, selfish or annoying) but in slang, 주접떨다 turns into a positive word and its meaning is \"to make funny comments in a dramatic way, telling someone how appreciated, lovely, and cute they are\" And 댓글 is a korean term for comment. /  / 주접 댓글들 달린 것 좀 봐 (Look at these silly comments)'),
(39, 'JMT', 'dropdictionary', '2020-05-09 18:33:08', 'Defined', 'JMT stands for Jon Mat Taeng (korean: 존맛탱) meaning \"freaking delicious\". It\'s used when you have something tasty and good.\r\n\r\n존(J)- 존나(freaking)\r\n맛(M) - 맛있다(delicious)\r\n탱(T) - just an emphasis / 존맛, 꿀맛, 핵맛 / 이 과자 JMT임'),
(40, '존버', 'dropdictionary', '2020-05-09 18:38:39', 'Defined', '존버 is short for 존나 버티다(meaning: hold freaking fast, stick to what you\'ve got) used when the stock market crashed and you lose money but you stick to the stocks you got till the market rises again because you can\'t do it otherwise. It\'s also used when you\'re going through something unpleasant, something you don\'t want to do but you have to. /  / 역시 존버가 답이다 (존버 is the best decision you could ever make)'),
(41, '존버', 'dropdictionary', '2020-05-09 18:43:41', 'Edited', '존버 is short for 존나 버티다(meaning: hold freaking fast, stick to what you\'ve got) used to describe a situation where the stock market crashed so you lose money but you hold the stocks you bought till the market rises again because you can\'t do it otherwise. It\'s also used when you\'re going through something unpleasant, something you don\'t want to do but you have to. /  / 역시 존버가 답이다 (존버 is the best decision you could ever make)'),
(42, '존버', 'dropdictionary', '2020-05-09 18:44:31', 'Edited', '존버 is short for 존나 버티다(meaning: hold freaking fast, stick to what you\'ve got) used to describe a situation where the stock market crashed so you lose money but you hold the stocks you bought till the market rises again because you can\'t do it otherwise. It\'s also used when you\'re going through something unpleasant, something you don\'t want to do but you have to. / hodl / 역시 존버가 답이다 (존버 is the best decision you could ever make)'),
(43, '존예', 'dropdictionary', '2020-05-10 14:48:22', 'Defined', '존예 is a shortened form of the word 존나 예쁘다 meaning \"freaking beautiful\". It\'s used to describe a person who looks beautiful and amazing /  / 와.. 저 사람은 실물이 더 존예네'),
(44, '존멋', 'dropdictionary', '2020-05-10 14:49:21', 'Defined', 'Short for 존나 잘생겼다 meaning \"freaking good looking\" used to describe a person who looks handsome and amazing / 존멋 / 얘 좀 봐 존잘이지 않아?'),
(45, '프사', 'dropdictionary', '2020-05-10 14:50:19', 'Defined', 'the abbreviation for 프로필 사진(profile sajin) meaning \"profile picture\", the image that represents you on social media. /  / 고양이 프사'),
(46, '근자감', 'dropdictionary', '2020-05-10 14:51:38', 'Defined', 'the abbreviation for 근거 없는 자신감 meaning \"groundless self-confidence\" used when someone is having too much self-confidence based on nothing/without any proof. /  / 근자감 보소'),
(47, '근자감', 'dropdictionary', '2020-05-10 14:51:38', 'Defined', 'the abbreviation for 근거 없는 자신감 meaning \"groundless self-confidence\" used when someone is having too much self-confidence based on nothing/without any proof. /  / 근자감 보소'),
(48, 'RGRG', 'dropdictionary', '2020-05-10 15:10:55', 'Edited', 'RGRG is pronounced/written as알쥐알쥐 in korean which basically means \"Yeah I know, I know what you\'re talking about.\" \r\n\r\nPeople noticed that how the korean famous youtuber \"wassup man\" saying \"알지\" sounds like \"알쥐\" and they made a meme about it so that\'s where this phrase came from.\r\n\r\nIt also can be used in a sarcastic way  / 알mouse / 아 그 뉴스? 나도 RGRG..'),
(49, 'RGRG', 'dropdictionary', '2020-05-10 15:11:01', 'Edited', 'RGRG is pronounced/written as 알쥐알쥐 in korean which basically means \"Yeah I know, I know what you\'re talking about.\" \r\n\r\nPeople noticed that how the korean famous youtuber \"wassup man\" saying \"알지\" sounds like \"알쥐\" and they made a meme about it so that\'s where this phrase came from.\r\n\r\nIt also can be used in a sarcastic way  / 알mouse / 아 그 뉴스? 나도 RGRG..'),
(50, '헐랭방구', '묘', '2020-05-11 11:26:07', 'Defined', '● 헐랭방구 Is a combination of 헐랭 and 방구.\r\n\r\n- 헐랭 is more cutier version of 헐, 헉 (=Wow i got surprised)\r\n- 방구 means cute version of FART To emphasize the word of the front word; 헐랭 in particular(!) ways. (*방귀 in korean) ????????\r\n\r\n● MEAN? \r\n1. When you surprised at something or someone in a good way, ???????????? you can you this word which is more cutier version than 헐, 헉 (*which means i got surprised or shocked like that.)\r\n2. When you feel ridiculous or  unbelievable to accept the situations you face right now, you can say 헐랭방구. / 헐랭, 헐  / 헐랭방구 이 강아지 진짜 귀엽다\r\n헐랭방구 나는 너가 다른 사람인 줄 알았어!\r\n와.. 진짜 뉴스들 다 헐랭방구네. 믿을 수 없어. \r\n '),
(51, '헐랭방구', '묘', '2020-05-11 11:30:14', 'Edited', '● 헐랭방구 Is a combination of 헐랭 and 방구.\r\n\r\n- 헐랭 is more cutier version of 헐, 헉 (=Wow i got surprised)\r\n- 방구 means cute version of FART To emphasize the word of the front word; 헐랭 in particular(!) ways. (*방귀 in korean) ????????\r\n\r\n● MEAN? \r\n1. When you surprised at something or someone in a good way, ???????????? you can you this word which is more cutier version than 헐, 헉 (*which means i got surprised or shocked like that.)\r\n2. When you feel ridiculous or  unbelievable to accept the situations you face right now, you can say 헐랭방구. / 헐랭, 헐  / 헐랭방구 이 강아지 진짜 귀엽다.\r\n\r\n헐랭방구 나는 너가 다른 사람인 줄 알았어!.\r\n\r\n와.. 진짜 뉴스들 다 헐랭방구네. 믿을 수 없어. \r\n '),
(52, '발연기', 'dropdictionary', '2020-05-11 22:15:15', 'Defined', '발연기 is a shortened form of the expression 발로 연기하다 which basically means \"to suck at acting\".\r\n\r\n발연기 is made up of two words: 발 and 연기(acting) and the meaning of 발(general meaningng: feet) here is something negative or bad(i.e. 발번역,  발컨트롤). /  / 와 저 배우 발연기 하는 것 좀 봐'),
(53, 'ㅉㅉ', 'dropdictionary', '2020-05-11 22:22:18', 'Defined', 'ㅉㅉ is short for 쯧쯧 meaning \"shaking my head\" used when something/someone is disappointing or stupid. /  / ㅉㅉ.. 너 대체 뭐하니? (smh what the heck are you doing?)'),
(54, '헐랭방구', 'dropdictionary', '2020-05-12 00:53:21', 'Edited', '● 헐랭방구 Is a combination of 헐랭 and 방구.\r\n\r\n- 헐랭 is a cute version of 헐/헉 (=Wow, i got surprised/shocked)\r\n- 방구 is a cute version of FART used to emphasize the word 헐랭 in some ways. (*방귀 in korean)\r\n\r\n● MEANING? \r\n1. It\'s used when you got surprised at something or someone in a fun way. you can you this word which is cuter than just saying 헐, 헉.\r\n2. Used when you feel ridiculous or  unbelievable to accept the situations you\'re facing right now, you can say 헐랭방구. / 헐랭, 헐  / 헐랭방구 이 강아지 진짜 귀엽다.\r\n\r\n헐랭방구 나는 너가 다른 사람인 줄 알았어!.\r\n\r\n와.. 진짜 뉴스들 다 헐랭방구네. 믿을 수 없어. \r\n '),
(55, '헐랭방구', 'dropdictionary', '2020-05-12 00:53:56', 'Edited', '● 헐랭방구 Is a combination of 헐랭 and 방구.\r\n\r\n- 헐랭 is a cute version of 헐/헉 (=Wow, i got surprised/shocked)\r\n- 방구 is a cute version of FART used to emphasize the word 헐랭 in some ways. (*방귀 in korean)\r\n\r\n● MEANING? \r\n1. It\'s used when you got surprised at something or someone in a fun way. you can you this word which is cuter than just saying 헐, 헉.\r\n\r\n2. Used when you feel ridiculous or unbelievable to accept the situations you\'re facing right now. / 헐랭, 헐  / 헐랭방구 이 강아지 진짜 귀엽다.\r\n\r\n헐랭방구 나는 너가 다른 사람인 줄 알았어!.\r\n\r\n와.. 진짜 뉴스들 다 헐랭방구네. 믿을 수 없어. \r\n '),
(56, 'ㅋㅋㅋ', 'dropdictionary', '2020-05-13 23:52:35', 'Defined', 'A simple way to write laughter online. It\'s used when you see something funny. ㅋㅋㅋ comes from the expression 크크크(hahhaha, lol) but it\'s shortened now and it also could be used in a sarcastic way in some cases. /  / 개웃겨 ㅋㅋㅋㅋㅋㅋㅋ (so funny looool)'),
(57, '셀카', 'dropdictionary', '2020-05-13 23:56:02', 'Defined', '셀카(selca) is a konglish term for selfie; It\'s short for 셀프 카메라(Self camera) meaning \"a photo of you taken by yourself\" /  / 셀카 찍자! (Let\'s take a selfie!)'),
(58, '베프', 'dropdictionary', '2020-05-14 00:05:03', 'Defined', '베프 is a short term for 베스트 프렌드(Best Friend) literally meaning your best friend, or your closest friend. / 절친 / 나 새로 베프 생겼다~ (i got a new bff)!'),
(59, '베프', 'dropdictionary', '2020-05-14 00:05:21', 'Edited', '베프 is a short term for 베스트 프렌드(Best Friend) literally meaning your best friend, closest friend. / 절친 / 나 새로 베프 생겼다~ (i got a new bff)!'),
(60, '베프', 'dropdictionary', '2020-05-14 00:13:36', 'Edited', '베프 is a short term for 베스트 프렌드(Best Friend) literally meaning your best, closest friend. / 절친 / 나 새로 베프 생겼다~ (i got a new bff)!'),
(61, '베프', 'dropdictionary', '2020-05-14 00:13:53', 'Edited', '베프 is a short term for 베스트 프렌드(Best Friend) literally meaning your best, closest friend. / 절친 / 나 새로 베프 생겼다! (i got a new bff!)'),
(62, '미자', 'dropdictionary', '2020-05-14 12:50:40', 'Defined', 'Abbreviated term for 미성년자 meaninh a minor, someone under the certain age. A person under the age of 19 is \"미자\" in korea /  / 너 아직 미자야? ㅋㅋㅋ'),
(63, '종특', 'dropdictionary', '2020-05-14 13:03:24', 'Defined', '종특 comes from the word 종족 특징(english: racial trait) meaning what a specific group of people tend to do, what they usually do. /  / 단합 잘하는 거 한국인들 종특인듯'),
(64, '인생샷', 'dropdictionary', '2020-05-14 13:09:30', 'Defined', '인생샷 is a combination of the two words 인생(life) and 샷(shot) meaning \"the best picture/selfie you could ever take in your entire life\" /  / 이거 진심 인생샷인듯(it\'s like my best selfie!!!!)'),
(65, '인생샷', 'dropdictionary', '2020-05-14 14:55:51', 'Edited', '인생샷 is a combination of the two words 인생(life) and 샷(shot) meaning \"the best picture/selfie you could ever take in your entire life\" /  / 이거 진심 인생샷인듯(it\'s like my best selfie ever!!!!)'),
(66, '개소리', 'dropdictionary', '2020-05-15 01:42:51', 'Defined', '개소리 is used when someone said bullshit, or something does not make any sense at all.\r\n\r\nYou should be careful using this term since it might offend someone hearing it. / 개솔 / 개소리 작작해! (Stop your bullshit!)'),
(67, '존웃', 'dropdictionary', '2020-05-16 00:35:48', 'Defined', '존웃 is short for 존나 웃기다 meaning \"freaking hilarious\" used when you see something absolutely funny, things like comedy tv shows or memes!\r\n\r\n존 in slang is typically a shortened form of the swear word \"존나(freaking)\" such as \"존\"예, \"존\"잘, and \"존\"귀 used a lot on the internet. / 졸웃, 현웃, 개웃 / ㅋㅋㅋㅋㅋ 짤 존웃이네 (That meme is freaking hilarious)'),
(68, '지리다', 'dropdictionary', '2020-05-16 01:13:14', 'Defined', 'It originally meant \"to pee your pants\" but its meaning has changed a bit over time and now It basically means \"awesome\" or \"dope\" used to express admiration / 지렸다, 지림 / 미친 너 시험 하나도 안 탈렸어? 지린다... (Omg you got nothing wrong on the test? Jilinda...)'),
(69, '지리다', 'dropdictionary', '2020-05-16 01:13:24', 'Edited', 'It originally meant \"to pee your pants\" but its meaning has changed a bit over time and now It basically means \"awesome\" or \"dope\". / 지렸다, 지림 / 미친 너 시험 하나도 안 탈렸어? 지린다... (Omg you got nothing wrong on the test? Jilinda...)'),
(70, '개소리', 'dropdictionary', '2020-05-16 01:18:05', 'Edited', '개소리 is used when something is bullshit or someone said something that does not make any sense at all.\r\n\r\nYou should be careful using this term since it might offend someone hearing it. / 개솔 / 개소리 작작해! (Stop your bullshit!)'),
(71, '존웃', 'dropdictionary', '2020-05-16 01:23:43', 'Edited', '존웃 is short for 존나 웃기다 meaning \"freaking hilarious\" used when you see something absolutely funny, things like comedy tv shows or memes!\r\n\r\n존 in slang is typically a shortened form of the swear word \"존나(freaking)\" such as \'존\'예, \'존\'잘, and \'존\'귀 used a lot on the internet. / 졸웃, 현웃, 개웃 / ㅋㅋㅋㅋㅋ 짤 존웃이네 (That meme is freaking hilarious)'),
(72, '개소리', 'dropdictionary', '2020-05-16 01:27:22', 'Edited', '개소리 is used when something is bullshit or someone said something that does not make any sense at all.\r\n\r\nYou should be careful using this term since it might offend someone when you use it. / 개솔 / 개소리 작작해! (Stop your bullshit!)'),
(73, '지리다', 'dropdictionary', '2020-05-16 01:28:41', 'Edited', 'It originally meant \"to pee your pants\" but its meaning has changed a bit over time and now It basically means \"awesome\" or \"dope\". / 지렸다, 지림 / 미친 너 시험 하나도 안 틀렸어? 지린다... (Omg you got nothing wrong on the test? Jilinda...)'),
(74, '지리다', 'dropdictionary', '2020-05-16 01:29:14', 'Edited', 'It originally meant \"to pee your pants\" but its meaning has changed a bit over time and now It basically means \"awesome\" or \"dope\". / 지렸다, 지림 / 미친 너 시험 문제 하나도 안 틀렸어? 지린다... (Omg you got nothing wrong on the test? Jilinda...)'),
(75, '개소리', 'dropdictionary', '2020-05-16 01:30:13', 'Edited', '개소리 is used when something is bullshit or someone said something that does not make any sense at all.\r\n\r\nYou should be careful using this term since it might offend someone if you use it. / 개솔 / 개소리 작작해! (Stop your bullshit!)'),
(76, '개소리', 'dropdictionary', '2020-05-16 01:31:07', 'Edited', '개소리 is used when something is bullshit or someone said something that does not make any sense at all.\r\n\r\nYou should be careful using this term since it might offend someone if you use it. / 개솔 / 개소리 작작해! (Stop thar bullshit!)'),
(77, '개소리', 'dropdictionary', '2020-05-16 01:31:12', 'Edited', '개소리 is used when something is bullshit or someone said something that does not make any sense at all.\r\n\r\nYou should be careful using this term since it might offend someone if you use it. / 개솔 / 개소리 작작해! (Stop that bullshit!)'),
(78, 'Hoxy', 'dropdictionary', '2020-05-16 01:52:35', 'Edited', 'Hoxy is the korean word \"혹시(By any chance)\" just spelled in english.\r\n\r\nIt sounds more polite if you say it while asking for help or something like that but in slang, It\'s just fun meaningless wordplay. / 혹쉬 / 저기.. Hoxy 물티슈 좀 줄래?'),
(79, '읽씹', 'dropdictionary', '2020-05-16 09:00:58', 'Defined', 'Short for 읽고 씹다 (left you on read). It literally means you read a message but now respond  /  / '),
(80, '읽씹', 'dropdictionary', '2020-05-16 09:05:42', 'Edited', 'Short for 읽고 씹다 (left you on read). It literallg used when you read a message sent to you but not respond to it.\r\n\r\nThere\'s another term called 안읽씹 which typically means \"left you on unread\" /  / '),
(81, '읽씹', 'dropdictionary', '2020-05-16 09:06:53', 'Edited', 'Short for 읽고 씹다(left you on read). It literallg used when you read a message sent to you but not respond to it.\r\n\r\nThere\'s another term called 안읽씹 which typically means \"left you on unread\" /  / 읽씹을 했다고? 진심 너무했네 (oh did they left you on read? So ruthless)'),
(82, '읽씹', 'dropdictionary', '2020-05-16 16:56:21', 'Edited', 'Short for 읽고 씹다(left you on read). It\'s used when you read a message sent to you but not respond to it.\r\n\r\nThere\'s another term called 안읽씹 which typically means \"left you on unread\" /  / 읽씹을 했다고? 진심 너무했네 (oh did they left you on read? So ruthless)'),
(83, 'ㅇㅉ', 'dropdictionary', '2020-05-17 00:10:51', 'Defined', 'ㅇㅉ comes from the expression 어쩌라고 meaning \"So what?\", \"Who cares tho?\" which has shortened to 어쩔 and which became just ㅇㅉ\r\n\r\nIt\'s used to express anger when someone said something offensive or unpleasant implying that you want to stop talking with them or about the subject. / 저쩔 / 그래서 ㅇㅉ? 걔들 얘기 그만 좀 해 (So what? Stop talking about them)'),
(84, 'ㅇㅉ', 'dropdictionary', '2020-05-17 00:12:59', 'Edited', 'ㅇㅉ comes from the expression 어쩌라고 meaning \"So what?\", \"Who cares tho?\" which has shortened to 어쩔 and then became just ㅇㅉ\r\n\r\nIt\'s used to express anger implying that you want to stop talking with them or about the subject. / 저쩔 / 그래서 ㅇㅉ? 걔들 얘기 그만 좀 해 (So what? Stop talking about them)'),
(85, 'ㅂㄹ', 'dropdictionary', '2020-05-17 01:11:44', 'Defined', 'ㅂㄹ is short for 별로 meaning \"nah\", \"I don\'t like that idea\". / 별루  / 근데 그거 ㅂㄹ인듯 .. (I don\'t like it tho)'),
(86, '헐랭방구', 'dropdictionary', '2020-05-17 11:57:08', 'Edited', '● 헐랭방구 Is a combination of 헐랭 and 방구.\r\n\r\n- 헐랭 is a cute version of 헐/헉 (=Wow, i got surprised/shocked)\r\n- 방구 is a cute version of FART used to emphasize the word 헐랭 in some ways. (*방귀 in korean)\r\n\r\n● MEANING? \r\n1. It\'s used when you got surprised at something or someone in a fun way. you can you this word which is cuter than just saying 헐, 헉.\r\n\r\n2. Used when you feel ridiculous or unbelievable to accept the situations you\'re facing right now. /  / 헐랭, 헐  / 헐랭방구 이 강아지 진짜 귀엽다.\r\n헐랭방구 나는 너가 다른 사람인 줄 알았어!.\r\n와.. 진짜 뉴스들 다 헐랭방구네. 믿을 수 없어.'),
(87, '개소리', 'dropdictionary', '2020-05-17 11:59:15', 'Edited', '개소리 is used when something is bullshit or someone said something that does not make any sense at all.\r\n\r\nYou should be careful using this term since it might offend someone if you use it. / Gaesori / 개솔 / 개소리 작작해! (Stop that bullshit!)'),
(88, '갑분싸', 'dropdictionary', '2020-05-17 12:55:24', 'Edited', 'the abbreviation for \'갑자기 분위기 싸해지다\' (to make a sudden silence). Used to describe the situation where the whole room/things got awkward and serious because someone made a bad dad joke, said something that shouldn\'t have said, or just took everything so serious that you can\'t keep a conversation going anymore / gab-bun-ssa /  / 와 갑분싸 오진다'),
(89, '남돌', 'dropdictionary', '2020-05-18 02:26:59', 'Defined', 'Shortened from of the phrase 남자 아이돌(namja idol) meaning \"a member from a boy band\" and there\'s this phrase called 남돌 그룹(Namdol group) which typically means \"boy band\".\r\n\r\n아이돌 comes from the english word \"idol\", someone tha you look up to but in korea it simply means a member of a girl group/boy band. / namdol /  / 새로운 남돌 그룹 (New boy band/boy group)'),
(90, '찐이다', 'dropdictionary', '2020-05-18 12:22:50', 'Defined', '찐이다 refers to something that\'s real. It originated from the word 진짜다 (It\'s real) and people started to put an emphasis on 진(眞) which then became 찐(이다) / Jjinida / 레알, ㄹㅇ / 뭐가 찐이야? (Which one is real?)'),
(91, '노답', 'dropdictionary', '2020-05-18 12:44:36', 'Defined', '노답 comes from the korean expression 답이 없다 (Literal meaning: There\'s no answer, Actual meaning: There\'s no way (right \"answer\") to fix someone or sth) used to describe someone or something hopeless, out of one\'s hand. / Nodab / 개노답 / 너무 답답해 죽겠네 너 진짜 노답이다.. (Omg it\'s frustrating you\'re just no dab)'),
(92, '노답', 'dropdictionary', '2020-05-18 12:45:15', 'Edited', '노답 comes from the korean expression 답이 없다 (Literal meaning: There\'s no answer, Actual meaning: There\'s no way, the right \"answer\" to fix someone or sth) used to describe someone or something hopeless, out of one\'s hand. / Nodab / 개노답 / 너무 답답해 죽겠네 너 진짜 노답이다.. (Omg it\'s frustrating you\'re just no dab)'),
(93, '탈덕하다', 'dropdictionary', '2020-05-18 17:24:17', 'Edited', 'To stop supporting someone due to their behaviour (being racist, seixst, or homophobic) or just because you don\'t like them anymore\r\n\r\n탈 comes from the chinnese word 脫 meaning \'to quit\'\r\n덕 is short for 덕질하다/덕후질하다 which means \"to stan, support someone\" / tal-duk-ha-da /  / 너 설마 탈덕했냐? (Oh so you don\'t stan them anymore?)'),
(94, 'ㅇㅇ', 'dropdictionary', '2020-05-19 12:29:58', 'Defined', '응응(okay), a shortened respond. \r\n\r\n* Warning: You only need to use it to your close friends since it\'s way informal and some people find it a bit rude / eung eung /  / - 잘 지내? (How are you?)\r\n- ㅇㅇ (kk)'),
(95, '읽씹', 'dropdictionary', '2020-05-19 12:35:10', 'Edited', 'Short for 읽고 씹다(leave you on read); It\'s used when you read a message sent to you but not respond to it.\r\n\r\nThere\'s another term called 안읽씹 which typically means \"left you on unread\" / Ikssib /  / 읽씹을 했다고? 진심 너무했네 (oh did they left you on read? So ruthless)'),
(96, 'ㅇㅉ', 'dropdictionary', '2020-05-19 12:45:36', 'Edited', 'ㅇㅉ comes from the expression 어쩌라고 meaning \"So what?\", \"Who cares tho?\" which has shortened to 어쩔 and then became just ㅇㅉ\r\n\r\nIt\'s used to express anger implying that you want to stop talking with them or about the subject. /  / 저쩔, 저쩌라고, ㅇㅉㄹㄱ / 그래서 ㅇㅉ? 걔들 얘기 그만 좀 해 (So what? Stop talking about them)'),
(97, '노답', 'dropdictionary', '2020-05-19 12:58:52', 'Edited', '노답 comes from the korean expression 답이 없다 (Literal translation: There\'s no answer, Meaning: There\'s no way/the right \"answer\" to fix someone or sth) used to describe someone or something hopeless, out of one\'s hand. / Nodab / 개노답 / 너무 답답해 죽겠네 너 진짜 노답이다.. (Omg it\'s frustrating you\'re just no dab)'),
(98, 'ㅗ', 'dropdictionary', '2020-05-20 13:37:42', 'Defined', 'ㅗ is a hand gesture meaning \"f*ck you/f*ck off\" because ㅗ looks like you\'re holding up the middle finger. /  /  / ㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗ'),
(99, 'ㅗ', 'dropdictionary', '2020-05-20 13:38:14', 'Edited', 'ㅗ is a hand gesture meaning \"f*ck you/f*ck off\" because ㅗ looks like you\'re holding up the middle finger. /  /  / ㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗ 엿먹어라'),
(100, 'ㅗ', 'dropdictionary', '2020-05-20 13:46:00', 'Edited', 'ㅗ is a hand gesture meaning \"f*ck you/f*ck off\" because ㅗ looks like you\'re holding up your middle finger. /  /  / ㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗ 엿먹어라'),
(101, 'ㅈㄹ', 'dropdictionary', '2020-05-21 20:01:07', 'Defined', 'short for 지랄(Jiral) meaing \"bullshit\" used in an offensive way /  / 개소리 / ㅈㄹ ㄴㄴ (지랄 노노, stop your bullshit)'),
(102, '팩트폭력', 'dropdictionary', '2020-05-21 20:15:06', 'Defined', 'comes from two words \"팩트\" and \"폭력\". 팩트 is an english term for \"fact\" just spelled in korean while 폭력 means \"violence\" so basically the literal translation should be \"fact violence\" But It actually refers to a situation where someone said a straight-up fact so there\'s no way to deny it and the one that was wrong along the way is getting hurt by the truth just like they got beaten by the facts completely.\r\n\r\ntruths hurt! / Fact-pog-lyeog / 팩폭 / 와 팩폭 지림!'),
(103, '팩트폭력', 'dropdictionary', '2020-05-21 20:17:32', 'Edited', 'comes from two words \"팩트\" and \"폭력\"; 팩트 is an english term for \"fact\" just spelled in korean while 폭력 means \"violence\" so basically the literal translation should be \"fact violence\" But It actually refers to a situation where someone said a straight-up fact so there\'s no way to deny it and the one that was wrong along the way is getting hurt by the truth just like they got beaten by the facts. related english idiom is \"truth hurts\" / Fact-pog-lyeog / 팩폭 / 와 팩폭 지림!'),
(104, '팩트폭력', 'dropdictionary', '2020-05-21 20:17:51', 'Edited', 'comes from two words \"팩트\" and \"폭력\"; 팩트 is an english term for \"fact\" just spelled in korean while 폭력 means \"violence\" so basically the literal translation should be \"fact violence\" But It actually refers to a situation where someone said a straight-up fact so there\'s no way to deny it and the one that was wrong along the way is getting hurt by the truth just like they got beaten by the facts. related english idiom is \"truth hurts\". / Fact-pog-lyeog / 팩폭(shortened), 팩력배 / 와 팩폭 지림!'),
(105, '콜', 'dropdictionary', '2020-05-21 20:19:52', 'Defined', 'Meaning) I\'m down, deal, I\'m cool with it, agreed! / Call / 좋아! / - 내일 영화 콜?\r\n- 콜!'),
(106, '짤', 'dropdictionary', '2020-05-21 20:22:24', 'Defined', 'meme, a photo that\'s funny, iconic, or popular. / JJal / 짤방 / 짤줍 감사요 (짤줍=짤을 줍는다, save the meme)\r\nThanks i\'ll save the meme.'),
(107, '스루하다', 'dropdictionary', '2020-05-21 20:28:29', 'Defined', 'through(하다); kongish term meaning \"to ignore something, to go away\" usually used when two people can\'t agree with each other fighting over something and one wants to end this argument right away. / through-ha-da / 무시하다, 그냥 지나치다 / 기분 나쁘면 그냥 스루하면 되잖아?\r\n(If you find it offensive, why don\'t you just \"through (ignore)\" it?)'),
(108, '팩트폭력', 'dropdictionary', '2020-05-21 20:45:24', 'Edited', 'comes from two words \"팩트\" and \"폭력\". 팩트 is an english term for \"fact\" just spelled in korean while 폭력 means \"violence\" so basically the literal translation should be \"fact violence\" and It actually refers to a situation where someone said a straight-up fact so there\'s no way to deny it and the one that was wrong along the way is getting hurt by the truth just like they got beaten by the facts. related english idiom is \"truth hurts\". / Fact-pog-lyeog / 팩폭(shortened), 팩력배 / 와 팩폭 지림!'),
(109, '스루하다', 'dropdictionary', '2020-05-22 12:48:27', 'Edited', 'through(하다); konish term meaning \"to ignore something, to go away from something\" usually used when two people can\'t agree with each other fighting over something and one wants to end the argument right away. / through-ha-da / 무시하다, 그냥 지나치다 / 기분 나쁘면 그냥 스루하면 되잖아?\r\nIf you find it offensive, why don\'t you just \"through (ignore)\" it?'),
(110, '끌올하다', 'dropdictionary', '2020-05-24 20:21:41', 'Defined', 'Short for 끌어 올리다 meaning \"to bring something up again, especially the past controversy or drama\". / kkeul-ol-ha-da /  / 끌올 좀 그만 하세요!\r\nDon\'t bring this up again!'),
(111, '끌올하다', 'dropdictionary', '2020-05-24 20:22:05', 'Edited', 'Short for 끌어 올리다 meaning \"to bring something up again, especially the past controversy or drama\" / kkeul-ol-ha-da / 다시 가져오다 / 끌올 좀 그만 하세요!\r\nDon\'t bring this up again!'),
(112, '끌올하다', 'dropdictionary', '2020-05-24 20:22:29', 'Edited', 'Short for 끌어 올리다(translation: to raise) meaning \"to bring something up again, especially the past controversy or drama\" / kkeul-ol-ha-da / 다시 가져오다 / 끌올 좀 그만 하세요!\r\nDon\'t bring this up again!'),
(113, 'ㅂㅂ', 'dropdictionary', '2020-05-24 20:29:17', 'Defined', 'ㅂㅂ is short for 바바 which is a shortened form of the expression 바이바이 meaning \"bye bye\" /  / ㅂㅇㅂㅇ, ㅂㅇ / 나 갈게 ㅂㅂㅂ (I gotta go bye)'),
(114, '맛집', 'dropdictionary', '2020-05-24 21:52:30', 'Defined', 'Originally the korean term for \"Popular restaurant\" but in slang, it refers to someone/smth good at something, having a superior factor (i.e. 셀카 맛집 - someone always takeing a nice selfie, 비주얼 맛집 someone always looking good) / mat-jib /  / '),
(115, '맛집', 'dropdictionary', '2020-05-24 21:53:01', 'Edited', 'Originally the korean term for \"Popular restaurant\" but in slang, it refers to someone good at something, having a superior factor (i.e. 셀카 맛집 - someone always takeing a nice selfie, 비주얼 맛집 - someone always looking good) / mat-jib /  / '),
(116, '트친', 'dropdictionary', '2020-05-24 22:12:56', 'Defined', '트친 is short for \"트위터 친구(Twitter friend)\"; It\'s used to describe a mutual, someone you interact with on twitter. / teu-chin /  / 트친소(트위터 친구를 소개합니다, a tweet where you can get more mutuals)'),
(117, '미드', 'dropdictionary', '2020-05-24 22:29:20', 'Defined', '미드 is a shortened term for 미국 드라마 which literally translated as \"American drama (tv shows)\". The same goes for 영드 refering to \"British tv shows\". / Mi-deu /  / 재밌는 미드 추천 좀요! (Any funny american tv show recommendations?!)'),
(118, '끌올하다', 'dropdictionary', '2020-05-25 09:57:31', 'Edited', 'Short for 끌어 올리다 meaning \"to bring something up again, especially the past controversy or drama\" / kkeul-ol-ha-da / 다시 가져오다 / 끌올 좀 그만 하세요!\r\nDon\'t bring this up again!'),
(119, 'ㅗ', 'dropdictionary', '2020-05-25 10:07:44', 'Edited', 'ㅗ means \"f*ck you/f*ck off\" because ㅗ looks like you\'re holding up your middle finger. /  /  / ㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗ 엿먹어라'),
(120, '동공지진', 'dropdictionary', '2020-05-25 11:12:25', 'Defined', '동공지진 is a combination of two words 동공(pupil) and 지진(earthquake) which typically means \"eyes shaking like the earthquake is happening (because you\'re surprised as hell)\", usually used to express surprise and confusion. / dong-gong-ji-jin /  / 와 동공지진 일어날 뻔.. 너무 당황스러웠어 (Whoa I was about to have my eyes shaking I just didn\'t know what to do)'),
(121, 'ㅈㅂ', 'dropdictionary', '2020-05-25 12:20:49', 'Defined', '제발 (Please) /  /  / ㅈㅂ... (Please...)'),
(122, '사바사', 'dropdictionary', '2020-05-27 11:08:09', 'Defined', '사바사 is a shortened form of the expression 사람 바이 사람(person by person) meaning \"It depends on the person\" / sabasa / 케바케 (Case by case, it depends) / 그건 사바사야 (it depends on the person)'),
(123, '관종', 'dropdictionary', '2020-05-27 11:34:22', 'Defined', 'A shortening of 관심종자 (Attention seeker) typcially refering to someone who does weird stuff, something normal people wouldn\'t do because they are desprate for attention / gawnjong /  / 관종짓 좀 그만해 (stop being an attetion seeker)'),
(124, 'ㅇㅈ', 'dropdictionary', '2020-05-27 16:56:31', 'Edited', 'Short for 인정(approval); It\'s casually used when someone says something relatable, true or something you can agree with.\r\n\r\nKoreans tent to prefer a single word or phrase to express their opinion to a complete sentence. / Injeong / 동의 / 그건 ㅇㅈ한다 (Yeah that\'s true)'),
(125, '관종', 'dropdictionary', '2020-05-27 20:58:59', 'Edited', 'A shortening of 관심종자 (Attention seeker) typcially refering to someone who does weird stuff, something normal people wouldn\'t do because they are desprate for attention / gwanjong / 어그로(troll) / 관종짓 좀 그만해 (stop being an attetion seeker)'),
(126, '한글패치', 'dropdictionary', '2020-05-28 23:42:19', 'Defined', '한글패치 is derived from the words \'한글(Hangul)\' and \'패치(Patch)\'; It\'s typically used to describe someone REALLY good at korean, someone that sounds like a native korean speaker as if they got a hangul patch installed into their brain.  / hangul patch /  / 한글 패치 된 외국인 (non-korean really good at korean)'),
(127, '한글패치', 'dropdictionary', '2020-05-28 23:43:26', 'Edited', '한글패치 is derived from the words \'한글(Hangul)\' and \'패치(Patch)\'. It\'s typically used to describe someone REALLY good at korean, someone that sounds like a native korean speaker as if they got a hangul patch installed into their brain.  / hangul patch /  / 한글 패치 된 외국인 (non-korean really good at korean)'),
(128, '작작하다', 'dropdictionary', '2020-06-01 20:17:24', 'Defined', '작작하다 means \'stop doing it\' usually used when someone is being dramatic and trying to cross the line. this term is synonymous w 그만하다 but used in a more aggresive way / jak-jak-ha-da / 그만하다 / 작작해라 진짜! (stop ding it!)\r\n그것 좀 제발 작작해 줄래? (Can you please stop it?)'),
(129, '싸불', 'dropdictionary', '2020-06-01 20:23:01', 'Defined', '싸불 is a shortened form of the word 사(싸)이버 불링 (english: cyberbullying) / ssa-bul /  / 싸불 자제 (no cyberbullying allowed)'),
(130, '별다줄', 'dropdictionary', '2020-06-01 20:37:53', 'Defined', 'short for 별 걸 다 줄이네 meaning \"You guys really shortened every word and phrase\". the fact that this expression is shortened as well but pointing the finger at people shorten things is the ironic part and it\'s the reason this got popularized on the internet  / byul-da-jul /  / 그렇군 별다줄이네 ㄹㅇ.. (ok you really shorten everything literally..)'),
(131, '별다줄', 'dropdictionary', '2020-06-01 20:39:37', 'Edited', 'short for 별 걸 다 줄이네 meaning \"You guys really shortened every word and phrase\". the fact that this expression is shortened but at the same time pointing the finger at people shorten things is the ironic part and that\'s why this got popularized on the internet  / byul-da-jul /  / 그렇군 별다줄이네 ㄹㅇ.. (ok you really shorten everything literally..)'),
(132, '별다줄', 'dropdictionary', '2020-06-01 20:50:32', 'Edited', 'short for 별 걸 다 줄이네 meaning \"You guys really shortened every word and phrase\". the fact that this expression is also shortened but at the same time pointing the finger at people shorten things is the ironic part and that\'s why this got popularized on the internet  / byul-da-jul /  / 그렇군 별다줄이네 ㄹㅇ.. (ok you really shorten everything literally..)'),
(133, '별다줄', 'dropdictionary', '2020-06-01 20:52:14', 'Edited', 'short for 별 걸 다 줄이네 meaning \"You guys really shortened every word and phrase\". the fact that this expression is also shortened but at the same time pointing the finger at people shorten things is the ironic part and that\'s why this got popularized on the internet. / byul-da-jul /  / 그렇군 별다줄이네 ㄹㅇ.. (ok you really shorten everything literally..)'),
(134, '별다줄', 'dropdictionary', '2020-06-01 20:55:18', 'Edited', 'short for 별 걸 다 줄이네 meaning \"You guys really shorten every word and phrase\". the fact that this expression is also shortened and at the same time pointing the finger at people shorten things is the ironic part and that\'s why this got popularized on the internet. / byul-da-jul /  / 그렇군 별다줄이네 ㄹㅇ.. (ok you really shorten everything literally..)'),
(135, '힝', '묘', '2020-06-02 21:52:16', 'Defined', 'When you say 힝, you are so sad that you express the feeling of sadness into a sound(힝) in a cute way.\r\n / hing / heeing  / 흑  / 힝... 고양이 나만 없어..\r\n힝 배고파ㅠ\r\n집가고 싶다 힝힝 ㅠㅠ..'),
(136, '힝', '묘', '2020-06-02 21:53:09', 'Edited', 'When you say 힝, you are so sad that you express the feeling of sadness with the sound(힝) in a cute way. / hing / heeing  / 흑  / 힝... 고양이 나만 없어..\r\n힝 배고파ㅠ\r\n집가고 싶다 힝힝 ㅠㅠ..'),
(137, 'ㄱㄱ', 'dropdictionary', '2020-06-02 22:47:43', 'Defined', 'konglish term; it stands for 고고 (english: Go Go) meaning \"Let\'s go / Let\'s do it\". /  / 고고씽, 가즈아 / - 내일 영화관 가실? (Do you want to go to the movies tomorrow?)\r\n- 좋아 ㄱㄱ (Of course! ㄱㄱ)'),
(138, 'ㅁㅊ', 'dropdictionary', '2020-06-02 23:10:04', 'Defined', 'ㅁㅊ is a shortened version of 미친(meaning: what the hell, That\'s crazy) which has multiple meanings, depending on the context. It\'s typically used to express surprise, shock or disbelief usually used in online conversations. / 미친(Michin) / 돌았다, 돌았네 / 와 미쳤네 (that\'s crazy whoa)\r\nㅁㅊ 이거 뭐야? (WTH.. what is this?)'),
(139, 'ㅎㅎㅎㅎ', 'dropdictionary', '2020-06-03 10:45:54', 'Defined', 'a shortening of 하하하하 (english: hahahaha) used to describe the sound made when someone laughs, same as ㅋㅋㅋㅋ(크크크크) /  / 하하하하, ㅎㅎ / 이 웹툰 존웃 ㅎㅎㅎㅎ\r\n(this cartoon is funny as hell hahaha)'),
(140, 'ㅎㅎㅎㅎ', 'dropdictionary', '2020-06-03 10:46:04', 'Edited', 'a shortening of 하하하하 (english: hahahaha) used to describe the sound made when someone laughs, same as ㅋㅋㅋㅋ(크크크크) /  / 하하하하, ㅎㅎ / 이 웹툰 존웃 ㅎㅎㅎㅎ (this cartoon is funny as hell hahaha)'),
(141, '멘붕', 'dropdictionary', '2020-06-03 21:43:12', 'Edited', '멘붕 is short for \'멘탈붕괴\'; It might sound a bit serious since the direct translation of it is \'having mental breakdown\' but in slang it\'s used to express confusion and shock in a fun/not thar serious way / menbung / 멘탈 털리다 / 와 멘붕 왔어...'),
(142, '멘붕', 'dropdictionary', '2020-06-03 21:43:43', 'Edited', '멘붕 is short for \'멘탈붕괴\'; It might sound a bit serious since the direct translation of it is \'having mental breakdown\' but in slang it\'s used to express confusion and shock in a fun way / menbung / 멘탈 털리다 / 와 멘붕 왔어...'),
(143, '엉엉', 'dropdictionary', '2020-06-03 23:56:33', 'Defined', '엉엉 has two particular meanings, depending on the context. The first one is: the sound is made when someone crys and another one is: used to say 응응(meaning: okay, alright) in a friendly way / eong-eong / ㅇㅇ (ok), 우앵 (the sound of crying) / '),
(144, '엉엉', 'dropdictionary', '2020-06-03 23:57:20', 'Edited', '엉엉 has two particular meanings, depending on the context. The first one is: the sound made when someone crys. another one is: used to say 응응(meaning: okay, alright) in a friendly way / eong-eong / ㅇㅇ (ok), 우앵 (the sound of crying) / '),
(145, '엉엉', 'dropdictionary', '2020-06-03 23:57:59', 'Edited', '엉엉 has two particular meanings, depending on the context. (1) the sound made when someone crys (2) used to say 응응(meaning: okay, alright) in a friendly way / eong-eong / ㅇㅇ (ok), 우앵 (the sound of crying) / '),
(146, '기레기', 'dropdictionary', '2020-06-05 00:56:37', 'Defined', '기레기 is derived from the words 기자(English: gija) and 쓰레기(English: sseu-re-gi) refering to a journalist writing a s*itty article or spreading false imformation. / giregi /  / 기레기들은 진짜 최악이야(Giregi is the worst i stg)'),
(147, '기레기', 'dropdictionary', '2020-06-05 00:57:25', 'Edited', '기레기 is derived from the words 기자(English: gija) and 쓰레기(English: sseu-re-gi) refering to a journalist writing a s*itty article or spreading false imformation. / giregi /  / 기레기들은 진짜 최악이야(Giregi is the worst stg)'),
(148, '기레기', 'dropdictionary', '2020-06-05 00:57:32', 'Edited', '기레기 is derived from the words 기자(English: gija) and 쓰레기(English: sseu-re-gi) refering to a journalist writing a s*itty article or spreading false imformation. / giregi /  / 기레기들은 진짜 최악이야 (Giregi is the worst stg)'),
(149, '기레기', 'dropdictionary', '2020-06-05 01:02:40', 'Edited', '기레기 is derived from the words 기자(English: gija) and 쓰레기(English: sseu-re-gi) refering to a journalist writing a s*itty article or spreading false imformation.\r\n\r\n기레기 often write an exaggerated article for money and provoke peoole. / giregi /  / 기레기들은 진짜 최악이야 (Giregi is the worst stg)');
INSERT INTO `updated` (`id`, `word`, `identifier`, `date`, `updated`, `backup`) VALUES
(150, '기레기', 'dropdictionary', '2020-06-05 01:03:06', 'Edited', '기레기 is derived from the words 기자(English: gija) and 쓰레기(English: sseu-re-gi) refering to a journalist writing a s*itty article or spreading false imformation.\r\n\r\n기레기 often write an exaggerated article for money and provoke people just for attention / giregi /  / 기레기들은 진짜 최악이야 (Giregi is the worst stg)'),
(151, '스밍', 'dropdictionary', '2020-06-05 01:34:24', 'Defined', '스밍 is a shortened version of the english word 스트리밍(english: streaming) primarily used by stans / seuming /  / 새로 나온 노래 스밍 돌리자 (Let\'s stream a new single!)'),
(152, '스밍', 'dropdictionary', '2020-06-05 01:34:37', 'Edited', '스밍 is a shortened version of the english word 스트리밍 (english: streaming) primarily used by stans / seuming /  / 새로 나온 노래 스밍 돌리자! (Let\'s stream a new single!)'),
(153, '스밍', 'dropdictionary', '2020-06-05 01:34:59', 'Edited', '스밍 is a shortened version of the english word 스트리밍 (english: streaming) primarily used by stans on social media. / seuming /  / 새로 나온 노래 스밍 돌리자! (Let\'s stream a new single!)'),
(154, 'whyrano', 'dropdictionary', '2020-06-07 00:00:23', 'Defined', 'whyrano(korean: 와이라노) is a korean slang term meaning \"what\'s wrong? / what\'s going on\"; it\'s a dialet spoken somewhere around gyeongsangdo and got popularized on the internet in early 2020 / 와이라노 / 왜 그러니? / whyrano whyrano.. '),
(155, 'ㅈㄹ', 'dropdictionary', '2020-06-07 00:03:16', 'Edited', 'short for 지랄(Jiral) meaing \"bullshit\" used to express anger or disbelief. /  / 개소리 / ㅈㄹ ㄴㄴ (지랄 노노, stop your bullshit)'),
(156, '개이득', 'dropdictionary', '2020-06-07 00:14:42', 'Defined', 'It\'s a mix of two words 개 and 이득 meaning \"so much value\". 개 is an emphasis put on the first letter of a word meaning really. 이득 is the korean term for value, refering to something you\'ve got effortlessly / ㄱㅇㄷ / 득템 / 우와 이거 무료로 받았다! ㄱㅇㄷ (wow i got this for free! so much value)'),
(157, '개이득', 'dropdictionary', '2020-06-07 00:18:44', 'Edited', '개이득 is a mix of two words 개 and 이득 meaning \"so much value\". 개 is an emphasis put on the first letter of a word meaning really and 이득 is a korean term for value/advantage refering to something you\'ve got effortlessly. / gae-i-deuk / ㄱㅇㄷ, 득템, 개꿀 / 우와 이거 무료로 받았다! ㄱㅇㄷ (wow i got this free! so much value)'),
(158, '스밍', 'dropdictionary', '2020-06-07 00:19:31', 'Edited', '스밍 is a shortened version of the english word streaming (korean: 스트리밍) primarily used by stans on social media. / seuming /  / 새로 나온 노래 스밍 돌리자! (Let\'s stream a new single!)'),
(165, '썸', 'dropdictionary', '2020-06-09 23:59:40', 'Defined', '썸 is derived from the english word \'something\' used to describe a relationship where two people have a thing for each other, like there\'s \'something\' going on between two people / some /  / 오 너네 둘이 썸 타? (Oh so there\'s going on bewteen you two!!)'),
(166, '썸', 'dropdictionary', '2020-06-10 00:01:17', 'Edited', '썸 is derived from the english word \'something\' used to describe a relationship where two people have a thing for each other even tho they didn\'t talk about how they feel, just like there\'s \'something\' going on between two people / some /  / 오 너네 둘이 썸 타? (Oh so there\'s going on bewteen you two!!)'),
(167, '썸', 'dropdictionary', '2020-06-10 00:01:23', 'Edited', '썸 is derived from the english word \'something\' used to describe a relationship where two people have a thing for each other even tho they didn\'t talk about how they feel, just like there\'s \'something\' going on between two people. / some /  / 오 너네 둘이 썸 타? (Oh so there\'s going on bewteen you two!!)'),
(168, '움짤', '49.144.142.27', '2020-06-10 13:13:45', 'Defined', 'GIF pictures / um- jjal /  / 움짤 보내주세요\r\nSend me some GIF'),
(169, '넘', 'somin_kim', '2020-06-10 13:16:57', 'Defined', '넘 means \"very\", shortened form of 너무 / neom / 아주, 너무, 진짜 / 그 아이가 너무 예쁘지 않아? \r\nIsn\'t that child so pretty? '),
(170, '개뿔', 'somin_kim', '2020-06-10 13:21:14', 'Defined', 'similar to the word 지랄. Mostly used as \"00 무슨 개뿔?\" If it\'s used that way it can mean \"Forget 00\' / ggae bbul / 지랄 / 공부는 무슨 개뿔? 나 그냥 영화나 볼거야 \r\nForget studying. I\'m just gonna watch movies. '),
(171, '응 아니야', 'somin_kim', '2020-06-10 13:22:46', 'Defined', '\"Yeah, no problem\". A response to 감사해/ 고마워  / eung, aniya / 별말씁을  / '),
(172, '현생', 'somin_kim', '2020-06-10 13:26:09', 'Defined', 'The life your are living right now.  / hyeonsaeng / 지듬의 삶 / '),
(173, '현생', 'somin_kim', '2020-06-10 13:26:22', 'Edited', 'The life your are living right now.  / hyeonsaeng / 지금의 삶 / '),
(174, '천상계', 'somin_kim', '2020-06-10 13:28:29', 'Defined', 'heaven / cheonsangkye / 천국 / '),
(175, '아닥', 'somin_kim', '2020-06-10 13:31:53', 'Defined', 'Same meaning with 닥쳐. Contracted form of 아가리 닥쳐 which means shut your pie hole. Very vulgar word.  / adak / 닥쳐 / '),
(176, '움짤', 'dropdictionary', '2020-06-10 20:42:46', 'Edited', 'GIF pictures.\r\nit\'s a shortened version of 움직이는 짤 which is directly translated as \"moving meme\" / um- jjal /  / 움짤 보내주세요\r\nSend me some GIF'),
(177, '썸', 'dropdictionary', '2020-06-10 20:56:15', 'Edited', '썸 is derived from the english word \'something\' used to describe a relationship where two people have a thing for each other even tho they didn\'t confirm it yet, just like there\'s \'something\' going on between two people.\r\n\r\n / some /  / 오 너네 둘이 썸 타? (Oh so there\'s going on bewteen you two!!)'),
(178, '썸', 'dropdictionary', '2020-06-10 21:12:28', 'Edited', '썸 is derived from the english word \'something\' used to describe a relationship where two people have a thing for each other even tho they didn\'t talk about their feelings yet, just like there\'s \'something\' going on between two people. / some /  / 오 너네 둘이 썸 타? (Oh so there\'s going on bewteen you two!!)'),
(179, '썸', 'dropdictionary', '2020-06-10 21:13:21', 'Edited', '썸 is derived from the english word something(korean: 썸띵) used to describe a relationship where two people have a thing for each other even tho they didn\'t talk about their feelings yet, just like there\'s \"something\" going on between two people. / some /  / 오 너네 둘이 썸 타? (Oh so there\'s going on bewteen you two!!)'),
(180, '응 아니야', 'dropdictionary', '2020-06-10 23:00:59', 'Edited', '\"Yeah.. No! / of course not \". A response to a silly question used in a sarcastic way! / eung, aniya /  / - 나 귀여워 (Am i cute?)\r\n- 응 아니야 (of course.. not!)'),
(181, '응 아니야', 'dropdictionary', '2020-06-10 23:01:21', 'Edited', '\"Yeah.. No! / of course not\". A response to a silly question used in a sarcastic way! / eung, aniya /  / - 나 귀여워 (Am i cute?)\r\n- 응 아니야 (of course.. not!)'),
(182, '개뿔', 'dropdictionary', '2020-06-10 23:02:09', 'Edited', 'similar to the word 지랄(bullshit). Mostly used as \"00 무슨 개뿔?\" If it\'s used that way it can mean \"Forget 00\' / ggae bbul / 지랄 / 공부는 무슨 개뿔? 나 그냥 영화나 볼거야 \r\nForget studying. I\'m just gonna watch movies. '),
(183, '보굽다', 'dropdictionary', '2020-06-10 23:08:49', 'Defined', '보굽다 is a shortened form of the expression 보구싶다 meaning \"I miss you!\"\r\n\r\n보굽다 -> 보구십다 -> 보구싶다(보고싶다) /  / 보고싶다 / '),
(184, '보굽다', 'dropdictionary', '2020-06-10 23:15:13', 'Edited', '보굽다 is a shortened form of the expression 보구싶다 meaning \"I miss you\" or \"I can\'t wait to see u again\".\r\n\r\nhow the word changed: 보고싶다 -> 보구십다 -> 보굽다 / bogubda / 보고싶다 / 보굽다 친구야!!! (can\'t wait to see u again!!)'),
(185, '얼죽아', 'dropdictionary', '2020-06-10 23:38:46', 'Defined', 'original form: 얼어 죽어도 아이스 아메리카노\r\nMeaning: I\'ll just go for an Iced americano even if i freeze to death.\r\n\r\nexaggerated way to show your love for an ICED americano / ul-juk-ah /  / 얼죽아파 Hoxy 없나..?!?! Where\'s my ICED AMERICANO TEAM?'),
(186, '얼죽아', 'dropdictionary', '2020-06-10 23:39:00', 'Edited', 'original form: 얼어 죽어도 아이스 아메리카노\r\nMeaning: I\'ll just go for an Iced americano even if i freeze to death.\r\n\r\nexaggerated way to show your love for an ICED americano / ul-juk-ah /  / 얼죽아파 없나..?!?! (Where\'s my ICED AMERICANO TEAM?)'),
(187, '얼죽아', 'dropdictionary', '2020-06-10 23:40:27', 'Edited', 'original form: 얼어 죽어도 아이스 아메리카노\r\nMeaning: I\'ll just go for an Iced americano even if i freeze to death.\r\n\r\nexaggerated way to show your love for an ICED americano / ul-juk-ah /  / 얼죽아파 없나..?!?! (Where\'s my ICED AMERICANO TEAM at?)'),
(188, '얼죽아', 'dropdictionary', '2020-06-10 23:40:46', 'Edited', 'original form: 얼어 죽어도 아이스 아메리카노\r\nMeaning: I\'ll go for an Iced americano even if i freeze to death.\r\n\r\nexaggerated way to show your love for an ICED americano / ul-juk-ah /  / 얼죽아파 없나..?!?! (Where\'s my ICED AMERICANO TEAM at?)'),
(189, '당근', 'dropdictionary', '2020-06-12 19:20:23', 'Defined', '당근 means \"of course\". It comes from the korean expression 당연하지 and shortened afterwards. / Dang-geun / 당연, 당욘 / - 나 좋아? (You like me?)\r\n- 당근당근 (Of course!)'),
(190, '당근', 'dropdictionary', '2020-06-12 19:22:59', 'Edited', '당근 means \"of course\". It comes from the korean expression 당연하지 and shortened afterwards.\r\n\r\n당근(translation: carrot) has the same sound but the slang term 당근 has nothing to do with something you eat, the carrot. / Dang-geun / 당연, 당욘 / - 나 좋아? (You like me?)\r\n- 당근당근 (Of course!)'),
(191, '보굽다', 'dropdictionary', '2020-06-12 19:23:38', 'Edited', '보굽다 is a shortened form of the expression 보구싶다 meaning \"I miss you\" or \"I can\'t wait to see u again\".\r\n\r\nhow the word changed: 보고싶다 -> 보구십다 -> 보굽다 / bogubda / 보고싶다, 보구미 / 보굽다 친구야!!! (can\'t wait to see u again!!)'),
(193, '귀요미', 'dropdictionary', '2020-06-13 20:29:55', 'Defined', '귀요미 refers to someone really cute, made poupular by the song \'귀요미송\' / Gui-yo-mi / 귀욤 / 이 귀요미야 !! (you cute!!)'),
(194, '뇌피셜', 'dropdictionary', '2020-06-14 23:24:32', 'Defined', '뇌피셜 is a mix of the words \"뇌(meaning: brain)\" + \"오피셜(english: official)\" refering to something that\'s not comfirmed offically and just an opinion that came from their \"brain\". / noeffical /  / '),
(195, '뇌피셜', 'dropdictionary', '2020-06-14 23:25:49', 'Edited', '뇌피셜 is a mix of the words \"뇌(meaning: brain)\" + \"오피셜(english: official)\" refering to something that\'s not confirmed offically and just an opinion that came from their \"brain\". / noeffical /  / '),
(196, '극혐', 'dropdictionary', '2020-06-14 23:31:28', 'Defined', '극혐 refers to something extremely hated, something you don\'t like. shortened version of 극도로 (extremely/freaking) 혐오 (hatred). / geuk-hyum /  / 바퀴벌레 극혐!!!!\r\ni freakin hate cockroaches!!!!'),
(197, '알라뷰', 'dropdictionary', '2020-06-15 14:05:14', 'Defined', '알라뷰 comes from the english expression \"I love you\"; 아이 러브 유 is how ily is spelled out in korean and then it was shortened to 알라뷰 / Al-La-bu / 알랍 / 알라뷰 !!! (ily)'),
(198, '꼰대', 'dropdictionary', '2020-06-17 09:21:02', 'Defined', '꼰대 is a korean slang term for boomer; It refers to an elderly person who sticks to old traditions insisting they\'re always right no matter what. / ggon-dae / 꼰머, 꼰대질 / 어쩌라고 이 꼰대야 (Ok boomer)'),
(199, '꼰대', 'dropdictionary', '2020-06-17 09:22:15', 'Edited', '꼰대 is a korean slang term for boomer; It refers to an elderly person who sticks to their old traditions insisting they\'re always right no matter what. / ggon-dae / 꼰머, 꼰대질 / 어쩌라고 이 꼰대야 (Ok boomer)'),
(200, '꼰대', 'dropdictionary', '2020-06-17 09:27:53', 'Edited', '꼰대 is a korean slang term for boomer; It refers to an elderly person who sticks to their old traditions insisting they\'re always right no matter what. / kkondae / 꼰머, 꼰대질 / 어쩌라고 이 꼰대야 (Ok boomer)'),
(201, 'ㅁㄹ', 'dropdictionary', '2020-06-17 09:30:47', 'Defined', 'ㅁㄹ is a shortened version of 몰라 meaning idk (stands for i don\'t know) /  / 모름 / '),
(202, 'ㄴㄴ', 'dropdictionary', '2020-06-17 09:40:02', 'Defined', 'ㄴㄴ stands for 노노(English: No No) used to express disagreement. ㅇㅇ is the opposite of ㄴㄴ /  / 놉 / '),
(203, 'ㅇㅇ', 'dropdictionary', '2020-06-17 09:40:24', 'Edited', '응응(okay), a shortened respond. \r\n\r\n* Warning: You only need to use it to your close friends since it\'s way informal and some people find it a bit rude / eung eung / 웅웅, 엉엉 / - 잘 지내? (How are you?)\r\n- ㅇㅇ (kk)'),
(204, 'ㅈㄴ', 'dropdictionary', '2020-06-18 07:33:24', 'Defined', 'ㅈㄴ is short for 존나 meaning \"freaking\" only used in online converstations. /  /  / ㅈㄴ 웃겨 (freaking hilarious)'),
(205, '알바', 'dropdictionary', '2020-06-18 07:55:12', 'Defined', '알바 is short for 아르바이트 which comes from the german term \"Arbeit\" meaning \'part-time job\' /  /  / '),
(206, '어먹금', 'dropdictionary', '2020-06-24 01:20:55', 'Defined', 'short for 어그로 먹이 금지 meaning \"don\'t feed this troll(animal)\" used when you don\'t want people to pay attention to the troll / attention seeker / eo-muk-geum / 병먹금, ㅂㅁㄱ, ㅇㅁㄱ. 먹금 / - 쟤 진짜 존못 ㅋㅋㅋ (he\'s so ugly)\r\n- 어쩌라고 ㅇㅁㄱ (So what? don\'t feed this troll guys)'),
(207, '뇌절', 'dropdictionary', '2020-06-24 01:24:54', 'Defined', 'it means \"over the top\" used when someone is being so extra but don\'t really need (want) to / noe-jul /  / 뇌절 하네 또! (you\'re being extra again!)'),
(208, '공카', 'dropdictionary', '2020-06-26 14:30:17', 'Defined', '공카 is short for 공식 카페 meaning Official Cafe usually used to refer to an official fan-based community where your \'idol\' also joins to interact with u. / gong-ka /  / 공카 들어가 봐! Check out the official cafe'),
(209, '공카', 'dropdictionary', '2020-06-26 14:30:32', 'Edited', '공카 is short for 공식 카페 meaning Official Cafe usually used to refer to an official fan-based community where your \'idol\' also joins to interact with u. / gong-ka /  / 공카 들어가 봐!\r\nCheck out the official cafe!'),
(210, '잠수타다', 'dropdictionary', '2020-06-26 14:55:25', 'Defined', '잠수타다 originally means \"to go underwater\" but in slang it basically means \"to ghost\" used when someone disappear suddenly avoiding meeting people. / jamsutada / 연락이 없다 / 너 왜 잠수 탔어??\r\n\"Why did u ghost??\"'),
(211, '잠수타다', 'dropdictionary', '2020-06-26 14:55:34', 'Edited', '잠수타다 originally means \"to go underwater\" but in slang it basically means \"to ghost\" used when someone disappear suddenly avoiding meeting people. / jamsutada / 연락이 없다 / 너 왜 잠수 탔어?? (Why did u ghost??)'),
(212, '잠수타다', 'dropdictionary', '2020-06-26 14:56:12', 'Edited', '잠수타다 originally means \"to go underwater\" but in korean slang it basically means \"to ghost\" used when someone disappear suddenly avoiding meeting people. / jamsutada / 연락이 없다 / 너 왜 잠수 탔어?? (Why did u ghost??)'),
(213, '잠수타다', 'dropdictionary', '2020-06-26 14:56:58', 'Edited', '잠수타다 originally means \"to go underwater\" but in korean slang it basically means \"to ghost\" used when someone disappear suddenly avoiding meeting people. / jamsutada / 고스팅, 연락이 없다 / 너 왜 잠수 탔어?? (Why did u ghost??)'),
(214, '영고', 'dropdictionary', '2020-06-26 15:03:18', 'Defined', '영고 is a shortened version of the expression \"영원히 고통 받다(suffering forever)\" usually used to refer to a video/selfie/picture of you that\'s cringe-worthy and embarrassing but then you have to deal with it since it\'s all over on the internet and the pain (embarrassment you felt) lasts forever like it never ends / younggo /  / 진짜 영고다... '),
(215, '영고', 'dropdictionary', '2020-06-26 15:03:25', 'Edited', '영고 is a shortened version of the expression \"영원히 고통 받다(suffering forever)\" usually used to refer to a video/selfie/picture of you that\'s cringe-worthy and embarrassing but then you have to deal with it since it\'s all over on the internet and the pain (embarrassment you felt) lasts forever like it never ends / younggo /  / 진짜 영고일듯... '),
(216, '핵잼', 'dropdictionary', '2020-06-30 18:41:41', 'Defined', '핵잼 is directly translated to \"Nuclear funny\" which basically means \"hella funny\". People in korea casually use the word 핵 just to emphasize things /  / 꿀잼, 존잼 / '),
(217, '안물안궁', 'dropdictionary', '2020-06-30 20:15:18', 'Defined', '\'안\' 물었고 \'안\' 궁금하다\r\nit means \"didn\'t ask u about this and didn\'t even wonder\" used as a reponse to something you don\'t wanna know / An-mul-an-gung / 어쩔, 어쩌라고 / '),
(218, '안물안궁', 'dropdictionary', '2020-06-30 20:16:06', 'Edited', '\'안\' 물었고 \'안\' 궁금하다\r\nit means \"didn\'t ask u about this and didn\'t even wonder\" used as a reponse to something you don\'t wanna know / An-mul-an-gung / 어쩔, 어쩌라고 / 진짜 안물안궁이다..\r\nI didn\'t ask u about this and didn\'t even know about that....'),
(219, '안물안궁', 'dropdictionary', '2020-06-30 20:16:28', 'Edited', '\'안\' 물었고 \'안\' 궁금하다\r\nit means \"didn\'t ask u about this and didn\'t even wonder\" used as a reponse to something you don\'t wanna know / An-mul-an-gung / 어쩔, 어쩌라고 / 진짜 안물안궁이다.. (I didn\'t ask u about this and didn\'t even know about it tbh..)'),
(220, '실트', 'dropdictionary', '2020-06-30 20:37:27', 'Defined', '실트 is a shortened form of the phrase 실시간 트렌드 meaning \"Trending now\"\r\noften used on twitter / Silteu /  / '),
(221, '실트', 'dropdictionary', '2020-06-30 20:37:39', 'Edited', '실트 is a shortened form of the phrase 실시간 트렌드 meaning \"Trending now\" often used on twitter / Silteu /  / '),
(222, 'ㄲㅈ', 'dropdictionary', '2020-07-03 17:24:23', 'Defined', 'short for 꺼져 meaning F*ck off or Go away /  /  / '),
(223, 'ㄲㅈ', 'dropdictionary', '2020-07-03 17:24:43', 'Edited', 'short for 꺼져 meaning F*ck off or Go away /  /  / 아 좀 ㄲㅈ (Oh please go away)'),
(224, 'ㅂㅂ', 'dropdictionary', '2020-07-03 17:25:15', 'Edited', 'ㅂㅂ is short for 바바 which is a shortened form of the expression 바이바이 meaning \"bye bye\" /  / ㅂㅇㅂㅇ, ㅂㅇ, ㅃㅃ, ㅃㅇㅃㅇ, ㅃ2 / 나 갈게 ㅂㅂㅂ (I gotta go bye)'),
(225, 'ㅈㄴ', 'dropdictionary', '2020-07-03 17:26:02', 'Edited', 'ㅈㄴ is short for 존나 meaning \"freaking\" only used in online converstations. /  / ㅈㄹ / ㅈㄴ 웃겨 (freaking hilarious)'),
(226, 'ㅈㄴ', 'dropdictionary', '2020-07-03 17:26:21', 'Edited', 'ㅈㄴ is short for 존나 meaning \"freaking\" only used in online converstations. /  / ㅈㄹ (졸라) / ㅈㄴ 웃겨 (freaking hilarious)'),
(227, '핵잼', 'dropdictionary', '2020-07-03 17:27:41', 'Edited', '핵잼 is directly translated to \"Nuclear funny\" which basically means \"hella funny\". People in korea casually use the word 핵 just to emphasize things\r\nthe opposite of the word 핵잼 is 노잼 which typically means \"not funny at all\" /  / 꿀잼, 존잼 / '),
(228, '핵잼', 'dropdictionary', '2020-07-03 17:28:06', 'Edited', '핵잼 is directly translated to \"Nuclear funny\" which basically means \"hella funny\". People in korea casually use the word 핵 just to emphasize things.\r\n\r\nthe opposite of the word 핵잼 is 노잼 which typically means \"not funny at all\" /  / 꿀잼, 존잼 / '),
(229, '오모나', 'dropdictionary', '2020-07-03 17:30:02', 'Defined', 'a cute way of saying 어머나 meaning \"Oh god!\" / Oh-mo-na / 엄마야 / 오모나 무서워라..! (Oh god that scares me!)'),
(230, 'ㄲㅈ', 'dropdictionary', '2020-07-03 17:30:45', 'Edited', 'shortened version of the curse word 꺼져 meaning F*ck off/Go away /  /  / 아 좀 ㄲㅈ (Oh please go away)'),
(231, 'ㄲㅈ', 'dropdictionary', '2020-07-03 17:30:56', 'Edited', 'shortened version of the korean curse word 꺼져 meaning F*ck off/Go away /  /  / 아 좀 ㄲㅈ (Oh please go away)'),
(232, '영고', 'dropdictionary', '2020-07-03 17:36:11', 'Edited', '영고 is a shortened version of the expression \"영원히 고통 받다(suffering forever)\" usually used to refer to a situation where the video/selfie/picture of you that\'s cringe-worthy and embarrassing has been going around on the internet and people post it again and again and again and you have to deal with it feeling painful(because of the embarrassment you feel) and there\'s no way around it. / younggo /  / 진짜 영고일듯... '),
(233, '영고', 'dropdictionary', '2020-07-03 17:36:34', 'Edited', '영고 is a shortened version of the expression \"영원히 고통 받다(suffering forever)\" usually used to refer to a situation where the video/selfie/picture of you that\'s cringe-worthy and embarrassing has been going around on the internet and people post it again and again and again and you have to deal with it feeling \"painful\" (because of the embarrassment you feel) and there\'s no way around it. / younggo /  / 진짜 영고일듯... '),
(234, '영고', 'dropdictionary', '2020-07-03 17:36:50', 'Edited', '영고 is a shortened version of the expression \"영원히 고통 받다(suffering forever)\" usually used to refer to a situation where the video / selfie / picture of you that\'s cringe-worthy and embarrassing has been going around on the internet and people post it again and again and again and you have to deal with it feeling \"painful\" (because of the embarrassment you feel) and there\'s no way around it. / younggo /  / 진짜 영고일듯... '),
(235, '쫄보', 'dropdictionary', '2020-07-03 17:43:10', 'Defined', '쫄보 refers to someone who got scared a lot, someone who\'s afraid of the smallest thing. / jjolbo / 쪼다, 겁쟁이 / 이 쫄보!!! ㅉㅉ (you coward smh!!!)'),
(236, '오바하다', 'dropdictionary', '2020-07-03 17:44:33', 'Edited', '오바하다(over-hada) is a konglish word used when someone is being overdramatic and too much, or just over(korean: 오바) the top. / over-ha-da / 오버하다, 에바다, 에바참치꽁치(wordplay) / 쟤 좀 봐 또 또 오바한다'),
(237, '계이', 'dropdictionary', '2020-07-03 17:46:48', 'Defined', 'short for 계정 이동 meaning \"account changed\" used when you move your account to another / gye-i / 계정 변경 / 같이 계이하자 ㄱㄱㄱ (Let\'s change an account together! let\'s do it)'),
(238, '지뢰', 'dropdictionary', '2020-07-03 17:51:32', 'Defined', 'the original meaning of 지뢰 is \"land mine \" but in slang this one has changed a bit and now it basically means \"celebrity you dislike\" used by stans on stan twitter /  /  / 지뢰 피할게요 (I\'ll be just avoiding any celeb i dislike)'),
(239, '지뢰', 'dropdictionary', '2020-07-03 17:52:11', 'Edited', 'the original meaning of 지뢰 is \"land mine \" but in slang this one has changed a bit and now it basically means \"celebrity you dislike\" used by stans on stan twitter / ji-roe /  / 지뢰 피할게요 (I\'ll be just avoiding any celeb i dislike)'),
(240, '국룰이다', 'dropdictionary', '2020-07-03 17:56:24', 'Defined', '국룰(English: Guk Rule) is a konglish term for National rule outlined by the law usually used to describe something you gotta do / guk-rul-i-da /  / 등산하고 컵라면은 국룰이지 (You really have to eat ramen noodles after hiking'),
(241, '국룰이다', 'dropdictionary', '2020-07-03 17:56:33', 'Edited', '국룰(English: Guk Rule) is a konglish term for National rule outlined by the law usually used to describe something you gotta do / guk-rul-i-da /  / 등산하고 컵라면은 국룰이지 (You defo have to eat ramen noodles after hiking)'),
(242, '국룰이다', 'dropdictionary', '2020-07-03 17:57:14', 'Edited', '국룰(English: Guk Rule) is a konglish term for National rule outlined by the law usually used to describe something you gotta do. / guk-rul-i-da /  / 등산하고 컵라면은 국룰이지 (You defo have to eat ramen noodles after hiking)'),
(243, '병크', 'dropdictionary', '2020-07-04 15:28:51', 'Defined', '병크 is short for 병신 크러스트 meaning \"drama\" used a lot on stan twitter. it technically refers to an inappropriate incident a celebrity or social figure caused.\r\n\r\n* Warning: 병신 is an offensive term refering to people with disabilities and highly recommended not using it. / byung-keu / 사건사고, 사건 / '),
(244, '맞짱 뜨다', 'dropdictionary', '2020-07-04 15:52:07', 'Defined', 'To fight someone face to face / mat-jjang ddeu-da /  / (맞장) 뜰까?\r\nyou wanna fight?'),
(245, '병크', 'dropdictionary', '2020-07-04 16:10:19', 'Edited', '병크 is short for 병신 크러스트 meaning \"drama\" used a lot on stan twitter. it technically refers to an inappropriate incident a celebrity or social figure caused.\r\n\r\n* Warning: 병신 is an offensive term refering to people with disabilities. I strongly suggest you not to use it to refer to someone. / byung-keu / 사건사고, 사건 / '),
(246, 'ㅈㅅ', 'dropdictionary', '2020-07-04 16:12:25', 'Defined', '죄송 (sorry) /  / 미안 / - 너 실수했어 (you made a mistake)\r\n- 아 ㅈㅅ (oh sorry)'),
(247, '지뢰', 'dropdictionary', '2020-07-04 23:49:22', 'Edited', 'the original meaning of 지뢰 is \"land mine \" but in slang it basically means \"celebrity you dislike\" used by stans on stan twitter / ji-roe /  / 지뢰 피할게요 (I\'ll be just avoiding any celeb i dislike)'),
(248, '국룰이다', 'dropdictionary', '2020-07-04 23:54:52', 'Edited', '국룰(English: Guk Rule) is a konglish term which is directly translated to \"National rule you should follow\". It\'s used to describe something you have to do, A must-do thing / guk-rul-i-da /  / 등산하고 컵라면은 국룰이지 (You defo have to eat ramen noodles after hiking)'),
(249, '맛잘알', 'dropdictionary', '2020-07-08 13:59:17', 'Defined', '\'맛\'을 \'잘\' \'아는\' 자. 맛잘알 is a slang phrase refering to someone who know what food is delicious and what\'s not / mat-jal-al /  / 와우 맛잘알 인정합니다 (yeah you know what food is yummy)'),
(250, '맛잘알', 'dropdictionary', '2020-07-08 13:59:48', 'Edited', '\'맛\'을 \'잘\' \'아는\' 자. 맛잘알 is a slang phrase refering to someone who knows what food is yummy and what\'s not / mat-jal-al /  / 와우 맛잘알 인정합니다 (yeah you know what food is yummy)'),
(251, '맛잘알', 'dropdictionary', '2020-07-08 14:00:44', 'Edited', '\'맛\'을 \'잘\' \'아는\' 자. 맛잘알 is a slang phrase refering to someone who knows what food is yummy and what\'s not.\r\n\r\n-잘알 is a commenly used phrase refering to someone who knows something well.\r\n / mat-jal-al /  / 와우 맛잘알 인정합니다 (yeah you know what food is yummy)'),
(252, '맛잘알', 'dropdictionary', '2020-07-08 14:07:57', 'Edited', '\'맛\'을 \'잘\' \'아는\' 자. 맛잘알 is a slang phrase refering to someone who knows what food is yummy and what\'s not.\r\n\r\n-잘알 is a commonly used phrase refering to someone who knows something very well.\r\n / mat-jal-al /  / 와우 맛잘알 인정합니다 (yeah you know what food is yummy)'),
(253, '맞짱 뜨다', 'dropdictionary', '2020-07-08 14:08:57', 'Edited', 'To fight someone face to face / mat-jjang ddeu-da /  / - (맞장) 뜰까?\r\nyou wanna fight?\r\n- 그래 나가서 뜨자\r\nyeah let\'s take it outside'),
(254, '병크', 'dropdictionary', '2020-07-08 14:11:58', 'Edited', '병크 is short for 병신 크러스트 meaning \"drama\" used a lot on stan twitter. it technically refers to an inappropriate incident a celebrity or social figure caused.\r\n\r\n* Warning: 병신 is an offensive term refering to people with disabilities. I strongly suggest you not to use the word alone to describe someone / byung-keu / 사건사고, 사건 / '),
(255, 'ㄲㅈ', 'dropdictionary', '2020-07-08 14:13:06', 'Edited', 'shortened version of the korean curse word 꺼져 meaning F*ck off, Get the hell out of here /  /  / 아 좀 ㄲㅈ (Oh please get the hell outta here)'),
(256, '오모나', 'dropdictionary', '2020-07-08 14:13:23', 'Edited', 'a cute way of saying 어머나 meaning \"Oh god!\" / omona / 엄마야 / 오모나 무서워라..! (Oh god that scares me!)'),
(257, 'ㅠㅠ', 'dropdictionary', '2020-07-08 14:17:28', 'Defined', 'crying emoji; used to express sadness since it looks like tears falling down your face.  /  / T_T, :( / '),
(258, 'ㅠㅠ', 'dropdictionary', '2020-07-08 14:18:03', 'Edited', 'crying emoji; used to express sadness since it looks like tears falling down your face.  /  / T_T, :( / 개우울해 ㅠㅠㅠ\r\ni\'m depressed as hell :-('),
(259, 'ㅠㅠ', 'dropdictionary', '2020-07-08 14:18:43', 'Edited', 'crying emoji; used to express sadness since it looks like tears falling down your face.  /  / T_T, :( / 개우울해 ㅠㅠㅠㅠㅠ\r\ni\'m depressed as hell :-('),
(260, '극혐', 'dropdictionary', '2020-07-08 14:20:07', 'Edited', '극혐 refers to something extremely hated, something you don\'t like. shortened version of 극도로 (extremely/freaking) 혐오 (hatred). / geuk-hyum / 혐극 / 바퀴벌레 극혐!!!!\r\ni freakin hate cockroaches!!!!'),
(261, '극혐', 'dropdictionary', '2020-07-08 14:20:47', 'Edited', '극혐 means something you don\'t like. shortened version of 극도로 (extremely, freaking) 혐오 (hatred). / geuk-hyum / 혐극 / 바퀴벌레 극혐!!!!\r\ni freakin hate cockroaches!!!!'),
(262, '극혐', 'dropdictionary', '2020-07-08 14:21:01', 'Edited', '극혐 means something you truly don\'t like. shortened version of 극도로 (extremely, freaking) 혐오 (hatred). / geuk-hyum / 혐극 / 바퀴벌레 극혐!!!!\r\ni freakin hate cockroaches!!!!'),
(263, '싫테', 'dropdictionary', '2020-07-22 21:36:01', 'Defined', '싫테 is short for 싫어요 테러 meaning \"dislike attacks\". it\'s used to describe a situation where people hit the dislike button a LOT to show hate.\r\n\r\n좋테 has the opposite meaning - \"like attacks\" / sil-te / 싫어요 폭탄 (dislike bomb) / 제 비디오에다 싫테 자제하세요 \r\nstop hitting the dislike button on my vids'),
(264, '욜로', 'dropdictionary', '2020-07-22 21:39:30', 'Defined', '욜로 is \"YOLO\" spelled out in korean meaning \"you only live once\" as you already know. / yolo /  / 욜로 하다 골로 간다\r\nyou\'re gonna end up miserable if you think like \"YOLO\"'),
(265, '욜로', 'dropdictionary', '2020-07-22 21:39:45', 'Edited', '욜로 is \"YOLO\" spelled out in korean meaning \"you only live once\" as you already know. / yolo /  / 욜로 하다 골로 간다 (You\'re gonna end up miserable if you think like \"YOLO\")'),
(266, '8282', 'dropdictionary', '2020-07-22 21:41:34', 'Defined', '빨리빨리 (sounds smiliar to 8282) meaning \"hurry up!\" /  / ㅃㄹ / 8282 집에 오셈 (Come home as soon as possible)'),
(267, '솔까말', 'dropdictionary', '2020-07-22 21:44:00', 'Defined', '솔직히 까놓고 말해서 (To be honest, if i\'m being honest) / solkkamal / 솔까 / 솔까 쌤들 진짜 싫음 (tbh I hate my teachers)'),
(268, '쌤', 'dropdictionary', '2020-07-22 21:46:14', 'Defined', 'shortened version of 선생님 used in an informal way / ssam / 쌤님 / 쌤 죄송해요 ㅠㅠㅠㅠ\r\nSorry, ssam :('),
(269, '쌤', 'dropdictionary', '2020-07-22 21:47:12', 'Edited', 'shortened version of 선생님(teacher or used to refer to an eldery person) used in an informal way / ssam / 쌤님 / 쌤 죄송해요 ㅠㅠㅠㅠ\r\nSorry, ssam :('),
(270, '초반', 'dropdictionary', '2020-08-24 11:43:06', 'Defined', '초반 is short for 초면(에) 반말 literally meaning \"talking to someone you see for the first time in an informal / casual manner\" / Choban /  / 초반 할래?'),
(271, '쯔업', 'dropdictionary', '2020-09-05 00:51:43', 'Defined', 'same as 쩝 meaning hmm.. / jjup / 흠 / 쯔업... 오늘 뭐하지? (Hmm.. what should i do today?)'),
(272, '맛집', 'dropdictionary', '2020-09-05 01:02:45', 'Edited', 'Originally the korean term for \"Popular restaurant\" but in slang, it refers to someone good at something, having a superior factor (i.e. 셀카 맛집 - someone always taking a nice selfie, 비주얼(visual, face) 맛집 - someone always looking good) / mat-jib /  / '),
(273, '믿거', 'dropdictionary', '2020-09-05 01:10:08', 'Defined', '믿거 = 믿고 거른다(colander) \r\nmeaning \"It\'s worth a skip with no doubt\" /  /  / ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `definitions`
--
ALTER TABLE `definitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updated`
--
ALTER TABLE `updated`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `definitions`
--
ALTER TABLE `definitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `updated`
--
ALTER TABLE `updated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
