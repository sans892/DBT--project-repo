
WITH 
full_moon_dates AS (
    SELECT * FROM {{ ref('seed_data') }}
)

SELECT
*
FROM
 full_moon_dates