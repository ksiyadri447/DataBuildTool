{{
    config(
        materialized='view',
        secure = true
    )
}}

SELECT ID,NAME FROM EMP_T