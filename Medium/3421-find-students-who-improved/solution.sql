with t1 as (select distinct student_id, subject,
    first_value(score) over (partition by student_id, subject order by exam_date) as first_score,
    first_value(score) over (partition by student_id, subject order by exam_date desc) as latest_score
from scores)
select * from t1 where latest_score>first_score
and (student_id, subject) not in (select student_id, subject from  scores group by 1,2 having count(*)=1)
order by student_id, subject;