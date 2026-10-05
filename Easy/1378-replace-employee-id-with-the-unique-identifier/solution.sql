select ei.unique_id, e.name from employees e
left join employeeuni ei
    on e.id=ei.id;