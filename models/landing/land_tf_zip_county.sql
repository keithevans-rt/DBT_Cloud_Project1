{{ config(materialized='view') }}

with source_data as (
    select *
    from {{ source('ZIP_TOWN', 'COUNTY_ZIP') }}
)

select *
from source_data
