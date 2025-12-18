with order_sale as (
    select * from {{source('sample', 'orders')}}
)


select 
o_orderdate,
sum(o_totalprice) as cumulative_sales
from order_sale

{% if target.name == 'dev' %}
where year(o_orderdate) = '1996'
{% endif %}
group by o_orderdate