select e.reports_to as employee_id,
        m.name as name,
        count(e.employee_id) as reports_count,
        round(avg(e.age)) as average_age
from employees e
inner join employees m
    on e.reports_to=m.employee_id
group by e.reports_to
order by e.reports_to;