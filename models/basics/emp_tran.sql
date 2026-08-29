{{
    config(
        materialized='table',
        transient = true
    )
}}

SELECT * FROM EMP_T