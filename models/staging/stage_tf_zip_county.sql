with
final_ as (
            select ZIP                          as ZIP_CODE
                    ,USPS_ZIP_PREF_CITY         as CITY_NAME
                    ,USPS_ZIP_PREF_STATE        as STATE_CODE
            from {{ ref('land_tf_zip_county') }}
                    )

select *
from final_