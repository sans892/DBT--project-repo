-- models/stg_employees.sql
{{ config(materialized='table') }}

with cte_hr_employees AS(
    SELECT * FROM {{source('airbnb','stg_hr_emp')}}
)
SELECT 
   employee_id,
    first_name,
    last_name,
    Department,
    Salary,
    updated_at
 FROM cte_hr_employees