USE crackers_company;

SELECT * FROM employee ORDER BY employee_name ASC;

SELECT * FROM employee ORDER BY DNI DESC;

SELECT ID_supplier, name_raw_material from raw_material GROUP BY ID_supplier;

SELECT count(*), product_name
	FROM product
    INNER JOIN distributor
    ON distributor.ID_distributor = product.ID_product
GROUP BY product_name;

SELECT count(*), product_type
	FROM product
    INNER JOIN distributor
    ON distributor.ID_distributor = product.ID_product
GROUP BY product_name;

SELECT count(*), presentation, product_name
	FROM product
    INNER JOIN distributor
    ON distributor.ID_distributor = product.ID_product
GROUP BY product_type;

SELECT count(*), year(date_order)
	FROM purchase_orders
GROUP BY year(date_order);





