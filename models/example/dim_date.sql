{{ 
   config(materialized='table')
}}

with 
date_dimension as (

    {{ dbt_date.get_date_dimension('2015-01-01', '2999-12-31') }}

)
select 
to_char(date_day, 'YYYYMMDD')::int AS date_pk
,*
from date_dimension