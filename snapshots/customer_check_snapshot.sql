{% snapshot customer_check_snapshot %}

{{
    config(
        unique_key='CUSTOMER_ID',
        strategy='check',
        check_cols='all'
    )
}}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    CITY,
    STATUS
FROM {{ source('src2', 'CUSTOMER_CHECK') }}

{% endsnapshot %}