select e.name from employee e
inner join
(select managerid, count(managerid) as ct
from employee
group by managerid
having ct>=5) as m
on m.managerid=e.id
order by m.managerid;