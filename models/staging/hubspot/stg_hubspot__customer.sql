with 

source as (

    select * from {{ source('hubspot', 'customer') }}

),

renamed as (

    select
        first_name as customer_first_name
        , last_name as customer_last_name
        , age as customer_age
    from source

)

select * from renamed
