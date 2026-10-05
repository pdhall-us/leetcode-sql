select Email from
(select email, count(id) as ct from person group by email) as temp
where ct>1;