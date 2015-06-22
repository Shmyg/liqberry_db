LOAD	DATA
INTO	TABLE all_data
TRUNCATE
FIELDS	TERMINATED BY ';'
TRAILING NULLCOLS
	(
	order_id	FILLER,
	order_comment,
	mark_campaign,
	customer_status,
	ad_source,
	order_date	DATE 'DD/MM/YYYY',
	customer_name,
	customer_address,
	phone_number,
	add_phone,
	mark_campaign1,
	cranberry,
	cowberry,
	blueberry,
	order_amt,
	payment_method,
	order_status,
	delivery,
	consultant,
	doctor	,
	diagnosis CHAR(4000),
	order_comment1 CHAR(4000)
)
