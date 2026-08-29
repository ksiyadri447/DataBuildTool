{% macro suspend_warehouse(wh_name) %}

    {% set sql %}
        ALTER WAREHOUSE {{ wh_name }} SUSPEND
    {% endset %}

    {% do run_query(sql) %}

{% endmacro %}