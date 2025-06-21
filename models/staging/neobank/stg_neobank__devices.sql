with 

source as (

    select * from {{ source('neobank', 'devices') }}

),

renamed as (

    select
        string_field_0 AS brand,
        string_field_1 AS users

    from source

)

select * from renamed
