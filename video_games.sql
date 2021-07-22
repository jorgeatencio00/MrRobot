-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2019 at 09:31 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `video_games`
--

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `Developer_Name` varchar(255) NOT NULL,
  `D_Location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`Developer_Name`, `D_Location`) VALUES
('343 Industries', ' Redmond, Washington'),
('Beenox', 'Quebec City, Canada'),
('Bethesda Game Studios', 'Rockville, Maryland'),
('Blizzard Entertainment', 'Irvine, California'),
('Bloober Team', 'Krakow, Poland'),
('Bluehole, Inc.', 'Seongnam, South Korea'),
('Bungie', 'Bellevue, Washington'),
('CAPCOM CO.', 'Osaka, Japan'),
('CD Projekt Red', 'Wroclaw, Poland'),
('Creative Assembly\r\n', 'West Sussex, United Kingdom'),
('Cryptic Studios', 'Los Gatos, California'),
('Daybreak Games\r\n', 'San Diego, California'),
('DICE', 'Stockholm, Sweden'),
('EA Canada', 'British Columbia'),
('EA Tiburon', 'Orlando, Florida'),
('EA Vancouver\r\n', 'British Columbia'),
('Endnight Games Ltd', 'Vancouver, Canada'),
('Epic Games', 'Cary, North Carolina'),
('Fireproof Games', 'Guildford, England'),
('FromSoftware', 'Tokyo, Japan'),
('Frozenbyte', 'Helsinki, Finland'),
('Game Freak', 'Tokyo, Japan'),
('Gearbox Software', 'Frisco, Texas'),
('Hempuli', 'Finland'),
('Infinity Ward', 'Woodland Hills, California'),
('Insomniac Games', 'Burbank, California'),
('Kojima Productions', 'Tokyo, Japan'),
('Naughty Dog', 'Santa Monica, California'),
('Nighthawk Interactive', 'Edison, New Jersey'),
('Nintendo', 'Redmond, Washington'),
('No Brakes Games', 'Tenerife'),
('Obsidian Entertainment', 'Irvine, California'),
('Pearl Abyss', 'Seoul, South Korea'),
('Playdead', 'Copenhagen, Denmark'),
('Polyphony Digital\r\n', 'Tokyo, Japan'),
('Psyonix', 'San Diego, California'),
('Red Barrels', 'Montreal, Canada'),
('Remedy Entertainment', 'Espoo, Finland'),
('Resonair', 'Shibuya, Tokyo'),
('Respawn Entertainment', 'Sherman Oaks, California'),
('Saber Interactive', 'Maplewood, New Jersey'),
('Scott Cawthon', 'Maplewood, New Jersey'),
('SIE Santa Monica Studio', 'Los Angeles, California'),
('Slightly Mad Studios', 'London, United Kingdom'),
('Square Enix', 'Tokyo, Japan'),
('Sumo Digital', 'Sheffield, England'),
('Tango Gameworks', 'Tokyo, Japan'),
('The Coalition', 'Vancouver, British Columbia'),
('Turn 10', 'Redmond, Washington'),
('Valve Software', 'Bellevue, Washington'),
('Visual Concepts', 'Novato, California'),
('ZeniMax Media', 'Rockville, Maryland');

-- --------------------------------------------------------

--
-- Stand-in structure for view `game`
-- (See below for the actual view)
--
CREATE TABLE `game` (
`Title` varchar(255)
,`Publisher_Name` varchar(255)
,`Developer_Name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `game_log`
--

CREATE TABLE `game_log` (
  `Title` varchar(255) NOT NULL,
  `Publisher_Name` varchar(255) NOT NULL,
  `Developer_Name` varchar(255) NOT NULL,
  `Reviews` int(11) NOT NULL,
  `ESRB_Rating` varchar(255) NOT NULL,
  `Platform` varchar(255) NOT NULL,
  `Release_Date` date NOT NULL,
  `Price` int(11) NOT NULL,
  `Genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game_log`
--

INSERT INTO `game_log` (`Title`, `Publisher_Name`, `Developer_Name`, `Reviews`, `ESRB_Rating`, `Platform`, `Release_Date`, `Price`, `Genre`) VALUES
('Fortnite', 'Epic Games', 'Epic Games', 84, 'T', 'PlayStation 4, Xbox One, PC, Nintendo Switch', '2017-07-25', 0, 'Survival, Shooter');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `Publisher_Name` varchar(255) NOT NULL,
  `P_Location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`Publisher_Name`, `P_Location`) VALUES
('2K', 'Novato, California'),
('505 Games', 'Milan, Italy'),
('Activision', 'Santa Monica, California'),
('BANDAI Namco Games', 'Minato-ku, Tokyo'),
('Bethesda Softworks', 'Rockville, Maryland'),
('Blizzard Entertainment', 'Irvine, California'),
('Bluehole, Inc', 'Seongnam, South Korea'),
('CAPCOM CO.', 'Osaka, Japan'),
('Curve Digital', 'London'),
('Daybreak Game Company', 'San Diego, California'),
('Electronic Arts', 'Redwood City, California'),
('Endnight Games Ltd', 'Vancouver, Canada'),
('Epic Games', 'Cary, North Carolina'),
('Fireproof Games', 'Guildford, England'),
('Frozenbyte', 'Helsinki, Finland'),
('Hempuli', 'Finland'),
('Lionsgate Games', 'Santa Monica, California'),
('Mad Dog Games', 'Santa Monica, California'),
('Microsoft Game Studios', 'Redmond, Washington'),
('Nighthawk Interactive', 'Edison, New Jersey'),
('Nintendo', 'Redmond, Washington'),
('Pearl Abyss', 'Seoul, South Korea'),
('Perfect World Entertainment', 'Redwood City, California'),
('Playdead', 'Copenhagen, Denmark'),
('Private Division', 'New York City, New York'),
('Psyonix', 'San Diego, California'),
('Red Barrels', 'Montreal, Canada'),
('Scott Cawthon', 'Houston, Texas'),
('Sega', 'Tokyo, Japan'),
('Sony', 'New York, New York'),
('Sony Interactive Entertainment', 'San Mateo, California'),
('Square Enix', 'Shinjuku, Tokyo'),
('Valve Software', 'Bellevue, Washington'),
('Warner Bros. Interactive Entertainment', 'Burbank, California');

-- --------------------------------------------------------

--
-- Table structure for table `video_games`
--

CREATE TABLE `video_games` (
  `Title` varchar(255) NOT NULL,
  `Publisher_Name` varchar(255) NOT NULL,
  `Developer_Name` varchar(255) NOT NULL,
  `Reviews` int(11) NOT NULL,
  `ESRB_Rating` varchar(255) NOT NULL,
  `Platform` varchar(255) NOT NULL,
  `Release_Date` date NOT NULL,
  `Price` int(11) NOT NULL,
  `Genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video_games`
--

INSERT INTO `video_games` (`Title`, `Publisher_Name`, `Developer_Name`, `Reviews`, `ESRB_Rating`, `Platform`, `Release_Date`, `Price`, `Genre`) VALUES
('Alien: Isolation', 'Sega', 'Creative Assembly', 80, 'M', 'PlayStation 4, Xbox One, PC', '2014-10-06', 40, 'Horror'),
('Apex Legends', 'Electronic Arts', 'Respawn Entertainment', 86, 'T', 'PlayStation 4, Xbox One, PC', '2019-02-04', 20, 'Survival, Shooter'),
('ATV Renegades', 'Nighthawk Interactive', 'Nighthawk Interactive', 80, 'E', 'PlayStation 4, Xbox One', '2017-04-18', 20, 'Racing'),
('Baba Is You', 'Hempuli', 'Hempuli', 84, 'E', 'PC, Nintendo Switch', '2019-03-13', 15, 'Puzzle'),
('Battlefield V', 'Electronic Arts', 'DICE', 79, 'M', 'Xbox One, PC, PlayStation 4', '2018-11-20', 30, 'Shooter'),
('Black Desert Online', 'Pearl Abyss', 'Pearl Abyss', 71, 'T', 'PC', '2016-03-03', 10, 'MMO, RPG'),
('Blair Witch', 'Lionsgate Games', 'Bloober Team', 69, 'M', 'Xbox One, PC', '2019-08-30', 30, 'Horror'),
('Borderlands 3', '2K', 'Gearbox Software', 80, 'M', 'Xbox One, PC, PlayStation 4, Google Stadia', '2019-09-13', 60, 'RPG, Shooter'),
('Call Of Duty: Modern Warfare', 'Activision', 'Infinity Ward', 81, 'M', 'PlayStation 4, Xbox One, PC', '2019-10-25', 60, 'Shooter'),
('Control', '505 Games', 'Remedy Entertainment', 84, 'M', 'PlayStation 4, Xbox One, PC', '2019-08-27', 60, 'Adventure'),
('Counter Strike: Global Offensive', 'Valve Software', 'Valve Software', 83, 'M', 'PC', '2012-08-12', 0, 'Shooter'),
('Crash Team Racing: Nitro-Fueled', 'Activision', 'Beenox', 83, 'E10+', 'PlayStation 4, Xbox, One, Nintendo Switch', '2019-06-21', 60, 'Racing'),
('Dark Souls III', 'Bandal Namco Games', 'FromSoftware', 88, 'M', 'PlayStation 4, Xbox One, PC', '2016-04-12', 60, 'RPG'),
('Death Stranding', 'Sony Interactive Entertainment', 'Kojima Productions', 84, 'M', 'PlayStation 4, PC', '2019-11-08', 60, 'Adventure'),
('Destiny 2', 'Activision', 'Bungie', 84, 'T', 'PlayStation 4, Xbox One, PC', '2017-09-06', 50, 'Shooter, MMO'),
('Diablo III: Reaper of Souls', 'Blizzard Entertainment', 'Blizzard Entertainment', 87, 'M', 'PC', '2014-03-25', 20, 'RPG'),
('EA Sports UFC 3', 'Electronic Arts', 'EA Canada', 78, 'T', 'PlayStation 4, Xbox One', '2018-02-02', 20, 'Sport'),
('Elder Scrolls Online', 'Bethesda Softworks', 'ZeniMax Media', 70, 'M', 'PC', '2014-04-04', 60, 'MMO, RPG'),
('Fallout 4', 'Bethesda Softworks', 'Bethesda Game Studios', 87, 'M', 'PlayStation 4, Xbox One, PC', '2015-11-10', 30, 'RPG'),
('Fallout 76', 'Bethesda Softworks', 'Bethesda Game Studios', 53, 'M', 'PC, PlayStation 4, Xbox One', '2018-09-14', 40, 'MMO, RPG'),
('FIFA 20', 'Electronic Arts', 'EA Vancouver', 78, 'E', 'PlayStation 4, Xbox One, PC', '2019-09-27', 60, 'Sport'),
('Five Nights at Freddy\'s', 'Scott Cawthon', 'Scott Cawthon', 78, 'M', 'PC', '2014-08-18', 5, 'Horror'),
('Fortnite', 'Epic Games', 'Epic Games', 84, 'T', 'PlayStation 4, Xbox One, PC, Nintendo Switch', '2017-07-25', 0, 'Survival, Shooter'),
('Forza Motorsport 7', 'Microsoft Game Studios', 'Turn 10', 85, 'E', 'Xbox One, PC', '2017-10-03', 60, 'Racing'),
('Gears 5', 'Microsoft Game Studios', 'The Coalition', 84, 'M', 'Xbox One, PC', '2019-09-10', 60, 'Shooter'),
('God of War', 'Sony Interactive Entertainment', 'SIE Santa Monica Studio', 95, 'M', 'PlayStation 4', '2018-04-20', 20, 'Adventure'),
('Gran Turismo Sport', 'Sony Interactive Entertainment', 'Polyphony Digital ', 76, 'E', 'PlayStation 4', '2017-10-17', 20, 'Racing'),
('Halo 5: Guardians', 'Microsoft Game Studios', '343 Industries', 83, 'M', 'Xbox One', '2015-10-27', 20, 'Shooter'),
('Human: Fall Flat', 'Curve Digital', 'No Brakes Games', 68, 'E', 'PC, Xbox One, PlayStation 4, Nintendo Switch, iOS, Android', '2016-07-22', 15, 'Puzzle'),
('Legend of Zelda: Link\'s Awakening', 'Nintendo', 'Nintendo', 87, 'E', 'Nintendo Switch', '2019-09-20', 30, 'Adventure'),
('Limbo', 'Playdead', 'Playdead', 88, 'T', 'PC, Nintendo Switch, Xbox 360, PlayStation 4, PlayStation 3, Android, iOS, Xbox One', '2010-07-21', 10, 'Puzzle'),
('Luigi\'s Mansion 3', 'Nintendo', 'Nintendo', 86, 'E', 'Nintendo Switch', '2019-10-31', 60, 'Adventure'),
('Madden NFL 20', 'Electronic Arts', 'EA Tiburon', 77, 'E', 'PlayStation 4, Xbox One, PC', '2019-08-02', 60, 'Sport'),
('Mario Kart 8 Deluxe', 'Nintendo', 'Nintendo', 92, 'E', 'Nintendo Switch', '2017-04-28', 60, 'Racing'),
('Marvel\'s Spider-Man', 'Sony Interactive Entertainment', 'Insomniac Games', 88, 'T', 'PlayStation 4', '2018-09-07', 40, 'Adventure'),
('MLB 19: The Show', 'Sony Interactive Entertainment', 'Sony San Diego Studio', 86, 'E', 'PlayStation 4', '2019-03-26', 60, 'Sport'),
('NBA 2K Playgrounds 2', 'Mad Dog Games', 'Saber Interactive', 70, 'E', 'PlayStation 4, Xbox One, PC, Nintendo Switch', '2019-10-16', 30, 'Sport'),
('NBA 2K19', '2K', 'Visual Concepts', 81, 'E', 'PlayStation 4, Xbox One, PC', '2018-09-11', 60, 'Sport'),
('Neverwinter', 'Perfect World Entertainment', 'Cryptic Studios', 71, 'T', 'PlayStation 4, Xbox One, PC', '2013-06-20', 0, 'MMO, RPG'),
('NHL 20', 'Electronic Arts', 'EA Vancouver', 79, 'E10+', 'PlayStation 4, Xbox One', '2019-09-13', 60, 'Sport'),
('Octopath Traveler', 'Square Enix, Nintendo', 'Square Enix', 84, 'T', 'Nintendo Switch', '2018-07-13', 45, 'RPG'),
('Outlast', 'Red Barrels', 'Red Barrels', 76, 'M', 'PlayStation', '2013-09-04', 20, 'Horror'),
('PlanetSide 2', 'Daybreak Game Company', 'Daybreak Games', 78, 'T', 'PlayStation 4, PC', '2012-11-20', 0, 'MMO, Shooter'),
('PlayerUnknown\'s Battlegrounds', 'Bluehole, Inc.', 'Bluehole, Inc.', 77, 'T', 'Xbox One, PC', '2017-03-23', 10, 'Shooter'),
('Pokemon Sword and Sheild', 'Nintendo', 'Game Freak', 82, 'E', 'Nintendo Swtich', '2019-11-15', 60, 'RPG'),
('Portal', 'Valve Software', 'Valve Software', 90, 'T', 'PC, PlayStation 3, Xbox 360', '2007-10-10', 10, 'Puzzle'),
('Portal 2', 'Valve Software', 'Valve Software', 95, 'E10+', 'PC, PlayStation 3, Xbox 360', '2011-04-18', 10, 'Puzzle, Adventure'),
('Project CARS 2', 'BANDAI Namco Games', 'Slightly Mad Studios', 82, 'E', 'PlayStation 4, Xbox One, PC', '2017-09-22', 60, 'Racing'),
('Resident Evil 2', 'CAPCOM CO.', 'CAPCOM CO.', 92, 'M', 'PlayStation 4, Xbox One, PC', '2019-01-25', 60, 'Horror'),
('Rocket League', 'Psyonix', 'Psyonix', 87, 'E', 'PlayStation 4, Xbox One, PC, Nintendo Switch', '2015-07-06', 15, 'Racing, Sport'),
('Star Wars Jedi: Fallen Order', 'Electronic Arts', 'Respawn Entertainment', 84, 'T', 'PlayStation 4, Xbox One, PC', '2019-11-15', 60, 'Adventure'),
('Super Mario Odyssey', 'Nintendo', 'Nintendo', 97, 'E', 'Nintendo Switch', '2017-10-27', 60, 'Adventure'),
('Team Sonic Racing', 'Sega', 'Sumo Digital', 74, 'E', 'PlayStation 4, Xbox One, PC, Nintendo Switch', '2019-05-21', 40, 'Racing'),
('Tetris Effect', 'Sony', 'Resonair', 89, 'E', 'PlayStation 4', '2018-11-09', 20, 'Puzzle'),
('The Elder Scrolls V: Skyrim - Special Edition', 'Bethesda Softworks', 'Bethesda Game Studios', 80, 'M', 'PlayStation 4, Xbox One, PC', '2016-10-28', 40, 'RPG'),
('The Evil Within', 'Bethesda Softworks', 'Tango Gameworks', 72, 'M', 'PlayStation 4, Xbox One, PC', '2014-10-13', 20, 'Horror'),
('The Evil Within 2', 'Bethesda Softworks', 'Tango Gameworks', 80, 'M', 'PlayStation 4, Xbox One, PC', '2017-10-13', 60, 'Horror'),
('The Forest', 'Endnight Games Ltd', 'Endnight Games Ltd', 81, 'M', 'PC', '2018-04-30', 20, 'Horror, Survival'),
('The Legend of Zelda: Breath of the Wild', 'Nintendo', 'Nintendo', 96, 'E10+', 'Nintendo Switch, Wii U', '2017-03-03', 50, 'Adventure, RPG'),
('The Outer Worlds', 'Private Division', 'Obsidian Entertainment', 85, 'M', 'Xbox One, PC, PlayStation 4', '2019-10-25', 60, 'RPG'),
('The Room', 'Fireproof Games', 'Fireproof Games', 74, 'N/A', 'iOS, Android, Nintendo Switch, PC', '2012-09-01', 5, 'Puzzle'),
('The Witcher 3: Wild Hunt', 'Warner Bros. Interactive Entertainment', 'CD Projekt Red', 92, 'M', 'Xbox One, PC, PlayStation 4', '2015-05-19', 40, 'RPG'),
('Trine: Enhanced Edition', 'Frozenbyte', 'Frozenbyte', 82, 'E10+', 'PlayStation 4, Wii U, PC', '2009-07-02', 15, 'Puzzle'),
('Uncharted 4: A Thief\'s End', 'Sony', 'Naughty Dog', 92, 'M', 'PlayStation 4', '2016-05-10', 20, 'Adventure'),
('World of Warcraft Classic', 'Blizzard Entertainment', 'Blizzard Entertainment', 81, 'T', 'PC', '2019-08-26', 15, 'RPG, MMO'),
('World of Warcraft: Legion', 'Blizzard Entertainment', 'Blizzard Entertainment', 88, 'T', 'PC', '2016-08-30', 15, 'RPG, MMO'),
('WWE 2K20', '2K ', 'Visual Concepts', 40, 'E', 'PlayStation 4, Xbox One, PC', '2019-10-22', 60, 'Sport');

-- --------------------------------------------------------

--
-- Structure for view `game`
--
DROP TABLE IF EXISTS `game`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `game`  AS  select `Title` AS `Title`,`Publisher_Name` AS `Publisher_Name`,`Developer_Name` AS `Developer_Name` from `video_games` where `Title` = 'Destiny 2' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`Developer_Name`);

--
-- Indexes for table `game_log`
--
ALTER TABLE `game_log`
  ADD PRIMARY KEY (`Title`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`Publisher_Name`);

--
-- Indexes for table `video_games`
--
ALTER TABLE `video_games`
  ADD PRIMARY KEY (`Title`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
