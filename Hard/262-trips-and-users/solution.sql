select t.request_at as Day, round(count(
    case when status <> 'completed' then 1 end
)/ count(t.id),2) as `Cancellation Rate` from trips t
inner join users u1
    on t.driver_id=u1.users_id
inner join users u2
    on t.client_id=u2.users_id
where t.request_at between "2013-10-01" and "2013-10-03"
and u1.banned='no' and u2.banned='no'
group by t.request_at
having `Cancellation Rate` is not null
order by t.request_at;