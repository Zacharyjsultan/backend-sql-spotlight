-- find all film titles with the category Action
SELECT film.title FROM film

-- use a LEFT JOIN FROM film onto film_category

LEFT JOIN film_category on film.film_id = film_category.film_id
-- use LEFT JOIN FROM film_categor onto category
LEFT JOIN category on film_category.category_id = category.category_id
-- the category is id 1 "action"
where category.name = 'Action';

