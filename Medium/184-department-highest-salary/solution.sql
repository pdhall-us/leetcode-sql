with t1 as (select d.name as department, e.name as employee, e.salary,
        dense_rank() over (partition by d.name order by e.salary desc) as rk
from employee e
inner join department d
    on e.departmentid=d.id)
select department, employee, salary from t1
where rk=1;