INSERT INTO genres (genre_name) VALUES ('Rock'), ('Rap'), ('Metal'), ('Pop'), ('Trance'); 

INSERT INTO authors (author_name) VALUES ('Linkin Park'), ('Disturbed'), ('Limp Bizkit'),
('Eminem'), ('Metallica'), ('Five Finger Death Punch'), ('Rihanna'), ('Armin Van Buuren');

INSERT INTO genre_author (genre_id, author_id) VALUES (1, 1), (1, 2), (1, 3), (2, 4), (3, 5), 
(3, 6), (4, 7), (5, 8), (3, 2), (3, 1), (3, 3);

INSERT INTO albums (album_name, release_year) VALUES ('Hybrid Theory', 2000), ('Evolution', 2018),
('Significant Other', 1999), ('Encore', 2004), ('The Black Album', 1991), ('F8', 2020),
('Anti', 2016), ('Balance', 2019);

INSERT INTO authors_albums (author_id, album_id) VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8);

INSERT INTO traks (track_name, duration, album_id) VALUES ('With You', 203, 1), 
('In the End', 216, 1), ('Are You Ready', 261, 2), ('A Reason to Fight', 284, 2),
('Nookie', 289, 3), ('Break Stuff', 167, 3), ('My 1st Single', 303, 4), ('Mockingbird', 251, 4),
('My Friend of Misery', 408, 5), ('Enter Sandman', 330, 5), ('Inside Out', 226, 6), 
('This Is War', 192, 6), ('Higher', 120, 7), ('Wild Wild Son', 213, 8), ('Sucker for Love', 176, 8), 
('Pushing Me Away', 192, 1);

INSERT INTO collections (collection_name, release_year) VALUES ('The Best Rock Songs', 2018),
('Rock/Metall Collection', 2019), ('The Most Popular Tracks', 2020), ('Hard Ballads', 2021),
('Pop/Rap Collection', 2016), ('Top Rock Chart', 2004), ('Greatests hits', 2022), 
('My Favorite Songs', 2022);

INSERT INTO traks_collections (track_id, collection_id) VALUES (2, 1), (3, 1), (4, 1), (6, 1),
(1, 2), (5, 2), (9, 2), (11, 2), (8, 3), (12, 3), (13, 3), (3, 4), (10, 4), (7, 5), (8, 5), 
(13, 5), (1, 6), (11, 6), (14, 7), (2, 7), (15, 8), (3, 8), (5, 8), (11, 8);
