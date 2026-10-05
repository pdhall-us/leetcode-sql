with temp as (select d.name as Department,
        e.name as Employee,
        e.salary as Salary,
        dense_rank() over (partition by d.name order by e.salary desc) as rk
from employee e
inner join department d
on e.departmentid=d.id)
select Department, Employee, Salary
from temp
where rk<=3;