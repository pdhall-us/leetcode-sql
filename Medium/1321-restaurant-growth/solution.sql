with t2 as (with t1 as (select visited_on, sum(amount) as amount from customer
group by visited_on)
select visited_on, sum(amount) over (order by visited_on rows between 6 preceding and current row) as amount,
avg(amount) over (order by visited_on rows between 6 preceding and current row) as average_amount,
row_number() over (order by visited_on) as rn
from t1)
select visited_on, round(amount,2) as amount, round(average_amount,2) as average_amount from t2
where rn>6;