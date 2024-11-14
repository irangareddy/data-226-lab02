select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        channel as value_field,
        count(*) as n_records

    from dev.analytics.session_summary
    group by channel

)

select *
from all_values
where value_field not in (
    'Instagram','Naver','Youtube','Facebook','Organic','Google'
)



      
    ) dbt_internal_test