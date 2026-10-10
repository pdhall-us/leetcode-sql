-- Solution 1 using window function
with temp as (select *, lag(num) over (order by id) as prev,
        lead(num) over (order by id) as next
from logs)
select distinct num as consecutivenums
from temp
where num=prev and num=next;

-- Solution 2
with temp as (select l1.num, l2.num as next, l3.num as 2ndnext from logs l1
left join logs l2
    on l1.id=l2.id-1
left join logs l3
    on l1.id=l3.id-2)
select distinct num as consecutivenums from temp
where num=next and num=2ndnext;