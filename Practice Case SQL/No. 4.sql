 select rating, round(avg(replacement_cost),2) as Average_RC from film
 group by rating