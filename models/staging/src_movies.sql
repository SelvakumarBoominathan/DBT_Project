
WITH raw_Mvs AS (
    SELECT *
    FROM MOVIELENSE.RAW.RAW_MOVIES
)
SELECT
    movies_id AS MoviesId,
    title AS Title,
    genres AS Genres
FROM raw_Mvs