select class
from (select class, count(*) as student_count
    from courses
    group by class
) as courses_1
where student_count>=5
order by class;