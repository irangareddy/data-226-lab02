select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select high
from dev.analytics_marts.stock_analytics
where high is null



      
    ) dbt_internal_test