{{ config(materialized='table') }}

with source_data as (
    select *
    from {{ ref('int_tf_zip_pop') }}
)


select      s.CITY_NAME    AS CITY_NAME
            ,s.STATE_CODE   AS STATE_CODE
            ,sum(s.POP_AMOUNT)      AS POP_AMOUNT
from source_data        s
group by all 
