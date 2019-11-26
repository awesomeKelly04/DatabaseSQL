#CLASSWORK
#Write a query in SQL to find the name and year of the movies.
select mov_title as Name, mov_year as Year
from movie;

#Write a query in SQL to find the year when the movie American Beauty released.
select mov_year as Year_Released
from movie
where mov_title = "American Beauty";

#For the movie Suicide Squad
select mov_year as Year_Released
from movie
where mov_title = "Suicide Squad";

#Write a query in SQL to find the movie which was released in the year 1999
select mov_title as Movie_Name
from movie
where mov_year = 1999;

#Write a query in SQL to find the movie which was released in the year 1999
select mov_title as Movie_Name
from movie
where mov_year = 2016;

#Write a query in SQL to find the movies which was released before 1998
select mov_title as Movie_Name
from movie
where mov_year < 1998;

#Write a query in SQL to find the movies which was released before 2015
select mov_title as Movie_Name
from movie
where mov_year < 2015;

#Write a query in SQL to return the name of all reviewers and name of movies 
#together in a single list
select R.rev_name as Reviewer_Name, M.mov_title as Movie_Name
from movie as M, reviewer as R, rating
where rating.rev_id = R.rev_id and rating.mov_id = M.mov_id
order by R.rev_name asc, M.mov_title asc;

#Write a query in SQL to find the name of all reviewers who have rated 7 
#or more stars to their rating
select R.rev_name as Reviewer_Name
from reviewer as R, rating
where rating.rev_id = R.rev_id and rating.num_o_ratings >= 7
order by R.rev_name asc;

#Write a query in SQL to find the titles of all movies that have no ratings.
select M.mov_title as Movie_Name
from movie as M, rating
where rating.mov_id = M.mov_id and rating.num_o_ratings = 0
order by M.mov_title asc;

#Write a query in SQL to find the name of all reviewers who have rated their ratings 
#with a NULL  value
select R.rev_name as Reviewer_Name
from reviewer as R, rating
where rating.rev_id = R.rev_id and rating.num_o_ratings = null
order by R.rev_name asc;

#Write a query in SQL to find the name of movie and director (first and last names) 
#who directed a movie that casted a role for 'Eyes Wide Shut'.
select M.mov_title as Movie_Name, concat(RTRIM(D.dir_fname),' ',RTRIM(D.dir_lname)) as Director_Name
from movie M join movie_direction MD
on M.mov_id = MD.mov_id
	join director D
    on MD.dir_id = D.dir_id
where M.mov_title = "Eyes Wide Shut"
order by Movie_Name asc;

#Write a query in SQL to find the name of movie and director (first and last names) 
#who directed a movie that casted a role for 'Suicide Squad'.
select M.mov_title as Movie_Name,  concat(RTRIM(D.dir_fname),' ',RTRIM(D.dir_lname))  as Director_Name
from movie M join movie_direction MD
on M.mov_id = MD.mov_id
	join director D
    on MD.dir_id = D.dir_id		
where M.mov_title = "Suicide Squad"
order by Movie_Name asc;

#Write a query in SQL to find the name of movie and director (first and last names) 
#who directed a movie that casted a role 'Harley Quinn'.
select M.mov_title as Movie_Name, concat(RTRIM(D.dir_fname),' ',RTRIM(D.dir_lname)) as Director_Name
from movie M join movie_direction MD
on M.mov_id = MD.mov_id
	join director D
    on MD.dir_id = D.dir_id
		join movie_cast MC
        on M.mov_id = MC.mov_id
where MC.mov_role = "Harley Quinn"
order by Movie_Name asc;


