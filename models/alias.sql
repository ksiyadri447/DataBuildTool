{{
    config(
        materialized='table',
        query_tag = 'alias_tag',
        alias = 'emp_aias'
    )
}}

SELECT 1 ID, 'KARTHIK' NAME, 30 AGE