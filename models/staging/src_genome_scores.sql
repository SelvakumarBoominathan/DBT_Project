WITH raw_genome_scores AS (
    SELECT * FROM MOVIELENSE.RAW.RAW_GENOME_SCORES
)

SELECT 
    moviesId AS movie_id,
    tagId AS tag_id,
    relevance
FROM raw_genome_scores