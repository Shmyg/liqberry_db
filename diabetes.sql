SELECT	count(*)
FROM	lq.all_data
WHERE	(
	diagnosis like '%ахар%'
OR	diagnosis like '%иабет%'
OR	diagnosis like '%укор%'
OR	diagnosis like '%сд%'
OR	diagnosis like '%СД%'
OR	diagnosis like '%цд%'
OR	diagnosis like '%ЦД%'
)
OR	(
	order_comment1 like '%ахар%'
OR	order_comment1 like '%иабет%'
OR	order_comment1 like '%укор%'
OR	order_comment1 like '%сд%'
OR	order_comment1 like '%СД%'
OR	order_comment1 like '%цд%'
OR	order_comment1 like '%ЦД%'
)
/
