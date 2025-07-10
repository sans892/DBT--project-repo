--1. MACROS (folder) - positive_value.sql    (going to ge used in a GENERIC Test)

{% test positive_value(model, column_name) %}
SELECT
    *
FROM
    {{ model }}
WHERE
    {{ column_name}} < 1
{% endtest %}