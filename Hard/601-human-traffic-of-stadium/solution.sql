with t3 as (select *, id-rn as diff from
(select *, row_number() over () as rn from
(select * from stadium where people>=100) as t1) as t2)
select id, visit_date, people from t3
where diff in (select distinct diff from t3 group by diff having count(diff)>=3)
order by visit_date;