LOAD	DATA
INFILE	*
INTO	TABLE lq.product
TRUNCATE
FIELDS	TERMINATED BY ';'
	(
	id	INTEGER EXTERNAL,
	product_name
	)
BEGINDATA
1;Чорниця
2;Журавлина
3;Брусниця
