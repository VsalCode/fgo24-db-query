-- 1. mencari movie dengan tahun rilis > 2000
SELECT * FROM movies WHERE year > 2000;

-- 2. mencari actor dengan akhiran nama 's'
SELECT * FROM actors WHERE last_name ILIKE '%s';

-- 3. mencari movie dengan rating antara 5 dan 7 dan tahun rilis 2004 sampai 2006 urutkan dari yg tertinggi rating nya
SELECT * FROM movies WHERE
(rankscore BETWEEN 5 AND 7) AND (year BETWEEN 2004 AND 2006) ORDER BY rankscore DESC;