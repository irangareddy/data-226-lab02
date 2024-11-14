
  create or replace   view dev.analytics_staging.stg_stock_prices
  
   as (
    

SELECT
    symbol,
    date::DATE as date,
    open::DECIMAL(10,4) as open,
    high::DECIMAL(10,4) as high,
    low::DECIMAL(10,4) as low,
    close::DECIMAL(10,4) as close,
    volume::BIGINT as volume
FROM dev.raw_data.alphavantage_stockprice
  );

