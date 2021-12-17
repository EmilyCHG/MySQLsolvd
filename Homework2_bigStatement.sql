USE Crackers_company;

  
SELECT * FROM company;
      
SELECT * FROM company C JOIN product P ON C.ID_company = P.ID_product
						JOIN bussines_area B ON C.ID_company = B.ID_sector
						JOIN distributor D ON C.ID_company = D.ID_distributor
                        JOIN client_ CL ON C.ID_company = CL.ID_CLIENT
                        JOIN purchase_orders PU ON C.ID_company = PU.ID_order
                        JOIN supplier S ON C.ID_company = S.ID_supplier
                        JOIN invoice I ON C.ID_company = I.ID_invoice
                        JOIN despatch_note DES ON C.ID_company = DES.ID_despatch_note
                        JOIN raw_material R ON C.ID_company  = R.ID_raw_material
                        JOIN employee E ON C.ID_company = E.ID_employee
                        JOIN machine M ON C.ID_company = M.ID_MACHINE;