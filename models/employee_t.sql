{{
    config(
        materialized='table',
        transient = false,
        alias = 'gender_stg',
        query_tag = 'gender_tag'
    )
}}

select *, {{case_macro('GENDER')}} from {{ source('src2', 'EMPLOYEE_T') }}