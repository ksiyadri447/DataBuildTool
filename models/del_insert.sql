{{ config(
    materialized='incremental',
    incremental_strategy='delete+insert',
    unique_key='ID'
) }}

SELECT
    ID,
    REVENUE,
    ORDER_DATE,
    SHIPPED_DATE,
    LAST_MODIFIED_DT

FROM {{ source('src2', 'SALES22') }}

{% if is_incremental() %}

WHERE LAST_MODIFIED_DT >
(
    SELECT MAX(LAST_MODIFIED_DT)
    FROM {{ this }}
)

{% endif %}