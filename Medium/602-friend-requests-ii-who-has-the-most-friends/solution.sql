with t3 as (with temp2 as (with temp as (select requester_id as id from requestaccepted
union all
select accepter_id as id from requestaccepted)
select id, count(id) as num from temp
group by id)
select id, num, dense_rank() over (order by num desc) as rk from temp2)
select id, num from t3
where rk=1;