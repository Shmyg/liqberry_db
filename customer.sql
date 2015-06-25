INSERT	INTO customer
	(
	id,
	cname,
	phone_no,
	add_phone_no
	)
SELECT	customer_seq.NEXTVAL,
	cname,
	phone_no,
	add_phone_no
FROM	(
SELECT	DECODE( LENGTH(phone_number), 9, '0' || phone_number, phone_number ) AS phone_no,
	MIN( customer_name ) AS cname,
	MIN( DECODE( LENGTH(add_phone), 9, '0' || add_phone, 10, add_phone, NULL )) AS add_phone_no
FROM	all_data
WHERE	LENGTH( phone_number ) IN (9, 10)
GROUP	BY DECODE( LENGTH(phone_number), 9, '0' || phone_number, phone_number )
)
/


