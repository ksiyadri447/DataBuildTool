{% macro case_macro(gen) %}
    CASE
 WHEN {{gen}} = 'M' THEN 'MALE'
 WHEN {{gen}} = 'F' THEN 'FEMALE' END as GENDER_FULLNAME
{% endmacro %}