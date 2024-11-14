
    
    

with all_values as (

    select
        rsi_signal as value_field,
        count(*) as n_records

    from dev.analytics_marts.stock_analytics
    group by rsi_signal

)

select *
from all_values
where value_field not in (
    'OVERBOUGHT','OVERSOLD','NEUTRAL'
)


