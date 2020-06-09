select concat(c.first_name, ' ', c.last_name) "Full Name", c.email, count(p.payment_id) as "Total Payment"
from customer c inner join payment p on c.customer_id = p.customer_id 
group by c.customer_id 
having count(p.payment_id) >= 40
order by count(p.payment_id) desc