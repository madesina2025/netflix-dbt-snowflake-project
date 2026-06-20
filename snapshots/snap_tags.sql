{% snapshot snap_tags %}
{{
	config(
		target_schema = 'snapshots',
		unique_key = ['user_id', 'movie_id', 'tag'],
		strategy = 'timestamp',
		updated_at = 'rating_timestamp',
		invalidate_hard_delete=True		
	)
}}
SELECT 

{{ dbt_utils.generate_surrogate_key(['user_id', 'movie_id', 'tag']) }} AS row_key,
	user_id,
	movie_id,
	tag,
	CAST(rating_timestamp AS TIMESTAMP_NTZ) AS rating_timestamp
FROM {{ ref('src_tags') }}


{% endsnapshot %}