WITH ratings AS (SELECT distinct user_id 
    FROM {{ref('src_ratings')}}
),

tags AS (SELECT DISTINCT user_id
    FROM {{ref('src_tags')}}
)

SELECT DISTINCT user_id 
   FROM (
        SELECT USER_ID FROM RATINGS
            UNION
        SELECT USER_ID FROM TAGS
    )