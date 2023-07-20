with orders as (

    select
        ORDER_ID,
        ORDER_DATE, 
        SHIP_DATE, 
        SHIP_MODE, 
        CUSTOMER_ID, 
        PRODUCT_ID, 
        ROUND(SALES,2) AS SALES, 
        QUANTITY, 
        DISCOUNT, 
        ROUND(PROFIT,2) AS PROFIT,
        {{ profit_margin('profit','sales') }} as PROFIT_MARGIN,
        {{ customer_category('profit')}} AS CUSTOMER_CATEGORY

    from {{ source('stg_models', 'orders') }}
)

select * from orders