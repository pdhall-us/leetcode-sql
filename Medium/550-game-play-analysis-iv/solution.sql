with activity1 as (select *,
row_number() over (partition by player_id order by event_date) as rnum,
lead(event_date) over (partition by player_id order by event_date) as next_day
from activity)
select round((count(
    case when next_day = date_add(event_date, interval 1 day) then 1 end
))/count(distinct player_id),2) as fraction
from activity1
where rnum=1;