{{
    config(
        materialized='table',
        query_tag = 'dbt_tag'
    )
}}

SELECT 1 ID, 'KARTHIK' NAME