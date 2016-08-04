SELECT `MyCustomer`.`ms_fname` , `MyCustomer`.`ms_lname` , `MyProducts`.`mp_prod_code` , `MyProducts`.`mp_prod_type`
FROM `MyCustomer` LEFT JOIN `MyProducts` ON `MyCustomer`.`ms_product_id_fk` = `MyProducts`.`mp_prod_id_pk` WHERE `MyProducts`
.`mp_prod_functional` = 1 AND `MyProducts`.`mp_prod_last_updated` <= '2016-04-09 00:24:30';