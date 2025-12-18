with sample_customer as (
    select * from {{source('sample', 'customer')}}
),
sample_orders as (
    select * from {{source('sample', 'orders')}}
)

select 
c.c_custkey,
c.c_name,
c.c_nationkey as nation,
sum(o.o_totalprice) as total_order_price
from sample_customer as c
left join sample_orders as o on c.c_custkey= o.o_custkey
{{group_by(3)}}