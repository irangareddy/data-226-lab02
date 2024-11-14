
    
    

select
    id as unique_field,
    count(*) as n_records

from dev.snapshot.snapshot_stock_prices
where id is not null
group by id
having count(*) > 1


