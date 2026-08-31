{{ config(materialized='ephemeral') }}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    CITY
FROM {{ source('src2', 'CUSTOMERSSNAP') }}
