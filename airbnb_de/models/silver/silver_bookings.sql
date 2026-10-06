 {{ config (materialized= 'incremental',unique_key= 'BOOKING_ID') }}

 SELECT
    BOOKING_ID,
    LISTING_ID,
    BOOKING_DATE,
    {{ multiply('nights_booked','booking_amount',2) }} + cleaning_fee + service_fee as TOTAL_AMOUNT,
    SERVICE_FEE,
    CLEANING_FEE,
    BOOKING_STATUS,
    CREATED_AT
FROM {{ ref('bronze_bookings')}}    
