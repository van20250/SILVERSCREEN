select
    movie_id,
    movie_title,
    coalesce(genre, 'Unknown') as genre,
    studio
from {{ source('SILVERSCREEN', 'movie_catalogue') }}