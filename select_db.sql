/*название и год выхода альбомов, вышедших в 2018 году;*/
SELECT name, year_of  FROM album
where year_of = 2018;

/*название и продолжительность самого длительного трека;*/
SELECT name, duration FROM songs
order by duration desc 
limit 1;

/*название треков, продолжительность которых не менее 3,5 минуты;*/
SELECT name  FROM songs
where duration >= 3.5*60;

/*названия сборников, вышедших в период с 2018 по 2020 год включительно;*/
SELECT name, year_of  FROM collection
where year_of BETWEEN 2018 and 2021;

/*исполнители, чье имя состоит из 1 слова;*/
SELECT name  FROM bands
where name not like '% %';

/*название треков, которые содержат слово "мой"/"my".*/
SELECT name FROM songs
WHERE LOWER(name) like '%my%' or LOWER(name) like '%мой%';
