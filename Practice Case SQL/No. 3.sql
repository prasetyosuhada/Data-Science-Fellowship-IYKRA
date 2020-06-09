select c.store_id,b.staff_id,concat(b.first_name,' ',b.last_name) as nama_staff,count(a.amount) as payment_handled,sum(a.amount) as profit from payment a
join
staff b on a.staff_id =b.staff_id 
join 
store c on c.store_id =b.store_id 
group by c.store_id,b.staff_id,nama_staff order by profit desc;