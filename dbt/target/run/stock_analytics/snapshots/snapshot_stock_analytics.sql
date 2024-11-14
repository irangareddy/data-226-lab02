
      begin;
    merge into "DEV"."SNAPSHOT"."SNAPSHOT_STOCK_ANALYTICS" as DBT_INTERNAL_DEST
    using "DEV"."SNAPSHOT"."SNAPSHOT_STOCK_ANALYTICS__dbt_tmp" as DBT_INTERNAL_SOURCE
    on DBT_INTERNAL_SOURCE.dbt_scd_id = DBT_INTERNAL_DEST.dbt_scd_id

    when matched
     and DBT_INTERNAL_DEST.dbt_valid_to is null
     and DBT_INTERNAL_SOURCE.dbt_change_type in ('update', 'delete')
        then update
        set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to

    when not matched
     and DBT_INTERNAL_SOURCE.dbt_change_type = 'insert'
        then insert ("ID", "SYMBOL", "DATE", "OPEN", "HIGH", "LOW", "CLOSE", "VOLUME", "DAILY_RETURN", "WEEKLY_RETURN", "MA_20", "MA_50", "RSI_14", "UPPER_BAND", "LOWER_BAND", "TREND_SIGNAL", "BOLLINGER_SIGNAL", "RSI_SIGNAL", "DBT_UPDATED_AT", "DBT_VALID_FROM", "DBT_VALID_TO", "DBT_SCD_ID")
        values ("ID", "SYMBOL", "DATE", "OPEN", "HIGH", "LOW", "CLOSE", "VOLUME", "DAILY_RETURN", "WEEKLY_RETURN", "MA_20", "MA_50", "RSI_14", "UPPER_BAND", "LOWER_BAND", "TREND_SIGNAL", "BOLLINGER_SIGNAL", "RSI_SIGNAL", "DBT_UPDATED_AT", "DBT_VALID_FROM", "DBT_VALID_TO", "DBT_SCD_ID")

;
    commit;
  