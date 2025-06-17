-- Active: 1750128805513@@127.0.0.1@5432@postgres
-- 4. melakukan join director, genre ke table movies dapatkan, limit 50 

SELECT m.name, d.first_name, d.last_name, mg.genre FROM movies m
JOIN movies_directors md ON md.movie_id = m.id
JOIN movies_genres mg ON mg.movie_id = m.id
JOIN directors d ON d.id = md.director_id
LIMIT 50;

-- 5. Melakukan Join movie dan roles berdasarkan tabel actors

select a.first_name, a.last_name, r.role, m.name as title from actors a
join roles r on r.actor_id = a.id
join movies m on m.id = r.movie_id
limit 50;