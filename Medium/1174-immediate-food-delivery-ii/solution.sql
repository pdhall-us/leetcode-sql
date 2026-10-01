with delivery1 as (select *, row_number() over (partition by customer_id order by order_date) as rnum from delivery)
select round((count(
    case when rnum=1 and order_date=customer_pref_delivery_date then 1 end
)/count(distinct customer_id))*100,2) as immediate_percentage from delivery1;