
WITH src_tags AS (
    SELECT * FROM {{ref('src_genome_tags')}}
)

    SELECT 
        tag_id,
        tag
    FROM src_tags