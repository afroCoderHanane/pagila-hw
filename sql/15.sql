/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT t2.name,COUNT(t2.name) AS "sum" FROM language JOIN  (
	SELECT film.language_id, t1.name FROM film join (
		SELECT film_category.film_id, category_id, category.name
        		FROM film_category
			 JOIN category USING (category_id)
		)AS t1 USING (film_id)
) AS t2 USING (language_id)
GROUP BY t2.name 
ORDER BY t2.name;
