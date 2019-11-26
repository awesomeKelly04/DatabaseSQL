CREATE TABLE actor (
	act_id			Integer		NOT NULL AUTO_INCREMENT,
	act_fname 		Char(20) 	NOT NULL,
	act_lname  		Char(20)  	NOT NULL,
	act_gender		Char(1)		NULL,
	CONSTRAINT 		actor_PK 	PRIMARY KEY (act_id)
);

CREATE TABLE movie (
	mov_id			Integer		NOT NULL AUTO_INCREMENT,
	mov_title 		Char(50) 	NOT NULL,
	mov_year  		integer  	NOT NULL,
	mov_time		Integer		NOT NULL,
    mov_lang 		Char(50) 	NOT NULL,
    mov_dt_rel 		date 		NULL,
    mov_rel_country	Char(5) 	NULL,
	CONSTRAINT 		movie_PK 	PRIMARY KEY (mov_id)
);

CREATE TABLE director (
	dir_id			Integer		NOT NULL AUTO_INCREMENT,
	dir_fname 		Char(20) 	NOT NULL,
	dir_lname  		Char(20)  	NOT NULL,	
	CONSTRAINT 		director_PK 	PRIMARY KEY (dir_id)
);

CREATE TABLE reviewer (
	rev_id			Integer			NOT NULL AUTO_INCREMENT,
	rev_name 		Char(30) 		NOT NULL,
	CONSTRAINT 		reviewer_PK 	PRIMARY KEY (rev_id)
);

CREATE TABLE genres (
	gen_id			Integer			NOT NULL AUTO_INCREMENT,
	gen_title 		Char(20) 		NOT NULL,
	CONSTRAINT 		genres_PK 	PRIMARY KEY (gen_id)
);

CREATE TABLE movie_cast (
	act_id			Integer		NOT NULL,
	mov_id 			Integer		NOT NULL,
	mov_role  		Char(30)  	NOT NULL,
    PRIMARY KEY (`act_id`, `mov_id`),
	foreign key(act_id) references actor(act_id),
	foreign key(mov_id) references movie(mov_id)
);

CREATE TABLE movie_direction (
	dir_id			Integer		NOT NULL,
	mov_id 			Integer		NOT NULL,
    PRIMARY KEY (`mov_id`, `dir_id`),
    foreign key(mov_id) references movie(mov_id),
    foreign key(dir_id) references director(dir_id)
);

CREATE TABLE rating (
	rev_id			Integer		NOT NULL,
	mov_id			Integer		NOT NULL,
	rev_stars 		Integer		NOT NULL,
    num_o_ratings 	Integer		NULL,
    PRIMARY KEY (`mov_id`, `rev_id`),
    foreign key(mov_id) references movie(mov_id),
    foreign key(rev_id) references reviewer(rev_id)
);

CREATE TABLE movie_genres (
	mov_id			Integer		NOT NULL,
	gen_id 			Integer		NOT NULL,
    PRIMARY KEY (`gen_id`, `mov_id`),
    foreign key(mov_id) references movie(mov_id),
    foreign key(gen_id) references genres(gen_id)
);


