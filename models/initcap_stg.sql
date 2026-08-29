{{ config(
    materialized='table',
    transient=false,
    alias='gender_full',
    query_tag='initfull'
) }}

SELECT
    *,
    {{ case_macro('GENDER') }},
    {{ full_macro('FNAME', 'MNAME', 'LNAME') }} AS FULLNAME
FROM {{ source('src2', 'EMPLOYEE_T') }}