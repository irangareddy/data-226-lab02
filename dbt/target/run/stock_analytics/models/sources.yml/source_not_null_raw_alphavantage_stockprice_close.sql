select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select close
from dev.raw_data.alphavantage_stockprice
where close is null



      
    ) dbt_internal_test