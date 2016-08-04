LOAD DATA LOCAL INFILE 'filepath/MyClients.csv' INTO TABLE MyCustomer
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(ms_fname, ms_lname, ms_email, ms_created_datetime, ms_accessed_datetime, ms_session_id , ms_product_id_fk, ms_reference_url, ms_product_code, ms_last_updated);

LOAD DATA LOCAL INFILE 'filepath/Products.csv' INTO TABLE MyProducts
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(mp_prod_code, mp_prod_url, mp_prod_category, mp_prod_type, mp_prod_status,mp_prod_functional,mp_prod_last_updated);

LOAD DATA LOCAL INFILE 'filepath/Address.csv' INTO TABLE MyAddress
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(ma_ms_id_fk, ma_city, ma_street, ma_state, ma_country,ma_from_date,ma_to_date,ma_status);