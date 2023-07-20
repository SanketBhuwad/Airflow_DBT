with products as (

    select
        PRODUCT_ID,
        CATEGORY, 
        SUB_CATEGORY, 
        PRODUCT_NAME

    from {{ source('stg_models', 'product') }}
)

select * from products