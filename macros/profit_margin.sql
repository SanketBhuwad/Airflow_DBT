{% macro profit_margin(profit,sales) %}

    {{ ROUND((profit / sales) * 100,2) }}

{% endmacro %}