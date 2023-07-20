{% macro profit_margin(column_name_1, column_name_2) %}

    ROUND( {{column_name_1}} / {{column_name_2}} * 100 , 2) 

{% endmacro %}

