with scd_raw_customer AS (
    SELECT * FROM {{ref('snapshot_customer')}}
)
SELECT * FROM scd_raw_customer
WHERE DBT_VALID_TO is null