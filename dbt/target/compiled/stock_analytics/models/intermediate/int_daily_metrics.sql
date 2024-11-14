

WITH price_data AS (
    SELECT
        symbol,
        date,
        close,
        LAG(close, 1) OVER (PARTITION BY symbol ORDER BY date) as prev_close,
        LAG(close, 5) OVER (PARTITION BY symbol ORDER BY date) as close_5d_ago
    FROM dev.analytics_staging.stg_stock_prices
)

SELECT
    symbol,
    date,
    close,
    ((close - prev_close) / prev_close) * 100 as daily_return,
    ((close - close_5d_ago) / close_5d_ago) * 100 as weekly_return
FROM price_data