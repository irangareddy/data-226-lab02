
    
    

select
    ['symbol', 'date'] as unique_field,
    count(*) as n_records

from dev.raw_data.ALPHAVANTAGE_STOCKPRICE
where ['symbol', 'date'] is not null
group by ['symbol', 'date']
having count(*) > 1

