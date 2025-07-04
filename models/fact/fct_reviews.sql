{{
    config(
        materialized = 'incremental',
        on_schema_change ='fail'
    )
}}

with src_reviews_1 AS(
    SELECT * FROM {{ref('src_reviews')}}
)
SELECT * FROM src_reviews_1
where review_text is not null

{% if is_incremental() %}
AND review_date > (select max(review_date) from {{this}})
{%endif%}