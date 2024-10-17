{% snapshot snap_test_src %}

   {{
        config(

          strategy='check',
          unique_key='id',
          check_cols='all',
          invalidate_hard_deletes=True,
        )
    }}

    select * 
    from {{ ref('test_src') }}

{% endsnapshot %}
