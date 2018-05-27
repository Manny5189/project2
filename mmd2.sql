DROP TABLE IF EXISTS movie_metadata2;
CREATE TABLE movie_metadata2 (
 MMID INT AUTO_INCREMENT,
 color VARCHAR(100) NULL,
 director_name VARCHAR(100),
 num_critic_for_reviews INT ,
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
 language VARCHAR(100),
 country VARCHAR (50),
 content_rating VARCHAR(10),
 budget INT NULL,
 title_year INT NULL,
 actor_2_facebook_likes INT NULL,
 imdb_score INT NULL,
 aspect_ratio INT NULL,
 movie_facebook_likes INT NULL,
 PRIMARY KEY (MMID)
   
);


TRUNCATE TABLE movie_metadata2;

INSERT INTO movie_metadata2
(
color
,director_name
,num_critic_for_reviews
,duration
,director_facebook_likes
,actor_3_facebook_likes
,actor_2_name
,actor_1_facebook_likes
,gross
,genres
,actor_1_name
,movie_title
,num_voted_users
,cast_total_facebook_likes
,actor_3_name
,facenumber_in_poster
,plot_keywords
,movie_imdb_link
,num_user_for_reviews
,language
,country
,content_rating
,budget
,title_year
,actor_2_facebook_likes
,imdb_score
,aspect_ratio
,movie_facebook_likes
)
select 
color
,director_name
,CASE num_critic_for_reviews WHEN '' THEN NULL END
,CASE duration WHEN '' THEN NULL END
,CASE director_facebook_likes  WHEN '' THEN NULL END
,CASE actor_3_facebook_likes WHEN '' THEN NULL END
,CASE actor_2_name WHEN '' THEN NULL END
,CASE actor_1_facebook_likes WHEN '' THEN NULL END
,CASE gross WHEN '' THEN NULL END
,CASE genres WHEN '' THEN NULL END
,CASE actor_1_name WHEN '' THEN NULL END
,CASE movie_title WHEN '' THEN NULL END
,CASE num_voted_users WHEN '' THEN NULL END
,CASE cast_total_facebook_likes WHEN '' THEN NULL END
,CASE actor_3_name WHEN '' THEN NULL END
,CASE facenumber_in_poster WHEN '' THEN NULL END
,CASE plot_keywords WHEN '' THEN NULL END
,CASE movie_imdb_link WHEN '' THEN NULL END
,CASE num_user_for_reviews WHEN '' THEN NULL END
,CASE language WHEN '' THEN NULL END
,CASE country WHEN '' THEN NULL END
,CASE content_rating WHEN '' THEN NULL END
,CASE budget WHEN '' THEN NULL END
,CASE title_year WHEN '' THEN NULL END
,CASE actor_2_facebook_likes WHEN '' THEN NULL END
,CASE imdb_score WHEN '' THEN NULL END
,CASE aspect_ratio WHEN '' THEN NULL END
,CASE movie_facebook_likes WHEN '' THEN NULL END
from movie_metadata;

select * from movie_metadata;

ALTER TABLE movie_metadata2
add mmid int AUTO_INCREMENT;

ALTER TABLE movie_metadata2 MODIFY mmid INT AUTO_INCREMENT;

DROP TABLE movie_metadata2;
CREATE TABLE movie_metadata2
select * from movie_metadata;

Error Code: 1075. Incorrect table definition; there can be only one auto column and it must be defined as a key


select *
from information_schema.columns
where table_schema = 'moviesdb'
and table_name = 'movie_metadata'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'movie_metadata'
 --   AND COLUMN_NAME = 'my_column'
    AND DATA_TYPE = 'int'
    AND COLUMN_DEFAULT IS NULL
    AND IS_NULLABLE = 'NO'
    AND EXTRA like '%auto_increment%'




-- -----------------------------------------------
select * from movie_metadata;