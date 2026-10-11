select u.name, sum(t.amount) as balance from users u
inner join transactions t
    on u.account=t.account
group by 1
having balance>10000;