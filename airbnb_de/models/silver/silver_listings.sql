{{ config (materialized= 'incremental',unique_key= 'LISTING_ID',
    on_schema_change='sync_all_columns') }}

SELECT
    LISTING_ID,
    HOST_ID,
    {{ trimmer('PROPERTY_TYPE') }} AS PROPERTY_TYPE,
    ROOM_TYPE,
    CITY,
    COUNTRY,
    ACCOMMODATES,
    BEDROOMS,
    BATHROOMS,
    PRICE_PER_NIGHT,
    {{ tag('CAST(PRICE_PER_NIGHT AS INT)') }} as PRICE_TAG,
    CREATED_AT
FROM {{ ref('bronze_listings')}}    