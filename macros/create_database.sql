{% macro create_database(database_name) %}

    {% set sql %}
        CREATE DATABASE IF NOT EXISTS {{ database_name }}
    {% endset %}

    {% do run_query(sql) %}

{% endmacro %}