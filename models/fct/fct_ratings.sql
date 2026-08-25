{{
  config(
    materialized='incremental',
    on_schema_change='fail'
  )
}}


WITH src_rating AS(
  SELECT * FROM {{ ref('src_ratings') }}
)

SELECT
  user_id AS userId,
  movie_id AS movieId,
  rating,
  ratingtimestamp
FROM src_rating
WHERE rating IS NOT NULL


-- Incremental logic
{% if is_incremental() %}
  AND ratingtimestamp > (SELECT MAX(ratingtimestamp) FROM {{ this }})
{% endif %}

