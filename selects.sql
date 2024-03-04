--Название и продолжительность самого длительного трека.
SELECT title, duration FROM tracks
WHERE duration = (
SELECT MAX(duration) FROM tracks);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT title FROM tracks
WHERE duration >= 3.5*60;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT title FROM collection
WHERE "year" between 2018 and 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT name FROM artist
WHERE name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT title FROM tracks
WHERE title ~* '\y(my)\y';

--Количество исполнителей в каждом жанре.
SELECT name, count(artistid) artist_q FROM genre g
JOIN artgenid a ON g.id  = a.genreid
GROUP BY g."name"
ORDER BY artist_q DESC;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT count(album) FROM tracks t
JOIN album a ON t.album  = a.id WHERE "year" BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому.
SELECT a.title, ROUND(AVG(duration)/60, 1) avg_duration_munutes FROM tracks t
JOIN album a ON t.album  = a.id
GROUP BY a.title
ORDER BY avg_duratiON_munutes DESC;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT a.name FROM artist a
WHERE a.name NOT IN(
SELECT a.name FROM artist
JOIN artalbid a2 ON a.id  = a2.artistid
JOIN album a3 ON a2.albumid = a3.id WHERE "year" = 2020
GROUP BY a."name");

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT a.name singer, c2.title collection FROM artist a
JOIN artalbid a2 ON a.id  = a2.artistid
JOIN album a3 ON a2.albumid = a3.id
JOIN tracks t ON a3.id = t.album
JOIN colltracksid c ON t.id = c.trackid
JOIN collection c2 ON c.collid = c2.id
WHERE a."name"  = 'second singer'
GROUP BY a."name", c2.title  ;
