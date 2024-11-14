select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ['symbol', 'date', 'close']
from dev.raw_data.ALPHAVANTAGE_STOCKPRICE
where ['symbol', 'date', 'close'] is null



      
    ) dbt_internal_test