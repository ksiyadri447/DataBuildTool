{{
    config(
        materialized='table',
        transient = false
    )
}}

SELECT * FROM EMP_T