# Question 1
select title, length,
rank() over(partition by length order by title) as rnk
from film
where length is not null and title is not null;

# Question 2
select title, length, rating,
rank() over(partition by length order by rating) as rnk
from film
where length is not null and title is not null;

# Question 3
select 
	name, count(*) as number_of_films
	from film 
		join film_category using (film_id)
		join category using (category_id)
	group by name
    
# Question 4
select actor.first_name, actor.last_name, count(actor_id) as filmcount
    from film_actor join actor using (actor_id)
	group by actor_id
    limit 1;
    
# Question 5
select customer.first_name, customer.last_name, count(customer_id) as number_of_rents
	from rental join customer using (customer_id)
    group by customer_id
    limit 1;
    
