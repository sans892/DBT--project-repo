-- models/stg_employees.sql
{{ config(materialized='table') }}

with cte_employees AS(
    SELECT * FROM {{source('airbnb','stg_Employees')}}
)
SELECT 
Employee_ID,
    First_Name,
    Last_Name,
    Department,
    Salary NUMBER,
    Hire_Date
 FROM cte_employees