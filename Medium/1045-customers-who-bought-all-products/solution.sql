with temp as(select customer_id, count(distinct product_key) as ct
from customer
group by customer_id
having ct=(select count(product_key) from product))
select customer_id from temp
order by customer_id;