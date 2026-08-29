{%set country_name = 'India'%}
SELECT * FROM {{ source('src2', 'SALES_DETAILS') }}
where (country = '{{country_name}}'
        or
        country = '{{ var ('country_name')}}'
        or
        country = '{{var('country_name1')}}')