with t1 as (with temp as (select distinct product_id from products)
select t.product_id, ifnull(p.new_price,10) as price, p.change_date,
        rank() over (partition by t.product_id order by change_date desc) as rk
from temp t
left join products p
    on t.product_id=p.product_id
    and p.change_date<='2019-08-16')
select product_id, price from t1
where rk=1;