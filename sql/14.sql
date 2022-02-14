/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT film.title FROM film JOIN(
SELECT film_category.film_id, category_id, category.name
	FROM film_category JOIN category USING (category_id))AS t USING (film_id)WHERE t.name = 'Family';
