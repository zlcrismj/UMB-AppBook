-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2021 a las 02:54:21
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appbook`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answer`
--

CREATE TABLE `answer` (
  `exam` varchar(100) NOT NULL,
  `subname` varchar(100) NOT NULL,
  `subcode` varchar(100) NOT NULL,
  `registernum` varchar(100) NOT NULL,
  `quenum` int(100) NOT NULL,
  `answer` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `codigo_pdf` int(100) NOT NULL,
  `nombre_pdf` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `carrera_pdf` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `grupo_pdf` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `specialized` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `maestro_pdf` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `archivo_pdf` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mark`
--

CREATE TABLE `mark` (
  `subcode` varchar(25) NOT NULL,
  `regnum` varchar(25) NOT NULL,
  `totalque` int(25) NOT NULL,
  `correctans` int(25) NOT NULL,
  `falseans` int(25) NOT NULL,
  `avgmark` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `setpaper`
--

CREATE TABLE `setpaper` (
  `exam` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `subcode` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `queNumber` int(25) NOT NULL,
  `que` varchar(250) NOT NULL,
  `ans01` varchar(300) NOT NULL,
  `ans02` varchar(300) NOT NULL,
  `ans03` varchar(300) NOT NULL,
  `ans04` varchar(300) NOT NULL,
  `correctans` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `setpaper`
--

INSERT INTO `setpaper` (`exam`, `subject`, `subcode`, `grade`, `queNumber`, `que`, `ans01`, `ans02`, `ans03`, `ans04`, `correctans`) VALUES
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 1, '(YOU / DOWNLOAD) TRACKS FROM ILLEGAL SITE. IT DAMAGES THE MUSIC INDUSTRY.', 'DOWNLOAD', 'YOU', 'YOU SHOULD NOT', 'YOU SHOULD', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 2, '(YOU / USE) NAPSTER OR ITUNES. THEY’RE LEGAL AND THEY OFFTER A WIDE RANGE OF MUSIC.', 'YOU', 'USE', 'YOU SHOULD NOT', 'USE SHOULD', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 3, 'IF YOU WANT QUALITY PICTURES, (YOU / BUY) A DIGITAL CAMERA WITH FEWER THAN 3.3 MEGAPIXELS.', 'YOU', 'YOU SHOULD', 'YOU SHOULD NOT', 'BUY SHOULD NOT', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 4, 'I THINK (YOU / SHARE) TRACKS WITH FRIENS IT IS ILLEGAL.', 'YOU', 'SHARE', 'SHOULD', 'SHOULD NOT', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 5, 'I DO NOT THINK (YOU / BUY) A VCR. THEY ARE OUT-OF-DATE. BUY A DVD PLAYER.', 'SHOULD I', 'BUY', 'YOU', 'BUY I', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 6, '(YOU / GIVE) YOUR PASSWORD TO ANYONE.', 'GIVE', 'SHOULD', 'SHOULD NOT', 'BUY I', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 10, 'WILL WE __________ CARS AND USE PUBLIC TRANSPORT?', 'GIVE UP', 'FIND OUT', 'CARRY OUT', 'CUT DOWN', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 8, 'IT IS EASY TO DAMAGE A FLAT SCREEN.(YOU / TOUCH) IT.', 'PEOPLE SHOULD', 'SHOULD', 'SHOULD NOT', 'SHOULD NOT PEOPLE', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 9, 'PROGRAMMERS', 'WRITE THE CODE', 'DESIGN THE VIDEOGAME', 'CREATING', 'TRAINED ILLUSTRATORS', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 10, 'ARTIST', 'WRITE THE CODE', 'DESIGN THE VIDEOGAME', 'CREATING', 'TRAINED ILLUSTRATORS', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 11, 'DESIGNERS', 'WRITE THE CODE', 'MAKE CHARACTERS MOVE', 'CREATING', 'TRAINED ILLUSTRATORS', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 12, 'CONCEPT ARTIST', 'WRITE THE CODE', 'MAKE CHARACTERS MOVE', 'CREATING', 'TRAINED ILLUSTRATORS', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 7, 'AS MANY ITEMS OF TELECOMMUNICATIONS EQUIPMENT AS YOU CAN', 'PHONE SYSTEMS, SATELLITE DISHES, ANTENNAS, COPPER CABLES', 'NORWAY, KENYA, BELIZE', 'EIGHT', 'VOICE OVER INTERNET PROTOCOL', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 15, 'WHY IS IT DIFFICULT TO GE A JOB IN THE VIDEO GAMES INDUSTRY?', 'BECAUSE NEED SHOW SUCCESS AND EXPERIENCE.', 'HE HAS A LICENSE IN COMPUTER SCIENCE AND MASTER IN COMPUTER GAMES TECHNOLOGY AND THEY WON THE PRIZE “GREAT MARKETING POTENTIAL”.', 'FOR WON THE PRIZE IN A COMPETITION “DARE TO BE A DIGITAL”.', 'THE GAME ON THE LIFE, ON THE PHONE.', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 20, 'TO AVOID ELECTRICAL DAMAGE, ALWAYS __________ THE MACHINE WHEN IT IS NOT IN USE', 'PRINT OUT', 'SWITCH ON', 'PLUG IN', '*****', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 7, '(YOU / UPDATE) YOUR VIRUS PROTECTION SOFTWARE', 'YOU SHOULD', 'SHOULD NOT YOU', 'SHOULD YOU', 'SHOULD NOT', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 18, 'NAME TWO PREDICTIONS HE MAKES ABOUT VIDEO GAMES', 'BECAUSE NEED SHOW SUCCESS AND EXPERIENCE.', 'HE HAS A LICENSE IN COMPUTER SCIENCE AND MASTER IN COMPUTER GAMES TECHNOLOGY AND THEY WON THE PRIZE “GREAT MARKETING POTENTIAL”.', 'FOR WON THE PRIZE IN A COMPETITION “DARE TO BE A DIGITAL”.', 'THE GAME ON THE LIFE, ON THE PHONE.', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 16, 'WHAT QUALIFICATIONS DOES BRUNO HAVE?', 'BECAUSE NEED SHOW SUCCESS AND EXPERIENCE.', 'HE HAS A LICENSE IN COMPUTER SCIENCE AND MASTER IN COMPUTER GAMES TECHNOLOGY AND THEY WON THE PRIZE “GREAT MARKETING POTENTIAL”.', 'FOR WON THE PRIZE IN A COMPETITION “DARE TO BE A DIGITAL”.', 'THE GAME ON THE LIFE, ON THE PHONE.', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 19, 'WHAT OTHER APPLICATIONS DOES VIDEO GAMES TECHNOLOGY HAVE?', 'BECAUSE NEED SHOW SUCCESS AND EXPERIENCE.', 'HE HAS A LICENSE IN COMPUTER SCIENCE AND MASTER IN COMPUTER GAMES TECHNOLOGY AND THEY WON THE PRIZE “GREAT MARKETING POTENTIAL”.', 'THE COMPANIES ARE SIMULATED THE MILITARY AND MEDICINE SIMULATIONS.', 'THE GAME ON THE LIFE, ON THE PHONE.', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 20, 'BURN', 'COPYING TRACKS TO CDS FROM ONLINE MUSIC SITES', 'RECORDING YOUR CDS AND ENCODING THEN INTO MP3 OR OTHER DIGITAL FILES', 'BROADCASTING FILES, MAINLY AUDIO, ON THE INTERNET FOR OTHERS TO DOWNLOAD', 'ADDING EXTRAINFORMATION ABOUT ARTISTS, ALBUMS, AND SONGS TO TRACKS ON THE MP3 COLLECTION', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 21, 'RIP', 'COPYING TRACKS TO CDS FROM ONLINE MUSIC SITES', 'RECORDING YOUR CDS AND ENCODING THEN INTO MP3 OR OTHER DIGITAL FILES', 'BROADCASTING FILES, MAINLY AUDIO, ON THE INTERNET FOR OTHERS TO DOWNLOAD', 'ADDING EXTRAINFORMATION ABOUT ARTISTS, ALBUMS, AND SONGS TO TRACKS ON THE MP3 COLLECTION', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 22, 'TAG', 'COPYING TRACKS TO CDS FROM ONLINE MUSIC SITES', 'RECORDING YOUR CDS AND ENCODING THEN INTO MP3 OR OTHER DIGITAL FILES', 'BROADCASTING FILES, MAINLY AUDIO, ON THE INTERNET FOR OTHERS TO DOWNLOAD', 'ADDING EXTRAINFORMATION ABOUT ARTISTS, ALBUMS, AND SONGS TO TRACKS ON THE MP3 COLLECTION', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 40, 'BE LATE', 'SHOULD NOT BE LATE', 'YOU SHOULD NOT BE LATE', 'YOU NOT SHOULD BE LATE', 'SHOULD BE LATE', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 23, 'SECTION 1', 'A ) THEY HAVE SPENT TIME IN THE ARMY', 'B ) THEY SPENT TIME IN THE ARMY', '*****', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 35, 'HOW MANY PEOPLE REGULARLY DOWNLOAD MUSIC FROM ILLEGAL SITES IN BRITAIN?', 'SEVEN MILLION', 'CDS ARE OVER-PRICED. I DO NOT SEE WHY WE SHOULD NOT SHARE TRACKS WITH FRIENDS', 'NAPSTER', 'IT IS THEFT ON A HUGE SCALE.LT DAMAGES THE MUSIC INDUSTRY AND CHEATS MUSICIANS', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 27, 'STRONGHOLD', 'STRATEGY', 'FAMILY AND CHILDREN', 'SHOOTER', 'ROLE - PLAYING', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 26, 'THE SIMS', 'ACTION', 'FAMILY AND CHILDREN', 'SHOOTER', 'ROLE - PLAYING', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 25, 'GRAND THEFT AUTO: SAN ANDREAS', 'ACTION', 'FAMILY AND CHILDREN', 'SHOOTER', 'STRATEGY', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 28, 'DOOM 3', 'STRATEGY', 'FAMILY AND CHILDREN', 'SHOOTER', 'ROLE - PLAYING', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 29, 'PRO EVOLUTION SOCCER', 'STRATEGY', 'SPORTS', 'SHOOTER', 'ROLE - PLAYING', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 30, 'LEGEND OF ZELDA', 'STRATEGY', 'SPORTS', 'ADVENTURE', 'ROLE - PLAYING', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 36, 'NUMBER 7', 'G', 'C', 'D', 'A', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 33, 'WHICH MUSIC SERVICES DOES MAX USE?', 'YOU CAN MAKE YOUR OWN MUSIC LIBRARY AND PLAYLISTS. YOU CAN EXCHANGE TRACKS WITH FRIENDS', 'CDS ARE OVER-PRICED. I DO NOT SEE WHY WE SHOULD NOT SHARE TRACKS WITH FRIENDS', 'NAPSTER', 'IT IS THEFT ON A HUGE SCALE.LT DAMAGES THE MUSIC INDUSTRY AND CHEATS MUSICIANS', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 34, 'ACCORDING TO SAM, WHAT IS SPECIAL ABOUT THIS WAY OF LISTENING?', 'YOU CAN MAKE YOUR OWN MUSIC LIBRARY AND PLAYLISTS. YOU CAN EXCHANGE TRACKS WITH FRIENDS', 'CDS ARE OVER-PRICED. I DO NOT SEE WHY WE SHOULD NOT SHARE TRACKS WITH FRIENDS', 'NAPSTER', 'IT IS THEFT ON A HUGE SCALE.LT DAMAGES THE MUSIC INDUSTRY AND CHEATS MUSICIANS', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 32, 'SAM', 'STRATEGY', 'CDS, ALBUMS, MP3 PLAYER, MINIDISK, ONLINE', 'LIVE - ONLINE FROM NAPSTER', 'ROLE - PLAYING', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 37, 'HOW IS IT DAMAGING THE MUSIC INDUSTRY?', 'PEOPLE BUY FEWER CDS SO THE INDUSTRY LOSES INCOME', 'CDS ARE OVER-PRICED. I DO NOT SEE WHY WE SHOULD NOT SHARE TRACKS WITH FRIENDS', 'NAPSTER', 'IT IS THEFT ON A HUGE SCALE.LT DAMAGES THE MUSIC INDUSTRY AND CHEATS MUSICIANS.', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 38, 'WHAT DOES MAX THINK THE MUSIC INDUSTRY SHOULD DO?', 'PEOPLE BUY FEWER CDS SO THE INDUSTRY LOSES INCOME', 'CDS ARE OVER-PRICED. I DO NOT SEE WHY WE SHOULD NOT SHARE TRACKS WITH FRIENDS', 'SET UP THEIR OWN SITES FOR SELLING ONLINE MUSIC. CO AFTER ANYONE WHO DOWNLOADS ILLEGAL', 'IT IS THEFT ON A HUGE SCALE.LT DAMAGES THE MUSIC INDUSTRY AND CHEATS MUSICIANS.', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 36, 'WHAT DOES MAX THINK OF THIS?', 'YOU CAN MAKE YOUR OWN MUSIC LIBRARY AND PLAYLISTS. YOU CAN EXCHANGE TRACKS WITH FRIENDS', 'CDS ARE OVER-PRICED. I DO NOT SEE WHY WE SHOULD NOT SHARE TRACKS WITH FRIENDS', 'NAPSTER', 'IT IS THEFT ON A HUGE SCALE.LT DAMAGES THE MUSIC INDUSTRY AND CHEATS MUSICIANS.', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 39, 'WHAT DOES SAM THINK OF THIS?', 'CDS ARE OVER-PRICED. I DO NOT SEE WHY WE SHOULD NOT SHARE TRACKS WITH FRIENDS', 'CDS ARE OVER-PRICED. I DO NOT SEE WHY WE SHOULD NOT SHARE TRACKS WITH FRIENDS', 'SET UP THEIR OWN SITES FOR SELLING ONLINE MUSIC. CO AFTER ANYONE WHO DOWNLOADS ILLEGAL', 'IT IS THEFT ON A HUGE SCALE.LT DAMAGES THE MUSIC INDUSTRY AND CHEATS MUSICIANS.', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 41, 'DRESS SMARTLY', 'YOU DRESS SMARTLY', 'YOU SHOULD DRESS SMARTLY', 'YOU SHOULD NOT DRESS SMARTLY', 'YOU SHOULD SMARTLY', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 42, 'PRACTISE ANSWERING QUESTIONS WITH A FRIEND', 'YOU SHOULD PRACTICE ANSWERING QUESTIONS WITH A FRIEND', 'SHOULD PRACTICE ANSWERING QUESTIONS WITH A FRIEND', 'YOU PRACTICE ANSWERING QUESTIONS WITH A FRIEND', 'YOU SHOULD NOT PRACTICE ANSWERING QUESTIONS WITH A FRIEND', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 43, 'BE HONEST. EXAGGERATE YOUR SKILLS', 'YOU SHOULD NOT BE HONEST.', 'YOU SHOULD NOT BE HONEST. YOU SHOULD NOT EXAGGERATE YOUR SKILLS', 'YOU SHOULD BE HONEST. YOU SHOULDEXAGGERATE YOUR SKILLS', 'YOU SHOULD BE HONEST. YOU SHOULD NOT EXAGGERATE YOUR SKILLS', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 44, 'PREPARE SOME QUESTIONS OF YOUR OWN', 'YOU SHOULD PREPARE SOME QUESTIONS OF YOUR OWN', 'YOU SHOULD NOT PREPARE SOME QUESTIONS', 'SHOULD  NOT PREPARE SOME QUESTIONS OF YOUR OWN', 'I PREPARE SOME QUESTIONS OF YOUR OWN', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 45, 'READ UP AS MUCH AS YOU CAN ABOUT THE COMPANY', 'CAN ABOUT THE COMPANY', 'YOU SHOULD READ UP AS MUCH AS YOU CAN ABOUT THE COMPANY', 'YOU CAN ABOUT THE COMPANY', 'YOU SHOULD NOT READ UP AS MUCH AS YOU CAN NOT ABOUT THE COMPANY', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 46, 'LOOK AT THE FLOOR WHEN YOU SPEAK', 'YOU SHOULD LOOK AT THE FLOOR WHEN YOU SPEAK', 'SHOULD LOOK AT THE FLOOR', 'SHOULD LOOK AT THE FLOOR WHEN YOU SPEAK', 'YOU SHOULD NOT LOOK AT THE FLOOR WHEN YOU SPEAK', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 47, 'LOOK AT ALL THE INTERVIEWERS', 'SHOULD LOOK AT ALL THE INTERVIEWERS', 'YOU SHOULD LOOK AT ALL THE INTERVIEWERS', 'YOU SHOULD NOT LOOK AT ALL THE INTERVIEWERS', 'YOU SHOULD LOOK', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 48, 'LEAN BACK AND LOOK BORED', 'SHOULD LEAN BACK AND LOOK BORED', 'YOU SHOULD NOT LEAN BACK AND LOOK BORED', 'YOU SHOULD LEAN BACK AND LOOK BORED', 'SHOULD NOT LEAN BACK AND LOOK BORED', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 49, 'SIT STRAIGHT AND LOOK CONFIDENT', 'YOU SHOULD SIT STRAIGHT AND LOOK CONFIDENT', 'SHOULD NOT SIT STRAIGHT AND LOOK CONFIDENT', 'SHOULD NOT SIT STRAIGHT AND LOOK CONFIDENT', 'SHOULD SIT STRAIGHT AND LOOK CONFIDENT', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 50, 'WHAT GENRE OF COMPUTER GAMES SELLS MOST?', 'ACTION', 'STRATEGY', 'SPORTS', 'A GAME WHERE YOU ARE IN CHARGE OF, FOR EXAMPLE, AN ARMY OR A NATION, AND HAVE TO DECIDE THE BEST WAY TO DEFEAT THE ENEMY OR ADVANCE YOU R COUNTRY', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 51, 'WHAT GENRE SELLS LEAST?', 'ACTION', 'STRATEGY', 'SPORTS', 'A GAME WHERE YOU ARE IN CHARGE OF, FOR EXAMPLE, AN ARMY OR A NATION, AND HAVE TO DECIDE THE BEST WAY TO DEFEAT THE ENEMY OR ADVANCE YOU R COUNTRY', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 52, 'WHAT DO YOU THINK IS A STRATEGY GAME?', 'ACTION', 'STRATEGY', 'SPORTS', 'A GAME WHERE YOU ARE IN CHARGE OF, FOR EXAMPLE, AN ARMY OR A NATION, AND HAVE TO DECIDE THE BEST WAY TO DEFEAT THE ENEMY OR ADVANCE YOU R COUNTRY', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 1, 'IMAGE: FIBRE OPTIC CABLE', 'A', 'C', 'F', 'E', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 2, 'IMAGE: SATELLITE DISH', 'A', 'C', 'D', 'B', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 3, 'IMAGE: HIGH-DEFINITION TELEVISION', 'F', 'C', 'D', 'B', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 4, 'IMAGE: SPACE SATELLITE', 'A', 'E', 'D', 'F', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 5, 'IMAGE: 3G PHONE', 'A', 'E', 'D', 'F', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 6, 'IMAGE: DIGITAL RADIO', 'A', 'E', 'D', 'F', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 9, 'IN FUTURE, ROBOTS WILL__________ OPERATIONS INSTEAD OF HUMANS', 'GIVE UP', 'FIND OUT', 'CARRY OUT', 'CUT DOWN', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 8, 'AS MANY ITEMS OF TELECOMMUNICATIONS EQUIPMENT AS YOU CAN', 'PHONE SYSTEMS, SATELLITE DISHES, ANTENNAS, COPPER CABLES', 'NORWAY, KENYA, BELIZE', 'EIGHT', 'VOICE OVER INTERNET PROTOCOL', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 9, 'AS MANY COUNTRY NAMES AS YOU CAN', 'PHONE SYSTEMS, SATELLITE DISHES, ANTENNAS, COPPER CABLES', 'NORWAY, KENYA, BELIZE', 'EIGHT', 'VOICE OVER INTERNET PROTOCOL', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 10, 'THE MEANING OF VoIP', 'PHONE SYSTEMS, SATELLITE DISHES, ANTENNAS, COPPER CABLES', 'NORWAY, KENYA, BELIZE', 'EIGHT', 'VOICE OVER INTERNET PROTOCOL', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 11, 'WHERE DID HE FIRST LEARN ABOUT TELECOMMUNICATIONS?', 'BEING ABLE TO EXPLAIN TO CLIENTS QUITE COMPLICATED TECHNOLOGY IN SIMPLE TERMS', 'WORKING OUTSIDE IN BAD WEATHER', 'IN THE ARMY', 'CHANGE FROM COPPER CABLES TO FIBRE-OPTIC CABLES. CHANGE TO VoIP PHONES', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 12, 'NAME A CHANGE HE HAS EXPERIENCED IN TELECOMMUNICATIONS', 'BEING ABLE TO EXPLAIN TO CLIENTS QUITE COMPLICATED TECHNOLOGY IN SIMPLE TERMS', 'WORKING OUTSIDE IN BAD WEATHER', 'IN THE ARMY', 'CHANGE FROM COPPER CABLES TO FIBRE-OPTIC CABLES. CHANGE TO VoIP PHONES', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 17, 'HOW DID HE GET A DEMO?', 'BECAUSE NEED SHOW SUCCESS AND EXPERIENCE.', 'HE HAS A LICENSE IN COMPUTER SCIENCE AND MASTER IN COMPUTER GAMES TECHNOLOGY AND THEY WON THE PRIZE “GREAT MARKETING POTENTIAL”.', 'FOR WON THE PRIZE IN A COMPETITION “DARE TO BE A DIGITAL”.', 'THE GAME ON THE LIFE, ON THE PHONE.', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 16, 'OLD INDUSTRIES WILL __________ BUT NEW INDUSTRIES WILL TAKE THEIR PLACE', 'SET UP', 'CLOSE DOWN', 'WORK OUT', 'SHUT OFF', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 15, 'WHAT DOES HE NOT LIKE?', 'BEING ABLE TO EXPLAIN TO CLIENTS QUITE COMPLICATED TECHNOLOGY IN SIMPLE TERMS', 'WORKING OUTSIDE IN BAD WEATHER', 'THE EQUIPMENT HAS GOT MORE COMPLEX AND ALSO LIGHTER', 'CHANGE FROM COPPER CABLES TO FIBRE-OPTIC CABLES. CHANGE TO VoIP PHONES', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 16, 'INTERVIEWER: HOW LONG (HAVE YOU BEEN / WERE YOU) TELECOMMUNICATIONS TECHNICIAN?)', 'HAVE YOU BEEN', 'WERE YOU', '*****', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 17, 'THE FIRST STEP IS TO ____(1)______ AND __________ THE EQUIPMENT', 'PRINT OUT', 'SWITCH ON', 'PLUG IN', '*****', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 19, 'CLICK PRINT AND SELECT THE NUMBER OF COPIES TO __________', 'PRINT OUT', 'SWITCH ON', 'PLUG IN', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 19, 'I HAVE (HAVE SERVED / SERVED) FOR FOUR YEARS', 'HAVE SERVED', 'SERVED', '*****', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 20, 'THEN I (HAVE JOINED / JOINED) THIS COMPANY EIGHT YEARS AGO.', 'HAVE JOINED', 'JOINED', '*****', '*****', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 21, '(HAVE YOU SEE / DID YOU SEE) MANY CHANGES DURING THIS TIME?', 'HAVE YOU SEE', 'DID YOU SEE', '*****', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 22, 'YES, (WE HAVE REPLAED / WE REPLACED) COPPER LINES WITH FIBRE-OPTIC CABLES AND (WE HAVE INTRODUCED / WE INTRODUCED) VoIP PHONE SYSTEMS.', 'WE HAVE REPLACED - WE HAVE INTRODUCED', 'WE REPLACED - WE INTRODUCED', '*****', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 24, 'SECTION 2', 'A ) I HAVE TEXTED HIM AN INVITATION', 'B ) I TEXTED HIM AN INVITATION', '*****', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 25, 'SECTION 3', 'A ) HE FAXED ME A REPLY', 'B ) HE IS FAXED ME A REPLY', '*****', '*****', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 26, 'SECTION 4', 'A ) TODD IS PHONED THE OFFICE', 'B ) TODD PHONED THE OFFICE', '*****', '*****', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 27, 'SECTION 5', 'A ) SHE EMAILED ME TWICE', 'B ) SHE IS EMAILED ME TWICE', '*****', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 28, 'WHAT DOES VoIP STAND FOR?', 'BITS COMPRESSED DIGITAL DATA SENT VIA THE INTERNET', 'VOICE OVER INTERNET PROTOCOL', 'APLACE NEAR WICH YOU CAN MAKE AND RECEIVE CALLS WITH A VoIP HEADSET', '*****', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 29, 'WHAT IS A PACKET?', 'BITS COMPRESSED DIGITAL DATA SENT VIA THE INTERNET', 'VOICE OVER INTERNET PROTOCOL', 'APLACE NEAR WICH YOU CAN MAKE AND RECEIVE CALLS WITH A VoIP HEADSET', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 30, 'WHAT IS A WIRELESS HOTSPOT?', 'BITS COMPRESSED DIGITAL DATA SENT VIA THE INTERNET', 'VOICE OVER INTERNET PROTOCOL', 'APLACE NEAR WICH YOU CAN MAKE AND RECEIVE CALLS WITH A VoIP HEADSET', '*****', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 35, 'NUMBER 6', 'G', 'B', 'D', 'A', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 24, 'CHARLIE AND THE CHOCOLATE FACTORY', 'ACTION', 'FAMILY AND CHILDREN', 'SHOOTER', 'STRATEGY', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 34, 'NUMBER 5', 'G', 'B', 'D', 'A', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 33, 'NUMBER 4', 'F', 'B', 'D', 'A', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 32, 'NUMBER 3', 'F', 'B', 'D', 'C', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 31, 'MAX', 'STRATEGY', 'CDS, ALBUMS, MP3 PLAYER, MINIDISK, ONLINE', 'LIVE - ONLINE FROM NAPSTER', 'ROLE - PLAYING', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 37, 'HOW LONG DOES A SATELLITE IN GEOSTATIONARY ORBIT TAKE TO ROTATE ROUND THE EARTH?', '12 HOURS', '36 HOURS', '24 HOURS', '25 HOURS', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 38, 'HOW MANY SATELLITES IN GEOSTATIONARY ORBIT ARE REQUIRED TO PROVIDE GLOBAL COVERAGE?', 'ONE', 'FOUR', 'TWO', 'THREE', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 39, 'WHY IS IT AN ADVANTAGE TO LAUNCH GEOSTATIONARY SATELLITES FROM COUNTRIES NEAR THE EQUATOR?', 'IT IS EASIER TO LAUNCH THEM INTO THEIR ORVITING POSITION AROUND THE EQUATOR', 'FOUR', 'TV, RADIO, TELEPHONY, BROADBAND SERVICES, MILITARY COMMUNICATIONS, VIDEO CONFERENCING', 'THREE', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 40, 'WHAT ARE COMMUNICATIONS SATELLITES USED FOR?', 'IT IS EASIER TO LAUNCH THEM INTO THEIR ORVITING POSITION AROUND THE EQUATOR', 'FOUR', 'TV, RADIO, TELEPHONY, BROADBAND SERVICES, MILITARY COMMUNICATIONS, VIDEO CONFERENCING', 'THREE', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 23, 'PODCAST', 'COPYING TRACKS TO CDS FROM ONLINE MUSIC SITES', 'RECORDING YOUR CDS AND ENCODING THEN INTO MP3 OR OTHER DIGITAL FILES', 'BROADCASTING FILES, MAINLY AUDIO, ON THE INTERNET FOR OTHERS TO DOWNLOAD', 'ADDING EXTRAINFORMATION ABOUT ARTISTS, ALBUMS, AND SONGS TO TRACKS ON THE MP3 COLLECTION', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 31, 'NUMBER 2', 'F', 'B', 'D', 'C', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 1, 'PREDICTION ABOUT: TRANSPORT', 'LIANNE (GROUP A)', 'STEFAN (GROUP B)', 'LIANNE (GROUP A) - STEFAN (GROUP B)', '*****', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 2, 'PREDICTION ABOUT: HEALTH', 'LIANNE (GROUP A)', 'STEFAN (GROUP B)', 'LIANNE (GROUP A) - STEFAN (GROUP B)', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 3, 'PREDICTION ABOUT: IT', 'LIANNE (GROUP A)', 'STEFAN (GROUP B)', 'LIANNE (GROUP A) - STEFAN (GROUP B)', '*****', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 4, 'PREDICTION ABOUT: TELECOMMUNICATIONS', 'LIANNE (GROUP A)', 'STEFAN (GROUP B)', 'LIANNE (GROUP A) - STEFAN (GROUP B)', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 5, 'PREDICTION ABOUT: MILITARY', 'LIANNE (GROUP A)', 'STEFAN (GROUP B)', 'LIANNE (GROUP A) - STEFAN (GROUP B)', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 6, 'PREDICTION ABOUT: CRIME', 'LIANNE (GROUP A)', 'STEFAN (GROUP B)', 'LIANNE (GROUP A) - STEFAN (GROUP B)', '*****', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 8, 'PREDICTION ABOUT: DEVELOPING COUNTRIES', 'LIANNE (GROUP A)', 'STEFAN (GROUP B)', 'LIANNE (GROUP A) - STEFAN (GROUP B)', '*****', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 7, 'PREDICTION ABOUT: DOMESTIC', 'LIANNE (GROUP A)', 'STEFAN (GROUP B)', 'LIANNE (GROUP A) - STEFAN (GROUP B)', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 11, 'WE ALL BE ABLE TO USE THE WEB TO  __________ THE ANSWERS TO ALMOST EVERY QUESTION', 'GIVE UP', 'FIND OUT', 'CARRY OUT', 'CUT DOWN', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 12, 'IT IS IMPORTANT THAT WE __________ POLLUTION IN CITIES', 'GIVE UP', 'FIND OUT', 'CARRY OUT', 'CUT DOWN', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 13, 'ANIMATORS', 'WRITE THE CODE', 'MAKE CHARACTERS MOVE', 'CREATING', 'TRAINED ILLUSTRATORS', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 11', '25IT181', 14, 'PRODUCER', 'WRITE THE CODE', 'MAKE CHARACTERS MOVE', 'MAKE SURE DEADLINES', 'TRAINED ILLUSTRATORS', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 14, 'WHEN YOU __________ THE PETROL ENGINE, THE ELECTRIC MOTOR STARTS RUNNING', 'SET UP', 'CLOSE DOWN', 'WORK OUT', 'SHUT OFF', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 15, 'IT IS MY JOB TO __________ ALL THE EQUIPMENT BEFORE THE CONCERT BEGINS', 'SET UP', 'CLOSE DOWN', 'WORK OUT', 'SHUT OFF', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 18, 'THE FIRST STEP IS TO __________ AND _____(2)_____ THE EQUIPMENT', 'PRINT OUT', 'SWITCH ON', 'PLUG IN', '*****', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 13, 'WHY IS HIS JOB NOW MUCH MORE ABOUT BRAIN THAT MUSCLE?', 'BEING ABLE TO EXPLAIN TO CLIENTS QUITE COMPLICATED TECHNOLOGY IN SIMPLE TERMS', 'THE EQUIPMENT HASGOT MORE COMPLEX AND ALSO LIGHTER', 'IN THE ARMY', 'CHANGE FROM COPPER CABLES TO FIBRE-OPTIC CABLES. CHANGE TO VoIP PHONES', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 14, 'WHAT DOES HE LIKE MOST ABOUT HIS JOB?', 'BEING ABLE TO EXPLAIN TO CLIENTS QUITE COMPLICATED TECHNOLOGY IN SIMPLE TERMS', 'THE EQUIPMENT HASGOT MORE COMPLEX AND ALSO LIGHTER', 'IN THE ARMY', 'CHANGE FROM COPPER CABLES TO FIBRE-OPTIC CABLES. CHANGE TO VoIP PHONES', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 17, 'I (HAVE SERVED / SERVED) FOR FOUR YEARS', 'HAVE SERVED', 'SERVED', '*****', '*****', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 13', '25IT181', 18, 'THEN I (HAVE JOINED / JOINED) THIS COMPANY ABOUT EIGHT YEARS AGO', 'HAVE JOINED', 'JOINED', '*****', '*****', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 13, 'IF YOU DO NOT HAVE A DICTIONARY, YOU CAN OFTEN __________ THE MEANING OF A NEW WORD FROM THE WORDS AROUND IT', 'GIVE UP', 'FIND OUT', 'WORK OUT', 'CUT DOWN', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 21, 'MEDICINE AT A DISTANCE', 'MICROCHIP', 'POLYCARBONATE', 'MICROMETER', 'TELEMEDICINE', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 22, 'A VERY SMALL ELECTRONIC CHIP', 'MICROCHIP', 'POLYCARBONATE', 'MICROMETER', 'TELEMEDICINE', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 23, 'A PLASTIC CONTAINING MANY MOLECULES OF CARBON', 'MICROCHIP', 'POLYCARBONATE', 'MICROMETER', 'TELEMEDICINE', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 24, 'AN INSTRUMENT FOR MEASURING VERY SMALL THICKNESSES', 'MICROCHIP', 'POLYCARBONATE', 'MICROMETER', 'TELEMEDICINE', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 25, 'CONCRETE WHICH HAS BEEN STRESSED EARLIER', 'MICROPROCESSOR', 'EXTRACTOR FAN', 'PRESTRESSED CONCRETE', 'SUPERCOMPUTER', '3'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 26, 'A COMPUTER MUCH MORE POWERFULTHAN ORDINARY COMPUTERS', 'MICROPROCESSOR', 'EXTRACTOR FAN', 'PRESTRESSED CONCRETE', 'SUPERCOMPUTER', '4'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 27, 'A VERY SMALL PROCESSOR', 'MICROPROCESSOR', 'EXTRACTOR FAN', 'PRESTRESSED CONCRETE', 'SUPERCOMPUTER', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 28, 'A FAN WHICH REMOVES AIR AND BLOWS IT OUT', 'MICROPROCESSOR', 'EXTRACTOR FAN', 'PRESTRESSED CONCRETE', 'SUPERCOMPUTER', '2'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 29, 'A PHONE WITHOUT A CORD', 'CORDLESS PONE', 'EXTRACTOR FAN', 'PRESTRESSED CONCRETE', 'BIOMETRICS', '1'),
('Information and Communication Technologies', 'Oxford English For Careers TECHNOLOGY', 'Unit 15', '25IT181', 30, 'MEASURING ACCORDING TO BIOLOGICAL DATA', 'CORDLESS PONE', 'EXTRACTOR FAN', 'PRESTRESSED CONCRETE', 'BIOMETRICS', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `rNumber` varchar(25) NOT NULL,
  `sName` varchar(50) NOT NULL,
  `sbirthday` varchar(25) NOT NULL,
  `grade` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
