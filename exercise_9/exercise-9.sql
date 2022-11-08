-- find the film title of all inventory items that have never been rented
select film.title from inventory
-- LEFT JOIN FROM inventory to film and to rental
left join film on inventory.film_id = film.film_id
left join rental on inventory.inventory_id = rental.inventory_id
-- use WHERE IS NULL
WHERE rental_date is NULL
