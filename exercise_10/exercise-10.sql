-- find the category name of all inventory items that have never been rented
select category.name 
from category
-- Similar to exercise 9 with an additonal join
inner join film_category on film_category.category_id = category.category_id
inner join film on film.film_id = film_category.film_id
inner join inventory on inventory.film_id = film.film_id
left join rental on rental.inventory_id = inventory.inventory_id

where rental.rental_date is null
