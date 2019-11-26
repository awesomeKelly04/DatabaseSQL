insert into actor values (1, "Chris",  "Pratt", "M"),
(2, "Vin",  "Diesel", "M"), (3, "Bradley",  "Cooper", "M"),
(4, "Zoe",  "Saldana", "M"), (5, "Noomi",  "Rapace", "F"),
(6, "Logan",  "Marshall-Green", "M"), (7, "Michael",  "Fassbender", "M"),
(8, "Charlize",  "Theron", "M"), (9, "James",  "McAvoy", "M"),
(10, "Anya",  "Taylor-Joy", "F"), (11, "Haley",  "Lu Richardson", "F"),
(12, "Jessica",  "Sula", "F"), (13, "Matthew",  "McConaughey", "M"),
(14, "Reese",  "Witherspoon", "M"), (15, "Seth",  "MacFarlane", "M"), 
(16, "Scarlett",  "Johansson", "M"), (17, "Will",  "Smith", "M"), 
(18, "Jared",  "Leto", "M"), (19, "Margot",  "Robbie", "M"), 
(20, "Viola",  "Davis", "F");
  
  
insert into director values (1, "James",  "Gunn"),
(2, "Ridley",  "Scott"), (3, "M. Night",  "Shyamalan"),
(4, "Christophe",  "Lourdelet"), (5, "David",  "Ayer"),
(6, "Yimou",  "Zhang"), (7, "Damien",  "Chazelle"),
(8, "Sean",  "Foley"), (9, "James",  "Gray"),
(10, "Morten",  "Tyldum"); 
  
insert into genres values (1, "Action"),
(2, "Adventure"), (3, "Sci-Fi"), (4, "Mystery"),
(5, "Horror"), (6, "Thriller"), (7, "Animation"),
(8, "Comedy"), (9, "Family"), (10, "Fantasy"),
(11, "Drama"), (12, "Music"), (13, "Biography"),
(14, "Romance"); 

insert into movie values (1, "Guardians of the Galaxy", 2014, 121, "English", '2014-12-24', "US"),
(2, "Prometheus", 2012, 124, "English", '2012-02-25', "US"),
(3, "Split", 2016, 117, "English", '2016-11-02', "US"),
(4, "Sing", 2016, 108, "English", '2016-09-23', "US"),
(5, "Suicide Squad", 2016, 123, "English", '2016-10-12', "US");

insert into reviewer values (1, "Morten Tyldum"),
(2, "David Yates"), (3, "Theodore Melfi"), (4, "Gareth Edwards"),
(5, "Ron Clements"), (6, "Nacho Vigalondo"), (7, "Chris Renaud"),
(8, "Mel Gibson"), (9, "Paul Greengrass"), (10, "Garth Davis");  


insert into movie_cast values (1, 1,  "Star-Lord"),
(2, 1,  "Groot"), (3, 1,  "Rocket Raccoon"),
(4, 1,  "Gamora"), (5, 2,  "Elizabeth Shaw"),
(6, 2,  "Charlie Holloway"), (7, 2,  "Walter, David"),
(8, 2,  "Meredith Vickers"), (9, 3,  "Kevin Wendell"),
(10, 3,  "Casey Cooke"), (11, 3,  "Claire Benoit"),
(12, 3,  "Marcia"), (13, 4,  "Buster Moon"),
(14, 4,  "Rosita"), (15, 4,  "Mike"), 
(16, 4,  "Ash"), (17, 5,  "Deadshot"), 
(18, 5,  "Joker"), (19, 5,  "Harley Quinn"), 
(20, 5,  "Amanda Wal…");
	
insert into movie_genres values (1, 1),
(1, 2), (1, 3), (2, 2), (2, 4), (2, 3),
(3, 5), (3, 6), (4, 7), (4, 8), (4, 9),
(5, 1), (5, 2), (5, 10);

insert into movie_direction values (1, 1),
(2, 2), (3, 3), (4, 4), (5, 5);

insert into rating values (1, 2, 4, 7), (1, 1, 3, 4),
(2, 1, 5, 9), (2, 5, 5, 8), (3, 3, 4, 6), (4, 2, 3, 5),
(5, 1, 3, 7), (6, 4, 4, 7), (7, 3, 5, 9),
(2, 3, 5, 9), (3, 5, 5, 8), (3, 1, 4, 6), (4, 5, 3, 5),
(5, 5, 3, 7), (6, 2, 4, 7), (7, 1, 5, 9), 
(8, 3, 5, 7), (9, 5, 4, 9), (10, 3, 3, 9), 
(8, 2, 5, 7), (9, 2, 4, 9), (10, 4, 3, 9);  