USE Crackers_company;

SELECT * FROM despatch_note;

ALTER TABLE company ADD ID_product INT, ADD FOREIGN KEY (ID_product) REFERENCES product (ID_product);

ALTER TABLE despatch_note ADD ID_CLIENT INT, ADD FOREIGN KEY (ID_CLIENT) REFERENCES client_ (ID_CLIENT);

ALTER TABLE despatch_note ADD ID_product INT, ADD FOREIGN KEY (ID_product) REFERENCES product (ID_product);

ALTER TABLE despatch_note ADD despatch_date DATE;

ALTER TABLE despatch_note ADD ID_employee INT, ADD FOREIGN KEY (ID_employee) REFERENCES employee (ID_employee); 

ALTER TABLE invoice ADD invoice_date DATE; 

ALTER TABLE company ADD cuit INT NOT NULL UNIQUE;

