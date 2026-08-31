{{
    config(
        materialized='table',
        transient = false
    )
}}

SELECT * FROM {{ ref('ephmeral_model') }}