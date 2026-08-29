{% macro use_warehouse(wh_name) %}

    {% set sql %}
        USE WAREHOUSE {{ wh_name }}
    {% endset %}

    {% do run_query(sql) %}

{% endmacro %}