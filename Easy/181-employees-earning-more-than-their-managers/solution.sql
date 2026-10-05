with temp as (select e.name as emp_name, 
        e.salary as emp_salary,
        m.salary as manager_salary from employee as e
left join employee as m
    on e.managerid=m.id)
select emp_name as Employee
from temp
where emp_salary>manager_salary
order by emp_name;