-- find all film titles rented out by customers with the first_name Roberta
SELECT film.title
FROm film 
-- Similar to exercise 5 but with inventory, , rental,customer film
-- LEfT JOIN FROM fulm_id to inven
left JOIN inventory on film.film_id = inventory.film_id
-- LEfT JOIN FROM inventory_id to rental
left JOIN rental on rental.inventory_id = inventory.inventory_id
-- LEfT JOIN FROM  cutomer_id to customer
left JOIN customer on rental.customer_id = customer.customer_id


-- the category is"customer"
where customer.first_name = 'Roberta'
