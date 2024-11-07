{{ config(materialized='table') }}

with source_data as (
    select *
    from {{ ref('stage_tf_state_table') }}
    where current_flag = 'Y'
)

, zip_ as (
    select * 
    from {{ ref('stage_tf_zip_county') }}

)


select      s.STATE_CODE AS ZIP_CODE
            ,z.CITY_NAME    AS CITY_NAME
            ,z.STATE_CODE   AS STATE_CODE
            ,s.POP_AMT      AS POP_AMOUNT
from source_data        s
left outer join zip_    z
    on  z.ZIP_CODE = s.STATE_CODE
