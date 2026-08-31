{% test validate_email(model,column_name) %}
    SELECT * FROM {{model}}
    WHERE {{column_name}} not like '%@%'
{% endtest %}