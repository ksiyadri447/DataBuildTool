{{
    config(
        materialized='view' 
    )
}}

SELECT * FROM {{ source('src2', 'SALES1') }}