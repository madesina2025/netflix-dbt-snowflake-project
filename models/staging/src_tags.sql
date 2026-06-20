{{ config(materialized='table') }}

with raw_tags as (

    select * from {{ source('netflix', 'r_tags') }}

),

deduped as (

    select
        userId as user_id,
        movieId as movie_id,
        tag,
        to_timestamp_ltz(timestamp) as rating_timestamp,
        row_number() over (
            partition by userId, movieId, tag, timestamp
            order by timestamp desc
        ) as rn
    from raw_tags

)

select
    user_id,
    movie_id,
    tag,
    rating_timestamp
from deduped
where rn = 1