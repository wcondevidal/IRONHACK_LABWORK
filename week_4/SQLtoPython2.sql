SELECT rental_id, film_id, name, rental_duration, rating, country
FROM
(select inventory_id, film_id, name, rental_duration, rating
from film 
    join inventory using (film_id)
    join film_category using (film_id)
    join category using (category_id) 
) Q1
JOIN 
(select rental_id, country, inventory_id 
	from rental 
		join customer using (customer_id)
		join address using (address_id)
		join city using (city_id)
		join country using (country_id)
) Q2
using (inventory_id)
order by rental_id 
