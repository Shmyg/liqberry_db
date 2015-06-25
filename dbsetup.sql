@user

DEFINE owner = lq

CREATE	TABLE &&owner..all_data
	(
	order_comment	VARCHAR2(1000),
	mark_campaign	VARCHAR2(200),
	customer_status	VARCHAR2(200),
	ad_source	VARCHAR2(200),
	order_date	DATE,
	customer_name	VARCHAR2(200),
	customer_address	VARCHAR2(1000),
	phone_number	VARCHAR2(200),
	add_phone	VARCHAR2(200),
	mark_campaign1	VARCHAR2(200),
	cranberry	NUMBER,
	cowberry	NUMBER,
	blueberry	NUMBER,
	order_amt	NUMBER,
	payment_method	VARCHAR2(200),
	order_status	VARCHAR2(200),
	delivery	VARCHAR2(200),
	consultant	VARCHAR2(200),
	doctor		VARCHAR2(200),
	diagnosis	VARCHAR2(4000),
	order_comment1	VARCHAR2(4000)
)
/
CREATE	TABLE &&owner..customer_type
	(
	id	NUMBER NOT NULL,
	ctype_name	VARCHAR2(60) NOT NULL,
PRIMARY	KEY (id)
)
ORGANIZATION INDEX
/

CREATE	TABLE &&owner..payment_method
	(
	id	NUMBER  NOT NULL,
	method_name	VARCHAR2(30) NOT NULL,
PRIMARY	KEY (id)
)
ORGANIZATION INDEX
/

CREATE	TABLE &&owner..delivery_method
	(
	id	NUMBER NOT NULL,
	method_name	VARCHAR2(30) NOT NULL,
PRIMARY	KEY (id)
)
ORGANIZATION INDEX
/

CREATE	TABLE &&owner..ad_source
	(
	id	NUMBER NOT NULL,
	ad_source_name	VARCHAR2(60) NOT NULL,
PRIMARY	KEY (id)
)
ORGANIZATION INDEX
/

CREATE	TABLE &&owner..marketing_campaign
	(
	id	NUMBER NOT NULL,
	cname	VARCHAR2(200) NOT NULL,
PRIMARY	KEY (id)
)
ORGANIZATION INDEX
/

CREATE	TABLE &&owner..customer
	(
	id	NUMBER NOT NULL,
	ctype	NUMBER,
	cname	VARCHAR2(1000),
	phone_no	VARCHAR2(10),
	add_phone_no	VARCHAR2(10),
	region		VARCHAR2(100),
PRIMARY KEY (id)
)
/

CREATE	SEQUENCE &&owner..customer_seq
/

CREATE	TABLE &&owner..product
	(
	id	NUMBER NOT NULL,
	product_name	VARCHAR2(30),
PRIMARY	KEY (id)
)
ORGANIZATION INDEX
/

CREATE	TABLE &&owner..customer_order
	(
	id	NUMBER NOT NULL,
	customer_id	NUMBER NOT NULL,
	order_date	DATE NOT NULL,
	order_address	VARCHAR2(400),
	order_amt	NUMBER NOT NULL,
	campaign_id	NUMBER,
PRIMARY	KEY (id),
FOREIGN	KEY (customer_id) REFERENCES &&owner..customer,
FOREIGN KEY (campaign_id) REFERENCES &&owner..marketing_campaign
)
/

CREATE	SEQUENCE &&owner..customer_order_seq
/

CREATE	TABLE &&owner..order_line
	(
	order_id	NUMBER NOT NULL,
	product_id	NUMBER NOT NULL,
	product_qty	NUMBER NOT NULL,
PRIMARY KEY (order_id, product_id),
FOREIGN KEY (order_id) REFERENCES &&owner..customer_order,
FOREIGN KEY (product_id) REFERENCES &&owner..product
)
/

