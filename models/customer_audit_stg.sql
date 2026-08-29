{{
    config(
        materialized='table',

    )
}}

SELECT *, {{audit_cols()}} FROM {{ source('src2', 'CUSTOMER_AUDIT') }}