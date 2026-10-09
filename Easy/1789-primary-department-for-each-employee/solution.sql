select employee_id, department_id from
(select employee_id, department_id, count(department_id) as ct from employee
group by 1
having ct=1) as temp
union
select employee_id, department_id from employee where primary_flag='y';