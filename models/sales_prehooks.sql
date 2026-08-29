{{ 
    config(
        materialized='table',
        query_tag='hook_tag',
        alias='sales_prehook',

        pre_hook=[
            "{{ use_warehouse('COMPUTE_WH') }}"
        ],

        post_hook=[
            "{{suspend_warehouse('COMPUTE_WH')}}"
        ]
    )
}}

SELECT
    *,
    CURRENT_TIMESTAMP() AS INGEST_TIME,
    CURRENT_USER() AS USER
FROM {{ source('src2', 'SALES_DETAILS') }}