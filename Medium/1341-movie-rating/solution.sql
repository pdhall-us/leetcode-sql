with t1 as (select u.name, count(u.user_id) as ct from users u
inner join movierating m
    on u.user_id=m.user_id
group by u.user_id
order by ct desc, name
limit 1),
t2 as (select mv.title, avg(mr.rating) as avgrating from movies mv
inner join movierating mr
    on mv.movie_id=mr.movie_id
where date_format(created_at, '%Y-%m')='2020-02'
group by mv.title
order by avgrating desc, mv.title
limit 1)
select name as results from t1
union all
select title as results from t2;