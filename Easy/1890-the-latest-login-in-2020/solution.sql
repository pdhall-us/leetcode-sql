select user_id, last_stamp from
(select user_id, time_stamp as last_stamp, rank() over (partition by user_id order by time_stamp desc) as rk
from logins
where year(time_stamp)='2020') as t1
where rk=1;