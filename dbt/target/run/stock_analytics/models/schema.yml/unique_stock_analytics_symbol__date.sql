select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    ['symbol', 'date'] as unique_field,
    count(*) as n_records

from dev.analytics_marts.stock_analytics
where ['symbol', 'date'] is not null
group by ['symbol', 'date']
having count(*) > 1



      
    ) dbt_internal_test