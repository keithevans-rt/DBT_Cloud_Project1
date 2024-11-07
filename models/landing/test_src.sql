
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    select *
<<<<<<< HEAD:models/example/test_src.sql
    , 1 Count_Int
    , current_date() as Date_Txt

    from {{ source('KEVANS_SRC','TEST_SRC')}}
=======
    from {{ source('KEVANS_SRC','HYBRID_TABLE')}}
>>>>>>> f2f72e828b9c5244f1f7d15b574a0995e3096378:models/landing/test_src.sql

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
