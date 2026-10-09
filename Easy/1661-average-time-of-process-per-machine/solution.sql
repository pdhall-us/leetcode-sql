with ps as (with start as (select * from activity where activity_type='start'),
end as (select * from activity where activity_type='end')
select s.machine_id, s.process_id,
        e.timestamp-s.timestamp as total_time
from start s
inner join end as e
    on s.machine_id=e.machine_id
    and s.process_id=e.process_id)
select machine_id, round(avg(total_time),3) as processing_time from ps
group by machine_id
order by machine_id;