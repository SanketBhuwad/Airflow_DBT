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
        {{ profit_margin('profit','sales')}} as Profit_margin,
        {{ customer_category('profit')}} as customer_category

    from {{ source('stg_models','orders') }}
)

select * from orders