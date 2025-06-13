select month as transaction_month, 
    location_id, 
    m.movie_id,
    movie_title,
    m.studio,
    genre,
    sum(total_invoice_sum) as rental_costs
from {{ source("SILVERSCREEN", "invoices") }} as i
join {{ ref('stg_movie_catalogue') }} as m
on i.movie_id=m.movie_id
group by 1,2,3,4,5,6
order by month desc