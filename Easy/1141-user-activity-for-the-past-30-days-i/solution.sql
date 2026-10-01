select activity_date as day, count(distinct user_id) as active_users
from activity
where activity_date between date_add('2019-07-28', interval -30 day) and '2019-07-27'
group by activity_date
order by activity_date;