select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select userId
from dev.analytics.session_summary
where userId is null



      
    ) dbt_internal_test