{% snapshot customer_invalidate_snapshot %}

{{
    config(
        unique_key='CUSTOMER_ID',
        strategy='check',
        check_cols=['CITY', 'STATUS'],
        hard_deletes='invalidate'
    )
}}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    CITY,
    STATUS,
    UPDATED_AT
FROM {{ source('src2', 'CUSTOMERSSNAP') }}

{% endsnapshot %}