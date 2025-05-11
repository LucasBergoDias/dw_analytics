with 

source as (

    select * from {{ ref('stg_hubspot__customer') }}

),

renamed as (

    select
        customer_first_name
        , customer_last_name
        , customer_age
    from source

)

select * from renamed