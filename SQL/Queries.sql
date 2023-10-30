-- 1 Muestra las peliculas que sean PG-13
SELECT * FROM film WHERE rating = 'PG-13';
-- 2 Muestra las peliculas que tengan Trailers como special features
SELECT * FROM film WHERE special_features LIKE '%Trailers%';
-- 3 Muestra el primer y el segundo nombre de los actures de la tabla actors en orden alfabetico
SELECT first_name, last_name FROM actor ORDER BY last_name, first_name;
-- 4 Muestra las peliculas que hay en cada categoria de old films
SELECT category.name, COUNT(*) FROM old_films
JOIN category ON old_films.category_id = category.category_id
GROUP BY category.name;
-- 5 Muestra los usuarios que vivan en en estado de Luisiana y tienen un codigo postal mayor a 20000
SELECT * FROM customer WHERE state = 'LA' AND postal_code > '20000';
-- 6 Muestra las películas que tengan un valor de reemplazo entre 10 y 20
SELECT * FROM film WHERE replacement_cost BETWEEN 10 AND 20;
-- 7 Muestra las películas que tienen una duracion de 90 minutos o mas y que tengan rating PG
SELECT * FROM film WHERE length >= 90 AND rating = 'PG';
-- 8 Numero total de peliculas alquiladas por cada cliente
SELECT id, first_name, last_name, (SELECT COUNT(*) FROM videoclub.rental WHERE customer_id = c.id) AS rental_count
FROM videoclub.customer c;
-- 9 Muestra las películas antiguas por título en orden ascendente:
SELECT * FROM old_films ORDER BY title ASC;
-- 10 Muestra los alquileres que ocurrieron en una fecha específica:
SELECT * FROM rental WHERE rental_date = '2005-05-25 01:17:24';
-- 11 Muestra los alquileres realizados por un miembro del personal ordenados por el ID de cliente en orden ascendente:
SELECT * FROM rental WHERE staff_id = 2 ORDER BY customer_id ASC;
-- 12 Muestra la duración promedio de todas las películas.
SELECT AVG(length) AS duracion_promedio
FROM film;
