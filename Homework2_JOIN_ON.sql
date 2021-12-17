USE Crackers_company;


SELECT * FROM product P JOIN distributor D ON P.ID_product = D.ID_product;

SELECT * FROM supplier S JOIN product P ON S.ID_supplier = P.ID_product;

SELECT * FROM employee E JOIN machine M ON E.ID_employee = M.ID_Machine
                         JOIN bussines_area B ON E.ID_employee  = B.ID_sector;

SELECT * FROM employee E JOIN machine M ON E.ID_employee = M.ID_Machine
                         JOIN bussines_area B ON E.ID_employee  = B.ID_sector;

SELECT * FROM company C JOIN invoice I ON C.ID_company = I.ID_invoice
                         JOIN despatch_note DES ON C.ID_company = DES.ID_despatch_note;
                         
                         


SELECT P.product_name AS "Product name", D.distributor_zone AS "Distributor Zone"  FROM product P left JOIN distributor D ON P.ID_product = D.ID_distributor;

SELECT S.name_supplier AS "Supplier name", P.product_name AS "Product name"  FROM supplier S  LEFT JOIN product P ON S.ID_product = P.ID_product;

SELECT R.ID_product AS "id_product", S.name_supplier, R.name_raw_material FROM raw_material R LEFT OUTER JOIN supplier S ON R.ID_raw_material = S.ID_supplier;

SELECT client_name, ID_invoice FROM invoice LEFT JOIN client_ ON invoice.ID_invoice = client_.ID_CLIENT;

SELECT P.product_name, client_name FROM product P LEFT JOIN client_ ON P.ID_product = client_.ID_CLIENT;




SELECT product_type, distributor_name  FROM distributor RIGHT JOIN product ON distributor.ID_distributor = product.ID_product;

SELECT client_name FROM invoice right JOIN client_ ON invoice.ID_invoice = client_.ID_CLIENT;

SELECT P.product_name AS "Product name", D.distributor_zone AS "Distributor Zone"  FROM product P RIGHT JOIN distributor D ON P.ID_product = D.ID_distributor;

SELECT C.client_name,  ID_order FROM purchase_orders PU  RIGHT OUTER JOIN client_ C ON PU.ID_order = C.ID_CLIENT;

SELECT employee.employee_name, bussines_area.sector_name
FROM employee
RIGHT JOIN bussines_area ON bussines_area.ID_sector = employee.ID_sector
ORDER BY bussines_area.ID_sector;






