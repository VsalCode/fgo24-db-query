-- 1. melakukan join director, genre ke table movies dapatkan, limit 50 

SELECT m.name, d.first_name, d.last_name, mg.genre FROM movies m
JOIN movies_directors md ON md.movie_id = m.id
JOIN movies_genres mg ON mg.movie_id = m.id
JOIN directors d ON d.id = md.director_id
LIMIT 50;