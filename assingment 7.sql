CREATE DATABASE db_movies

USE db_movies

CREATE TABLE tbl_movies(
	movie_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	movieName VARCHAR (50) NOT NULL
)


CREATE TABLE tbl_actors (
	actor_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	actorName VARCHAR (50) NOT NULL,
	movie_id INT CONSTRAINT fk_movie_id FOREIGN KEY REFERENCES tbl_movies(movie_id)
)

CREATE TABLE tbl_directors(
	director_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	directorName VARCHAR (50) NOT NULL,
	movie_id INT CONSTRAINT fk_movie_id2 FOREIGN KEY REFERENCES tbl_movies(movie_id)
)

INSERT INTO tbl_movies(movieName)
	VALUES 
	('transformers'),
	('the shinny'),
	('Interstellar')
;

INSERT INTO tbl_actors (actorName,movie_id)
	VALUES
	('childddd', 1),
	('jack nicleson', 2),
	('Matthew', 3)
;

INSERT INTO tbl_directors (directorName, movie_id)
	VALUES
	('micheal bay', 1),
	('stanley kubrick', 2),
	('Christopher Nolan', 3)
;
/* */
SELECT directorName, actorName, movieName FROM tbl_directors 
INNER JOIN tbl_actors ON tbl_directors.movie_id = tbl_actors.movie_id
INNER JOIN tbl_movies ON tbl_actors.movie_id = tbl_movies.movie_id
