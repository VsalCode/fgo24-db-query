-- Active: 1750128805513@@127.0.0.1@5432@postgres
SELECT * FROM movies;

-- yg terduplikasi akan dihilangkan
SELECT DISTINCT name FROM movies;
SELECT DISTINCT name, year FROM movies;

-- mencari data yg spesifik
SELECT * FROM movies WHERE year = 2001;
SELECT * FROM movies WHERE year > 2001;
SELECT * FROM movies WHERE year BETWEEN 2001 AND 2003;
SELECT * FROM movies WHERE year = 2001 AND rankscore > 5;
SELECT * FROM movies WHERE year = 2001 AND rankscore IS NULL;
SELECT * FROM movies WHERE year = 2001 AND rankscore IS NOT NULL;

-- mencari data dengan awalan like '' / case sensitive (hruf kecil/besar) tp dihilangkan menambahkan i di like
select * from movies where name ilike 'Batman%';

-- mencari data dengan akhiran '' / persen diawal
select * from movies where name ilike '%Batman';

-- mencari data dengan diantara kata '' 
select * from movies where name ilike '%poo%';

-- ORDER BY (dituliskan setelah where) - mengurutkan ascending otomatis
select * from movies where 
(name ilike '%poo%') and (rankscore > 5) 
and (year between 1990 and 2005) order by year;

-- mengubah jadi descending
select * from movies where 
(name ilike '%poo%') and (rankscore > 5) 
and (year between 1990 and 2005) order by year desc;

-- mencari rating tertinggi
select * from movies where 
(name ilike '%poo%') and (rankscore > 5) 
and (year between 1990 and 2005) order by rankscore desc;

-- limit
select * from movies where 
(name ilike '%poo%') and (rankscore > 5) 
and (year between 1990 and 2005) order by rankscore desc
limit 5 --mengambil 5 rankscore tertinggi saja
offset 1; --mulai ngambilnya dari index ke satu


