{{
    config(
        materialized='table',
        query_tag='hook_tags',
        alias='warehouse_hook',

        pre_hook=[
    "{{ warehouse_action('use', 'COMPUTE_WH') }}"
],

post_hook=[
    "{{ warehouse_action('suspend', 'COMPUTE_WH') }}"
]
    )
}}

SELECT
    *,
    CURRENT_TIMESTAMP() AS INGEST_TIME,
    CURRENT_USER() AS USER
FROM {{ source('src2', 'SALES_DETAILS') }}