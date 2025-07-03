WITH all_customers as (
    select * from airbnb.raw.customers
)
SELECT
    id,
    name,
    update_at
FROM
    all_customers

--