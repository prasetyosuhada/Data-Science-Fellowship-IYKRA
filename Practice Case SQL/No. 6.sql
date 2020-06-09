select f.title,count(distinct (i.inventory_id))  as jumlah,i.store_id from store s
join
inventory i on  s.store_id = i.store_id
join
film f on f.film_id = i.film_id
group by i.store_id ,f.title order by store_id;