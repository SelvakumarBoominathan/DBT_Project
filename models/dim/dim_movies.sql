WITH SRC_MOVIES AS (
    SELECT *
    FROM {{ ref('src_movies') }}
)
SELECT 
    MoviesId,
    INITCAP(TRIM(Title)) AS movie_title,
    SPLIT(Genres, '|') AS genres_array,
    Genres
FROM SRC_MOVIES