select person_name from queue
where turn=(select max(turn) from (with t1 as (select *, sum(weight) over (order by turn) as weightfill from queue)
select * from t1 where weightfill<=1000) t2);