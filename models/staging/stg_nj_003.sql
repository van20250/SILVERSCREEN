select  details as movie_id,
        timestamp as "DATE",   
        amount as ticket_amount,
        total_value as revenue,
        'NJ_003' as location
from {{ source("SILVERSCREEN", "NJ_003") }}
where product_type = 'ticket'