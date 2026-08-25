WITH ratings AS (
    SELECT DISTINCT user_id FROM {{ ref ('src_ratings')}}
),
tags AS (
    SELECT DISTINCT user_id FROM {{ ref ('src_tag')}}
)
SELECT DISTINCT user_id
FROM (
    SELECT * FROM ratings
    UNION
    SELECT * FROM tags
)