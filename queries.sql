--1 Query all the entries in the Genre table
select * from Genre;
--2 Using the INSERT statement, add one of your favorite artists to the Artist table
insert into Artist
(ArtistId, ArtistName, YearEstablished)
values (null, 'Imagine Dragons', 2008);
--3 Using the INSERT statement, add one, or more, albums by your artist to the Album table
insert into Album
(AlbumId, Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
values(null, 'Evolve', '6/23/2017', 2347, 'Interscope', 28, 7 );
--4 Using the INSERT statement, add some songs that are on that album to the Song table.
insert into Song
(SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
values (null, 'Believer', 204, '2/1/2017', 7, 28, 23);
insert into Song
(SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
values (null, 'Thunder', 187, '4/27/2017', 7, 28, 23);
--5 Write a SELECT query that provides the song titles, album title, and artist name for all the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
SELECT song.Title, album.Title, artist.ArtistName 
FROM Song song 
LEFT JOIN Album album 
ON song.AlbumId = album.AlbumId 
LEFT JOIN Artist artist 
ON song.ArtistId = artist.ArtistId
WHERE artist.ArtistName = 'Imagine Dragons';
--6 Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT album.title, count(*)
FROM Song song
LEFT JOIN Album album
ON album.AlbumId = song.AlbumId
GROUP BY song.AlbumId;
--7 Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT artist.ArtistName, count(*)
FROM Song song
LEFT JOIN Artist artist
ON artist.ArtistId = song.ArtistId
GROUP BY song.ArtistId;
--8 Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT genre.Label, count(*)
FROM Song song
LEFT JOIN Genre genre
ON song.GenreId = genre.GenreId
GROUP BY song.GenreId
--9 Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
SELECT Album.Title, MAX(AlbumLength)
FROM Album
--10 Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
SELECT song.Title, MAX(SongLength)
FROM Song song
--11 Modify the previous query to also display the title of the album.
SELECT song.Title, album.Title, MAX(SongLength)
FROM Song song
LEFT JOIN Album album
ON song.AlbumId = album.AlbumId;




