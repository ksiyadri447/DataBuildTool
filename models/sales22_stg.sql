{{
    config(
        materialized='table'
    )
}}

SELECT * FROM {{ source('src2', 'SALES22') }}