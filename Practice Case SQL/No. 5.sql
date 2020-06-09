select concat(c.first_name, ' ', c.last_name) "Full Name", c.email , sum(p.amount) as "Sum Amount" 
from customer c inner join payment p 
on c.customer_id = p.customer_id 
group by c.customer_id 
order by sum(p.amount) desc
limit 5