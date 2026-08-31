{{
    config(
        materialized='incremental',
        unique_key = 'id',
        incremental_strategy = 'merge'
    )
}}

SELECT * FROM {{ source('src2', 'SALES22') }}

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where last_modified_dt > (select max(last_modified_dt) from {{ this }}) 
{% endif %}