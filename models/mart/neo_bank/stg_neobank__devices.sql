{{ config( materialized='table')}}
with 

source as (

    select * from {{ source('neobank', 'devices') }}

),

renamed as (

    select
        string_field_0,
        string_field_1

    from source

)

select
    string_field_0 AS brand,
    string_field_1 AS user_id
FROM renamed