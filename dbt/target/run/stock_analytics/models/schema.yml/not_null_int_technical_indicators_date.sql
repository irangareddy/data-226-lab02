select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select date
from dev.analytics_intermediate.int_technical_indicators
where date is null



      
    ) dbt_internal_test