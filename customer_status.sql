select replace(customer_status, ' ', '_') as customer_status, length(customer_status), count(*) from all_data group by replace(customer_status, ' ', '_'), length(customer_status)
/
