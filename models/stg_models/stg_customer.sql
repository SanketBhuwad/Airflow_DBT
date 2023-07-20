with customers as (

    select
        CUSTOMER_ID, 
        CUSTOMER_NAME, 
        SEGMENT, 
        COUNTRY, 
        CITY, 
        STATE,  
        REGION

    from {{ source('stg_models', 'customer') }}
)

select * from customers
