with raw_links AS (
    SELECT * FROM MOVIELENS.RAW.raw_links
)

SELECT 
    movieId AS movie_id,
    imdbid,
    tmdbid 
    FROM raw_links