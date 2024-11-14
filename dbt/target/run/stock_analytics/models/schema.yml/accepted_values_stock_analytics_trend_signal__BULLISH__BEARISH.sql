select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        trend_signal as value_field,
        count(*) as n_records

    from dev.analytics_marts.stock_analytics
    group by trend_signal

)

select *
from all_values
where value_field not in (
    'BULLISH','BEARISH'
)



      
    ) dbt_internal_test