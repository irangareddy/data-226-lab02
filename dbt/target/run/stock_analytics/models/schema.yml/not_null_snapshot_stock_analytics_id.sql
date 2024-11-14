select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from dev.snapshot.snapshot_stock_analytics
where id is null



      
    ) dbt_internal_test