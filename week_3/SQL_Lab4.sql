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