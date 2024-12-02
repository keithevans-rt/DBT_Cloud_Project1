{{ config(materialized='table') }}

with source_data as (
    select *
    from {{ source('KEVANS_SRC', 'TF_STATE_TABLE') }}
)

select *
from source_data
