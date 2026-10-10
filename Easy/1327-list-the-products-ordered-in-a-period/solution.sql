select p.product_name, sum(o.unit) as unit from products p
inner join orders o
    on p.product_id=o.product_id
where date_format(o.order_date, '%Y-%m')='2020-02'
group by 1
having unit>=100;