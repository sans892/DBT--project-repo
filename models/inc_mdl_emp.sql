{{ config(
    materialized='incremental',
    unique_key='employee_id'
) }}

SELECT 
    employee_id,
    first_name,
    last_name,
    Department,
    salary,
    updated_at
FROM {{source('airbnb','stg_hr_emp')}}

{% if is_incremental() %}
WHERE updated_at > (SELECT MAX(updated_at) FROM {{ this }})
{% endif %}
