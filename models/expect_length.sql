select * from {{ source('src2', 'SALES1') }}
qualify row_number() over(partition by id order by id) = 1