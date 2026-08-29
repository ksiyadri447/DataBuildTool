{% macro warehouse_action(action, wh_name) %}

    {% if action == 'use' %}

        {% set sql %}
            USE WAREHOUSE {{ wh_name }}
        {% endset %}

    {% elif action == 'suspend' %}

        {% set sql %}
            ALTER WAREHOUSE {{ wh_name }} SUSPEND
        {% endset %}

    {% endif %}

    {% do run_query(sql) %}

{% endmacro %}