with
    source_ as (
                    select
                        *
                        ,nvl(dbt_valid_to,'{{ var('high_date' ) }}')                                   def_dbt_valid_to
                    from {{ ref('snap_test_src') }}                                      src
    )

    ,flag_ as (
                    select
                            id
                            , MAX(def_dbt_valid_to)                                                        max_dbt_valid_to
                    from    source_
                    group by all
    )

    ,final_ as (
                    select
                            src.*
                            ,src.dbt_valid_from                                                     start_date
                            ,src.dbt_valid_to                                                       end_date
                            ,{{ current_flag ('src.def_dbt_valid_to','flag.max_dbt_valid_to')}}         current_flag
                            ,{{ delete_flag('flag.max_dbt_valid_to') }}                             delete_flag
                            ,{{ version_number('src.id','src.def_dbt_valid_to') }}                      version_number

                    from source_                                                                        src
                    inner join flag_                                                                    flag
                            on src.id = flag.id
                    )

select *
from final_
