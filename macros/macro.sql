{% macro version_number(partition_by_columns, order_by_columns) %}

   rank() over (partition by {{ partition_by_columns }} order by {{ order_by_columns }} ASC)

{% endmacro %}

-------------------------------------------------------------------------------------------------------

{% macro version_number_reverse(partition_by_columns, order_by_columns) %}

   rank() over (partition by {{ partition_by_columns }} order by {{ order_by_columns }} DESC)

{% endmacro %}

-------------------------------------------------------------------------------------------------------

{% macro delete_flag(current_column, test_column) %}

{% set test_column_name = var('high_date') %}

    case
        when {{ current_column }}  = '{{test_column_name}}'
            then 'N'
        else 'Y'
    end    

{% endmacro %}


-------------------------------------------------------------------------------------------------------

{% macro current_flag(current_column, test_column) %}

    case
        when {{ current_column }}  = {{test_column }}
            then 'Y'
        else 'N'
    end    
{% endmacro %}