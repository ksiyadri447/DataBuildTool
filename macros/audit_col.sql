{% macro audit_cols(args) %}
    CURRENT_TIMESTAMP() AS DBT_UPDATED_AT,
    CURRENT_USER() AS DBT_LOADED_BY,
    '{{invocation_id}}' AS DBT_INVOCATION_ID
{% endmacro %}