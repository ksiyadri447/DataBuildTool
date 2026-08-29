{% snapshot customer_snapshot %}

{{
    config(
        unique_key='CUSTOMER_ID',
        strategy='timestamp',
        updated_at='UPDATED_AT'
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