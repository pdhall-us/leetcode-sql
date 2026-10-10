with t1 as (select s.name as salesman, c.name as company from salesperson s
left join orders o
    on s.sales_id=o.sales_id
left join company c
    on c.com_id=o.com_id)
select distinct salesman as name from t1
where salesman not in (select distinct salesman from t1 where company='red');