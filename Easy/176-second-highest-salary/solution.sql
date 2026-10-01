select(select distinct salary
from (select salary, dense_rank() over (order by salary desc) as sal_rank from employee) as sal
where sal_rank=2) as SecondHighestSalary;