-- 1. Using limit we have to declare and set the value of variable

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    declare offset_val INT;
    set offset_val=N-1;
  RETURN (
      select distinct salary from employee
      order by salary desc
      limit 1 offset offset_val
  );
END

-- 2. Using window function and Coalesce.

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      with temp as (select distinct salary, dense_rank() over (order by salary desc) as rk from employee)
      select coalesce(salary, null) from temp
      where rk=N
  );
END