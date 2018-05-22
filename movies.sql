DROP DATABASE IF EXISTS moviesDB;
CREATE database moviesDB;

USE moviesDB;

CREATE TABLE movie_metadata2 (
 color VARCHAR(100) NULL,
 director_name VARCHAR(100),
 num_critic_for_reviews INT NULL,
 duration INT NULL,
 director_facebook_likes INT NULL,
 actor_3_facebook_likes INT NULL,
 actor_2_name VARCHAR(100),
 actor_1_facebook_likes INT NULL,
 gross INT NULL,
 genres VARCHAR(100),
 actor_1_name VARCHAR(100),
 movie_title VARCHAR(100),
 num_voted_users INT NULL,
 cast_total_facebook_likes INT NULL,
 actor_3_name VARCHAR(100),
 facenumber_in_poster INT NULL,
 plot_keywords VARCHAR(100),
 movie_imdb_link VARCHAR(150),
 num_user_for_reviews INT NULL,
 languagemovie_metadata VARCHAR(100),
 country VARCHAR (50),
 content_rating INT NULL,
 budget INT NULL,
 title_year INT NULL,
 actor_2_facebook_likes INT NULL,
 imdb_score INT NULL,
 aspect_ratio INT NULL,
 movie_facebook_likes INT NULL,
 PRIMARY KEY (position)
   
);


SELECT * 
FROM movie_metadata
WHERE duration > 120 AND duration < 180
AND genres LIKE '%adventure%'
AND plot_keywords LIKE '%alien%'
;


-- -----------------------------------------------
SET @duration1 = 120;
SET @duration2 = 180;
SET @genres = 'adventure';
SET @plotkw = 'alien';

SET @genres = CONCAT('%', @genres, '%');
SET @plotkw = CONCAT('%', @plotkw, '%');

SELECT * 
FROM movie_metadata
WHERE duration > @duration1 AND duration < @duration2
AND genres LIKE @genres
AND plot_keywords LIKE @plotkw
;

-- ----------------------------------

SELECT sp_split(genres, '|', NULL)
FROM movie_metadata;


CALL sp_split('Action|Adventure|Sci-Fi', '|', NULL)
