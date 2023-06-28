
with source as (

    select * from {{ source('DW_DBT','raw_customers')}}

),

renamed as (

    select
        id as cliente_id,
        first_name as nombre,
        last_name as apellido ,
        email as email 
    from source

)

select * from renamed