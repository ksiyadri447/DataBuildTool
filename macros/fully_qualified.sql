{% macro full_macro(fNAME,MNAME,LNAME) %}
    INITCAP({{'FNAME'}} || ' ' ||  {{'MNAME'}} || ' '||{{'LNAME'}})
{% endmacro %}