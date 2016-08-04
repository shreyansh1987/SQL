CREATE TABLE IF NOT EXISTS `MyCustomer`(
`ms_id_pk` bigint(20) NOT NULL,
`ms_fname` varchar(40) NOT NULL,
`ms_lname` varchar(40) NOT NULL,
`ms_session_id` varchar(200) NULL,
`ms_product_id_fk` int(10) NULL,
`ms_reference_url` varchar(254) NULL,
`ms_product_code` varchar(40) NULL,
`ms_last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `MyProducts`(
`mp_prod_id_pk` int(10) NOT NULL,
`mp_prod_code` varchar(40) NOT NULL,
`mp_prod_url` varchar(254) NULL,
`mp_prod_category` varchar(40) NOT NULL,
`mp_prod_type` varchar(40) NOT NULL,
`mp_prod_status` boolean DEFAULT 1,
`mp_prod_functional` boolean DEFAULT 1,
`mp_prod_last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `MyAddress`(
`ma_id_pk` bigint(20) NOT NULL,
`ma_ms_id_fk` bigint(20) NOT NULL,
`ma_city` varchar(40) NOT NULL,
`ma_street` varchar(100) NOT NULL,
`ma_state` varchar(100) NOT NULL,
`ma_country` varchar(100) NOT NULL,
`ma_from_date` date,
`ma_to_date` date ,
`ma_status` boolean DEFAULT 1
) DEFAULT CHARSET=utf8;