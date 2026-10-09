with st as (select s.student_id, s.student_name, sb.subject_name
from students s
cross join subjects sb)
select st.student_id, st.student_name, st.subject_name,
        count(e.student_id) as attended_exams
from st st
left join examinations e
    on st.student_id=e.student_id
    and st.subject_name=e.subject_name
group by 1,2,3
order by st.student_id, st.subject_name;