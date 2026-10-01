with sales1 as (select *, first_value(year) over (partition by product_id order by year) as first_year
from sales)
select product_id, first_year, quantity, price
from sales1
where year=first_year;