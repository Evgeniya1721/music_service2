-- 1.название и год выхода альбомов, вышедших в 2018 году
SELECT name_album, year_album
  FROM albums
 WHERE year_album = '2018-03-11';
 
-- 2.название и продолжительность самого длительного трека
SELECT name_track, duration
  FROM tracks 
 ORDER BY duration DESC
   LIMIT 1;
   
-- 3.название треков, продолжительность которых не менее 3,5 минуты
SELECT name_track
  FROM tracks 
 WHERE duration >= 210;
 
-- 4.названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name_collection 
  FROM collections 
 WHERE year_collection BETWEEN '2018-03-11' AND '2020-01-01';
 
-- 5.исполнители, чье имя состоит из 1 слова
SELECT alias 
  FROM artists 
 WHERE alias 
   NOT LIKE '% %';
   
--6.название треков, которые содержат слово "мой"/"my"
SELECT name_track 
  FROM tracks 
 WHERE LOWER(name_track) LIKE ('%мой%')
    OR LOWER(name_track) LIKE ('%my%');