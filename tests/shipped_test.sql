{{
    config(
        store_failures=true
    )
}}

SELECT * FROM {{ ref('sales1_stg') }}
 where shipped_date < order_date