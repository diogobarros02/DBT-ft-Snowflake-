select 
 sum(case when id is null then 1 else 0 end) * 100.0 / count(*) as percent_nulls
from {{ ref('my_first_dbt_model') }}
having percent_nulls > 40

