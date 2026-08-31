{{ dbt_utils.deduplicate(
    relation=source('src2', 'SALES1'),
    partition_by='id',
    order_by="id",
   )
}}