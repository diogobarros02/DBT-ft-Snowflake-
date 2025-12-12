
select 
o_orderdate,
sum(o_totalprice) as cumulative_sales
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS
group by o_orderdate