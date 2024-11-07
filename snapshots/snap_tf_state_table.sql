{% snapshot snap_tf_state_table %}

   {{
        config(

          strategy='check',
          unique_key='STATE_CODE',
          check_cols='all',
          invalidate_hard_deletes=True,
        )
    }}

    select * 
    from {{ ref('land_tf_state_table') }}

{% endsnapshot %}