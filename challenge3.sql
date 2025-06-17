-- Active: 1750128805513@@127.0.0.1@5432@postgres
-- 6. mendapatkan data director, berapa genre yg dia direct

select count(*) total_genres, d.first_name, d.last_name from movies m
join directors d on d.id = m.id
join directors_genres dg on dg.director_id = m.id
join movies_genres mg on mg.movie_id = d.id
group by d.id;

-- 7. mendapatkan data actor yg memiliki roles lebih dari lima

-- cara subquery
-- select * from (select count(*) as total_roles, a.first_name, a.last_name from movies m
-- join actors a on a.id = m.id
-- join roles r on r.actor_id = a.id
-- group by a.id) WHERE total_roles > 5;

-- cara tanpa sub query
select count(r.role) , a.first_name, a.last_name from movies m
join actors a on a.id = m.id
join roles r on r.actor_id = a.id
group by a.id 
HAVING count(r.role) > 5;

-- 8. mendapatkan most directors paling produktif sepanjang masa (paling banyak movie nya)
select d.first_name, d.last_name, count(md.movie_id) as total_movies from directors d
join movies_directors md ON md.director_id = d.id
group by d.id, d.first_name, d.last_name
order by total_movies desc
limit 1;

-- 9. mendapatkan tahun tersibuk sepanjang masa

select year, count(*) as movie_count from movies
group by year order by movie_count desc
limit 1;

-- 10. mendapatkan movies dengan genres yang dibuatkan menjadi 1 column (value dipisahkan dengan comma) dengan menggunakkan string_agg

select m.name, string_agg(mg.genre, ', ') as genres from movies m
join movies_genres mg on mg.movie_id = m.id
group by m.id;
