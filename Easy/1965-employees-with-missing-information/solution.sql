with t1 as (select e.employee_id, e.name, s.salary from employees e
left join salaries s
    on e.employee_id=s.employee_id
union
select s.employee_id, e.name, s.salary from employees e
right join salaries s
    on e.employee_id=s.employee_id)
select employee_id from t1
where name is null or salary is null
order by employee_id;