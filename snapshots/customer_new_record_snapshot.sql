{% snapshot customer_new_record_snapshot %}

{{
    config(
        unique_key='CUSTOMER_ID',
        strategy='check',
        check_cols=['CITY', 'STATUS'],
        hard_deletes='new_record'
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