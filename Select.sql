SELECT genre_name, COUNT(author_id) FROM genres AS g 
JOIN genre_author AS ga ON g.id = ga.genre_id 
JOIN authors AS a ON a.id = ga.author_id 
GROUP BY genre_name;

SELECT COUNT(track_name) FROM traks AS t 
JOIN albums AS a ON t.album_id = a.id 
WHERE a.release_year BETWEEN 2019 AND 2020;

SELECT album_name, ROUND(AVG(duration)) FROM traks AS t 
JOIN albums AS a ON t.album_id = a.id 
GROUP BY album_name;

SELECT author_name FROM authors AS a 
JOIN authors_albums AS aa ON a.id = aa.author_id 
JOIN albums AS al ON aa.album_id = al.id 
WHERE al.release_year != 2020;

SELECT collection_name FROM collections AS c 
JOIN traks_collections AS tc ON c.id = tc.collection_id  
JOIN traks AS t ON tc.track_id = t.id 
JOIN albums AS a ON t.album_id = a.id 
JOIN authors_albums AS aa ON a.id = aa.album_id 
JOIN authors AS a2 ON aa.author_id = a2.id 
WHERE a2.author_name LIKE 'Linkin Park';

SELECT album_name FROM albums AS a
JOIN authors_albums AS aa ON a.id = aa.album_id 
JOIN authors AS a2 ON aa.author_id = a2.id 
JOIN genre_author AS ga ON a2.id = ga.author_id 
JOIN genres AS g ON ga.genre_id = g.id  
GROUP BY a.album_name 
HAVING COUNT(a.album_name) > 1;

SELECT track_name FROM traks AS t
LEFT JOIN traks_collections AS tc ON t.id = tc.track_id
WHERE tc.track_id IS NULL;

SELECT author_name FROM authors AS a
JOIN authors_albums AS aa ON a.id = aa.author_id 
JOIN albums as a2 ON aa.album_id = a2.id 
JOIN traks AS t ON a2.id = t.album_id 
WHERE t.duration = (SELECT MIN(duration) FROM traks);

SELECT album_name, COUNT(t.id) FROM albums AS a
JOIN traks AS t ON a.id = t.album_id 
GROUP BY a.album_name 
HAVING COUNT(t.id) = (SELECT COUNT(t2.id)
FROM albums AS a2
JOIN traks AS t2 ON a2.id = t2.album_id 
GROUP BY a2.album_name 
ORDER BY COUNT(t2.id)
LIMIT 1);






