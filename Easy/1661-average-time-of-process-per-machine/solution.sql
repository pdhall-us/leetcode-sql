-- Solution 1 using two separate cte's
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

-- Solution 2 using self join
select s.machine_id, round(avg((e.timestamp-s.timestamp)),3) as processing_time
from activity s
inner join activity e
    on s.machine_id=e.machine_id
    and s.process_id=e.process_id
where s.activity_type='start' and e.activity_type='end'
group by machine_id
order by machine_id;