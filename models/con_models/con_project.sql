{{
    config(
        materialized='table'
    )
}}

with orders as (select * from {{ ref('stg_order') }}),
     product as (select * from {{ ref('stg_product') }}),
     customer as (select * from {{ ref('stg_customer') }})

select 
o.*,
c.CUSTOMER_NAME, 
c.SEGMENT, 
c.COUNTRY, 
c.CITY, 
c.STATE,  
c.REGION,
p.PRODUCT_NAME,
p.CATEGORY, 
p.SUB_CATEGORY

from orders as o
left join customer as c on o.customer_id = c.customer_id
left join product as p on o.product_id = p.product_id
