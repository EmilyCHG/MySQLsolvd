use crackers_company;

UPDATE distributor SET distributor_name = "EastDistributions" Where ID_distributor = 1;

UPDATE product SET presentation = "150g" where ID_Product = 1;

UPDATE company SET name_company = "Cracker's Company S.A" WHERE ID_company = 1;

UPDATE supplier SET name_supplier = "Industrie Goods" WHERE ID_supplier = 1;

UPDATE supplier SET ID_product = 3 WHERE ID_supplier = 1;

UPDATE employee SET ID_SECTOR = 4 WHERE ID_employee = 1;

UPDATE client_ SET phone_client = 345698721 WHERE ID_client = 2;

UPDATE invoice SET ID_product = 3 WHERE ID_invoice = 1;

UPDATE material SET name_material = "Scale and Weights" WHERE ID_materia = 1;

UPDATE material SET name_material = "Brooms and other clinic products" WHERE ID_materia = 3;

UPDATE material SET name_material = "Mold and shapes" WHERE ID_materia = 2;

