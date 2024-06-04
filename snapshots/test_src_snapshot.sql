{% snapshot orders_snapshot_check %}

    {{
        config(
          target_schema='DBT_KEVANS_SNAPSHOT',
          strategy='check',
          unique_key='test_code',
          check_cols=['test_desc', 'test_name','seq'],
           invalidate_hard_deletes=True,
        )
    }}

    select * from {{ source('KEVANS_SRC','TEST_SRC')}}

{% endsnapshot %}