select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select close
from dev.analytics_staging.stg_stock_prices
where close is null



      
    ) dbt_internal_test