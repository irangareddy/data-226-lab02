
    
    

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


