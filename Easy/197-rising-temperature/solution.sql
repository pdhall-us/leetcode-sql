with t2 as (with t1 as (select id, recorddate, temperature,
    date_add(recorddate, interval -1 day) as prevday from weather)
select t.id, t.recorddate, t.temperature, t.prevday, w.temperature as prevdaytemp
from t1 t
left join weather w 
    on t.prevday=w.recorddate)
select id from t2
where prevdaytemp is not null and temperature>prevdaytemp
order by recorddate;