WITH raw_tags AS (
    SELECT * FROM MOVIELENSE.RAW.RAW_TAGS
)

SELECT 
    userId AS user_id,
    movies_Id AS movie_id,
    tag,
    TO_TIMESTAMP_LTZ(timestamp) AS tag_timestamp
FROM raw_tags