DROP DATABASE IF EXISTS moviesDB;
CREATE database moviesDB;

USE moviesDB;

CREATE TABLE movieSelection (
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
 language VARCHAR(100),
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

SELECT * FROM moviesDB;
