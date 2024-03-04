--Заполнение таблицы жанров.
INSERT INTO public.genre VALUES
	 (1, 'Blues'),
	 (2, 'Jazz'),
	 (3, 'Rock'),
	 (4, 'Dubstep'),
	 (5, 'Country'),
	 (6, 'Pop'),
	 (7, 'Metal'),
	 (8, 'Punk'),
	 (9, 'Hip Hop'),
	 (10, 'Folk');

--Заполнение таблицы исполнителей.
INSERT INTO public.artist VALUES
	 (1, 'singer'),
	 (2, 'second singer'),
	 (3, 'third singer'),
	 (4, 'fourth singer'),
	 (5, 'fifth singer'),
	 (6, 'sixth singer'),
	 (7, 'seventh singer');

--Заполнение таблицы связей исполнителей и жанров.
INSERT INTO public.artgenid VALUES
	 (1, 1),
	 (2, 1),
	 (2, 5),
	 (3, 3),
	 (3, 8),
	 (4, 1),
	 (5, 7),
	 (5, 8),
	 (6, 6),
	 (7, 9);

--Заполнение таблицы альбомов.
INSERT INTO public.album VALUES
	(1, 'The White Album', 1968),
	(2, 'Thriller', 1982),
	(3, 'Rumours', 1977),
	(4, 'The Dark Side of the Moon', 2015),
	(5, 'Abbey Road', 2020),
	(6, 'Back in Black', 1980),
	(7, 'The Joshua Tree', 1987),
	(8, 'Purple Rain', 2019),
	(9, '21', 2021),
	(10, 'Lonely Hearts Club', 2018),
	(11, 'The Wall', 1979),
	(12, 'Born to Run', 1975),
	(13, 'Hotel California', 1976),
	(14, 'Nevermind', 1991),
	(15, 'Pet Sounds', 2006),
	(16, 'Legend', 1984),
	(17, 'Hounds of Love', 1985),
	(18, 'A Night at the Opera', 1975),
	(19, 'The Miseducation of Lauryn Hill', 1998),
	(20, 'Graceland', 1986);

--Заполнение таблицы связей исполнителей и альбомов.
INSERT INTO public.artalbid VALUES
	 (1, 1),
	 (1, 11),
	 (2, 1),
	 (2, 2),
	 (2, 13),
	 (3, 3),
	 (4, 2),
	 (4, 3),
	 (5, 5),
	 (6, 6),
	 (6, 17),
	 (7, 2),
	 (7, 7);

--Заполнение таблицы треков.
INSERT INTO public.tracks VALUES
	(1, 'Morning Glory', 8, 240),
	(2, 'Whispering Wind', 13, 180),
	(3, 'Dancing Fireflies', 5, 210),
	(4, 'Serenade Under the Stars', 11, 195),
	(5, 'Golden Sunset', 8, 220),
	(6, 'Enchanted Forest', 4, 230),
	(7, 'Mystic Waters', 14, 190),
	(8, 'Eternal Love', 3, 215),
	(9, 'Celestial Dreams', 17, 225),
	(10, 'Harmony of my Nature', 2, 205),
	(11, 'Midnight Magic', 12, 235),
	(12, 'Dreams Unfold', 5, 185),
	(13, 'Echoes of Time', 8, 200),
	(14, 'Whispers in the Shadows', 10, 245),
	(15, 'Sunset Reverie', 18, 195),
	(16, 'Journey to the Unknown', 6, 210),
	(17, 'Lost in Tranquility', 1, 220),
	(18, 'Mystical Mirage', 7, 230),
	(19, 'Starlight Sonata', 19, 240),
	(20, 'Rhythms of the Heart', 15, 195),
	(21, 'Waves of Serenity', 4, 205),
	(22, 'Twilight Whispers', 12, 225),
	(23, 'Melodies of the Moon', 18, 190),
	(24, 'Soothing Rainfall', 8, 215),
	(25, 'Whispers of the Soul', 11, 235),
	(26, 'Harbor of Dreams', 14, 185),
	(27, 'Serenity Falls', 20, 200),
	(28, 'Echoes of Eternity', 9, 250),
	(29, 'Celestial Symphony', 3, 195),
	(30, 'Enchanted Lullaby', 6, 210),
	(31, 'Whispers of Hope', 17, 220),
	(32, 'Mystic Echoes', 2, 230),
	(33, 'Sunrise Serenade', 16, 240),
	(34, 'Moonlit Melody', 13, 195),
	(35, 'Dance of the Spirits', 7, 205),
	(36, 'Whispers in my mind', 15, 225),
	(37, 'Serenade of the Stars', 10, 190),
	(38, 'Golden Horizon', 1, 215),
	(39, 'Eternal Bliss', 19, 235),
	(40, 'Harmony of the Universe', 20, 185),
	(41, 'Midnight Serenity', 16, 200),
	(42, 'Dreams of Tomorrow', 5, 250),
	(43, 'Echoes of Serenity', 18, 195),
	(44, 'Sunset Symphony', 7, 210),
	(45, 'Journey to Infinity', 14, 220),
	(46, 'Lost in Fantasy', 2, 230),
	(47, 'Starlit Dreams', 11, 240),
	(48, 'Rhythms of the Cosmos', 3, 195),
	(49, 'Waves of Harmony', 9, 205),
	(50, 'Twilight Dreams', 12, 225),
	(51, 'my own', 1, 250),
	(52, 'own my', 1, 300),
	(53, 'My', 1, 278),
	(54, 'oh my god', 1, 223),
	(55, 'myself', 2, 245),
	(56, 'by myself', 2, 222),
	(57, 'bemy self', 2, 260),
	(58, 'myself by', 2, 267),
	(59, 'by myself by', 2, 300),
	(60, 'beemy', 2, 313),
	(61, 'premyne', 2, 333);

--Заполнение таблицы сборников.
INSERT INTO public.collection VALUES
	(1, 'Chart-Toppers', 2005),
	(2, 'EIconic Anthems', 2011),
	(3, 'Greatest Hits', 2019),
	(4, 'Ultimate Collection', 2015),
	(5, 'Hits of the Decades', 2018),
	(6, 'Legends of Music', 2022);

--Заполнение таблицы связей сборников и треков.
INSERT INTO public.colltracksid VALUES
	(1, 12),
	(6, 25),
	(3, 7),
	(2, 48),
	(4, 32),
	(5, 19),
	(1, 41),
	(3, 5),
	(6, 37),
	(2, 10),
	(4, 46),
	(5, 22),
	(1, 2),
	(3, 44),
	(6, 29),
	(2, 13),
	(4, 31),
	(5, 8),
	(1, 49),
	(3, 16),
	(6, 39),
	(2, 26),
	(4, 20),
	(5, 45),
	(1, 11),
	(3, 36),
	(6, 4),
	(2, 14),
	(4, 30),
	(5, 42);