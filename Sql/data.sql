-- phpMyAdmin SQL Dump
-- version 4.0.0
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 31, 2013 at 01:51 PM
-- Server version: 5.5.30
-- PHP Version: 5.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `music`
--

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `name`, `artist_id`) VALUES
(1, 'In the Aeroplane Over the Sea', 1),
(2, 'The Fragile', 2),
(3, 'As Good As Dead', 3),
(4, 'Help!', 4),
(5, 'Yellow Submarine', 4);

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `name`) VALUES
(1, 'Neutral Milk Hotel'),
(2, 'Nine Inch Nails'),
(3, 'Local H'),
(4, 'The Beatles');

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Indie Rock'),
(2, 'Industrial Rock'),
(3, 'Alternative Rock'),
(4, 'Pop Rock'),
(5, 'Psychedelic rock');

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`id`, `title`, `tracknumber`, `album_id`, `genre_id`) VALUES
(1, 'King of Carrot Flowers Part 1', 1, 1, 1),
(2, 'King of Carrot Flowers Part 2', 2, 1, 1),
(3, 'In the Aeroplane Over The Sea', 3, 1, 1),
(4, 'Two-Headed Boy', 4, 1, 1),
(5, 'The Fool', 5, 1, 1),
(6, 'Holland, 1945', 6, 1, 1),
(7, 'Communist Daughter', 7, 1, 1),
(8, 'Oh Comely', 8, 1, 1),
(9, 'Ghost', 9, 1, 1),
(10, 'Untitled', 10, 1, 1),
(12, 'Two-Headed Boy Part 2', 11, 1, 1),
(13, 'Somewhat Damaged', 1, 2, 2),
(14, 'The Day the World Went Away', 2, 2, 2),
(15, 'The Frail', 3, 2, 2),
(16, 'The Wretched', 4, 2, 2),
(17, 'We''re In This Together', 5, 2, 2),
(18, 'The Fragile', 6, 2, 2),
(19, 'Just Like You Imagined', 7, 2, 2),
(20, 'Even Deeper', 8, 2, 2),
(21, 'Pilgrimage', 9, 2, 2),
(22, 'No You Don''t', 10, 2, 2),
(23, 'La Mer', 11, 2, 2),
(24, 'The Great Below', 12, 2, 2),
(25, 'The Way Out is Through', 1, 2, 2),
(26, 'Into the Void', 2, 2, 2),
(27, 'Where is Everybody', 3, 2, 2),
(28, 'The Mark Has Been Made', 4, 2, 2),
(29, 'Please', 5, 2, 2),
(30, 'Starfuckers, Inc', 6, 2, 2),
(31, 'Complication', 7, 2, 2),
(32, 'I''m Looking Forward to Joining You, Finally', 8, 2, 2),
(33, 'The Big Come Down', 9, 2, 2),
(34, 'Underneath It All', 10, 2, 2),
(35, 'Ripe', 12, 2, 2),
(36, 'Manifest Destiny Part 1', 1, 3, 3),
(37, 'High-Fiving MF', 2, 3, 3),
(38, 'Bound for the Floor', 3, 3, 3),
(39, 'Lovey Dovey', 4, 3, 3),
(40, 'I Saw What You Did and I Know Who You Are', 5, 3, 3),
(41, 'No Problem', 6, 3, 3),
(42, 'Nothing Special', 7, 3, 3),
(43, 'Eddie Vedder', 8, 3, 3),
(44, 'Back In the Day', 9, 3, 3),
(45, 'Freeze-Dried(F)lies', 10, 3, 3),
(46, 'Fritz''s Corner', 11, 3, 3),
(47, 'O.K.', 12, 3, 3),
(48, 'Manifest Destiny Part 2', 13, 3, 3),
(49, 'Help!', 1, 4, 4),
(50, 'The Night Before', 2, 4, 4),
(51, 'You''ve Got to Hide Your Love Away', 3, 4, 4),
(52, 'I Need You', 4, 4, 4),
(53, 'Another Girl', 5, 4, 4),
(54, 'You''re Going to Lost That Girl', 6, 4, 4),
(55, 'Ticket to Ride', 7, 4, 4),
(56, 'Act Naturally', 1, 4, 4),
(57, 'It''s Only Love', 2, 4, 4),
(58, 'You Like Me Too Much', 3, 4, 4),
(59, 'Tell Me What You See', 4, 4, 4),
(60, 'I''ve Just Seen a Face', 5, 4, 4),
(61, 'Yesterday', 6, 4, 4),
(62, 'Dizzy Miss Lizzy', 7, 4, 4),
(63, 'Only a Northern Song', 1, 5, 5),
(64, 'Hey Bulldog', 2, 5, 5),
(65, 'Across the Universe', 3, 5, 5),
(66, 'All Together Now', 1, 5, 5),
(67, 'It''s All Too Much', 2, 5, 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
