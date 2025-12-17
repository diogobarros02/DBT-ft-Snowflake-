select 
c.c_custkey,
c.c_name,
c.c_nationkey as nation,
sum(o.o_totalprice) as total_order_price
from {{source('sample', 'customer')}} as c
left join {{source('sample', 'orders')}} as o on c.c_custkey= o.o_custkey
{{group_by(3)}}