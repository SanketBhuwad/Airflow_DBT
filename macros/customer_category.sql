{% macro customer_category(profit) %}
CASE
    WHEN profit >= 151 THEN 'High-Profit'
    WHEN profit >= 51 AND profit <= 150 THEN 'Medium-Profit'
    WHEN profit >= 0 AND profit <= 50 THEN 'Low-Profit' 
    ELSE 'Loss'
END 
{% endmacro %}