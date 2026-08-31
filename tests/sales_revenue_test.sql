{{
    config(
        store_failures=true
    )
}}

SELECT * FROM {{ ref('sales1_stg') }}
where revenue<0