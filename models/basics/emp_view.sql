{{
    config(
        materialized='view',
        secure = false
    )
}}

SELECT ID,CITY FROM EMP_T