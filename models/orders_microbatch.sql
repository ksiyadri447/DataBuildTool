{{ config(
    materialized='incremental',
    incremental_strategy='microbatch',
    event_time='LAST_MODIFIED_DT',
    begin='2026-08-29 05:00:00',
    batch_size='hour'
) }}

SELECT
    ID,
    REVENUE,
    ORDER_DATE,
    SHIPPED_DATE,
    LAST_MODIFIED_DT
FROM {{ source('src2', 'SALES22') }}