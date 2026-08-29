{% snapshot customer_check_col_snapshot %}

{{
    config(
        unique_key='CUSTOMER_ID',
        strategy='check',
        check_cols=['CITY']
    )
}}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    CITY,
    STATUS
FROM {{ source('src2', 'CUSTOMER_CHECK') }}

{% endsnapshot %}