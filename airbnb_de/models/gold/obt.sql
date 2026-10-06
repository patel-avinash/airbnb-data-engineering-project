{% set configs = [
    {
        "table" : "AIRBNB.SILVER.SILVER_BOOKINGS",
        "column" : "silver_bookings.*",
        "alias" : "silver_bookings"
    },
    {
        "table" : "AIRBNB.SILVER.SILVER_LISTINGS",
        "column" : "silver_listings.PROPERTY_TYPE,silver_listings.ROOM_TYPE,silver_listings.CITY,silver_listings.COUNTRY,silver_listings.ACCOMMODATES,silver_listings.BEDROOMS,silver_listings.BATHROOMS,silver_listings.PRICE_PER_NIGHT,silver_listings.PRICE_TAG,silver_listings.CREATED_AT AS LISTINGS_CREATED_AT",
        "alias" : "silver_listings",
        "join_condition" : "silver_bookings.listing_id = silver_listings.listing_id"
    },
    
    {
        "table" : "AIRBNB.SILVER.SILVER_HOSTS",
        "column" : "silver_hosts.HOST_ID,silver_hosts.HOST_NAME,silver_hosts.HOST_SINCE,silver_hosts.IS_SUPERHOST,silver_hosts.RESPONSE_RATE,silver_hosts.RESPONSE_RATE_QUALITY,silver_hosts.CREATED_AT AS HOST_CREATED_AT",
        "alias" : "silver_hosts",
        "join_condition" : "silver_hosts.host_id = silver_listings.host_id"
    }
]%}


SELECT 
    {% for i in configs %}
        {{ i.column }}{% if not loop.last %},{% endif %}
    {% endfor %}
FROM
    {% for i in configs %}
    {% if loop.first %}
        {{ i['table']}} AS {{i['alias']}} 
    {% else %}
        LEFT JOIN {{ i['table'] }} ON {{ i['join_condition']}}
    {% endif %}    
    {% endfor %}    