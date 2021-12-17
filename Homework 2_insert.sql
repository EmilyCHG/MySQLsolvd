Use crackers_company;

INSERT INTO company 
VALUES (1, "Crackers ", "Plaza 873", 110303456);

INSERT INTO company (cuit)
VALUES (30-71523625-6);

INSERT INTO product 
VALUES (1, "Oreo", "100g", "chocolate cookie"),
	   (2, "Ritz", "100g", "salty cracker"),
	   (3, "Merengada", "200g", "filed cookie");

INSERT INTO distributor 
VALUES (1, "Luis", "East", 1),
       (2, "West Distributions", "west", 2),
       (3, "FarSouth Distributions", "south", 3);
	
INSERT INTO client_
VALUES (1, "Pedro", "Callao 1258", 115566887),
       (2, "Maria", "Santa fe 13056", 35469872),
       (3, "Carla", "Arenales 056", 27569872);

Select * from client_;


INSERT INTO purchase_orders
VALUES (1, 1, 1, 1, "2021-12-14" ),
	   (2,2,2,2, "2021-12-14"),
	   (3,3,3,3, "2021-12-14");

INSERT INTO supplier
VALUES (1, "Pablo", 1), 
       (2,"Industrial Scales", 1),
       (3,"Areco Mill", 2);


INSERT INTO despatch_note
VALUES (1),
       (2),
       (3);


INSERT INTO invoice 
VALUES (1, 1, 1, 1, 1),
       (2, 2, 2, 2, 2),
       (3, 3, 3, 3, 3);

INSERT INTO bussines_area
VALUES (1, "Kneading"),
       (2, "Wrapping"),
       (3, "Dispatch"),
       (4, "Lamination"),
       (5, "Ovens");

INSERT INTO raw_materia3
VALUES (1, "Flour", 1, 1),
       (2, "Salt", 2, 2), 
	   (3, "Sugar", 2, 2);

INSERT INTO material
VALUES (1, "Scale", 1, 2),
       (2, "Mold", 4, 1), 
       (3, "Brooms", 1, 1);

INSERT INTO employee
VALUES (1, "Charly", 45871245, 1),
       (2, "Dafne", 45981245, 3),
       (3, "Pedro", 98547712, 2), 
       (4, "Claudia", 474189712, 5);

INSERT INTO machine
VALUES (1, "Wrapper", 2, 1),
       (2, "Clark Machine", 3, 2),
       (3, "Oven",5 , 4);



