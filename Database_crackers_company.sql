CREATE DATABASE crackers_company;
USE crackers_company;

CREATE TABLE company(
ID_company INT NOT NULL AUTO_INCREMENT,
name_company VARCHAR (50),
address_company VARCHAR(100),
phone_company INT (15),
PRIMARY KEY (ID_company)
);

CREATE TABLE product (
ID_product INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(60),
presentation VARCHAR(60),
product_type VARCHAR(60),
PRIMARY KEY (ID_product)
);

CREATE TABLE distributor (
ID_distributor INT NOT NULL AUTO_INCREMENT,
distributor_name VARCHAR(70),
distributor_zone VARCHAR(100),
ID_product INT(15),
PRIMARY KEY (ID_distributor),
FOREIGN KEY (ID_product) REFERENCES product (ID_product)
);

CREATE TABLE client_ (
ID_CLIENT INT NOT NULL AUTO_INCREMENT,
client_name VARCHAR (60),
Addres_client VARCHAR(60),
Phone_client INT,
PRIMARY KEY (ID_client) 
);

CREATE TABLE purchase_orders (
ID_order INT NOT NULL AUTO_INCREMENT,
ID_CLIENT INT,
ID_distributor INT,
ID_product INT,
date_order DATE,
PRIMARY KEY (ID_order),
FOREIGN KEY (ID_CLIENT) REFERENCES client_ (ID_CLIENT),
FOREIGN KEY (ID_distributor) REFERENCES distributor (ID_distributor),
FOREIGN KEY (ID_product) REFERENCES product (ID_product)
);

CREATE TABLE supplier (
ID_supplier INT NOT NULL AUTO_INCREMENT,
name_supplier VARCHAR (60) NOT NULL,
ID_product INT,
PRIMARY KEY (ID_supplier),
FOREIGN KEY (ID_product) REFERENCES product (ID_product)
);

CREATE TABLE invoice (
ID_invoice INT NOT NULL AUTO_INCREMENT,
ID_product INT,
ID_CLIENT INT,
ID_despatch_note INT,
ID_order INT,
PRIMARY KEY (ID_invoice),
FOREIGN KEY (ID_product) REFERENCES product (ID_product),
FOREIGN KEY (ID_CLIENT) REFERENCES client_ (ID_CLIENT),
FOREIGN KEY (ID_despatch_note) REFERENCES despatch_note (ID_despatch_note),
FOREIGN KEY (ID_order) REFERENCES purchase_orders (ID_order)
);

CREATE TABLE despatch_note (
ID_despatch_note INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (ID_despatch_note)
);

CREATE TABLE bussines_area (
ID_sector INT NOT NULL AUTO_INCREMENT,
sector_name VARCHAR (60),
PRIMARY KEY (ID_sector)
);

CREATE TABLE  raw_materia (
ID_raw_materia INT NOT NULL AUTO_INCREMENT,
name_raw_materia VARCHAR(60),
ID_sector INT,
ID_supplier INT,
PRIMARY KEY (ID_raw_materia),
FOREIGN KEY (ID_sector) REFERENCES bussines_area (ID_sector),
FOREIGN KEY (ID_supplier) REFERENCES supplier (ID_supplier)
);

CREATE TABLE raw_material (
ID_raw_material INT NOT NULL AUTO_INCREMENT,
name_raw_material VARCHAR (60),
ID_product INT,
ID_supplier INT,
PRIMARY KEY (ID_raw_material),
FOREIGN KEY (ID_product) REFERENCES product (ID_product),
FOREIGN KEY (ID_supplier) REFERENCES supplier (ID_supplier)
);

CREATE TABLE employee (
ID_employee INT NOT NULL AUTO_INCREMENT,
employee_name VARCHAR (60),
DNI INT,
ID_sector INT,
PRIMARY KEY (ID_employee),
FOREIGN KEY (ID_sector) REFERENCES bussines_area (ID_sector)
);

CREATE TABLE machine (
ID_MACHINE INT NOT NULL AUTO_INCREMENT,
name_machine VARCHAR(60),
ID_sector INT,
ID_employee INT,
PRIMARY KEY (ID_MACHINE),
FOREIGN KEY (ID_sector) REFERENCES bussines_area (ID_SECTOR),
FOREIGN KEY (ID_employee) REFERENCES employee (ID_employee)
);


