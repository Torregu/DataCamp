------------------------------------------------------------------------------------------------
--
-- Formato fechas;
--
------------------------------------------------------------------------------------------------

SET datestyle = YMD;      

SET search_path TO erp;	
------------------------------------------------------------------------------------------------
--
-- Data tb_cars;
--
------------------------------------------------------------------------------------------------

INSERT INTO erp.tb_cars (cars_registration, cars_model, cars_function,cars_deposit,cars_fuel,cars_date_input,cars_employee,cars_date_registration) VALUES ('3685HDP','MERCEDES-VITO','reparto',60,'gasoil',to_date('22-07-2022','DD-MM-YYYY'),'Antonio García',to_date('04-05-2011','DD-MM-YYYY'));
INSERT INTO erp.tb_cars (cars_registration, cars_model, cars_function,cars_deposit,cars_fuel,cars_date_input,cars_employee,cars_date_registration) VALUES ('7045KDM','SKODA-FABIA','comercial',50,'gasoil',to_date('23-07-2022','DD-MM-YYYY'),'Manuel Rodríguez',to_date('05-10-2017','DD-MM-YYYY'));
INSERT INTO erp.tb_cars (cars_registration, cars_model, cars_function,cars_deposit,cars_fuel,cars_date_input,cars_employee,cars_date_registration) VALUES ('2093GSW','CITROEN-JUMPY','reparto',60,'gasoil',to_date('22-07-2022','DD-MM-YYYY'),'Juan Martínez',to_date('08-01-2010','DD-MM-YYYY'));
INSERT INTO erp.tb_cars (cars_registration, cars_model, cars_function,cars_deposit,cars_fuel,cars_date_input,cars_employee,cars_date_registration) VALUES ('8806KZN','SEAT-IBIZA','comercial',30,'gasolina',to_date('24-07-2022','DD-MM-YYYY'),'Ana Maria Sánchez',to_date('12-08-2019','DD-MM-YYYY'));
INSERT INTO erp.tb_cars (cars_registration, cars_model, cars_function,cars_deposit,cars_fuel,cars_date_input,cars_employee,cars_date_registration) VALUES ('0815GYR','MERCEDES-VITO','reparto',40,'gasoil',to_date('25-07-2022','DD-MM-YYYY'),'José Pérez',to_date('11-09-2010','DD-MM-YYYY'));
INSERT INTO erp.tb_cars (cars_registration, cars_model, cars_function,cars_deposit,cars_fuel,cars_date_input,cars_employee,cars_date_registration) VALUES ('5649JSN','BMW-X3','gerencia',60,'gasolina',to_date('26-07-2022','DD-MM-YYYY'),'Pablo Díaz',to_date('08-09-2016','DD-MM-YYYY'));
INSERT INTO erp.tb_cars (cars_registration, cars_model, cars_function,cars_deposit,cars_fuel,cars_date_input,cars_employee,cars_date_registration) VALUES ('0019GVM','MERCEDES-VITO','reparto',60,'gasoil',to_date('24-07-2022','DD-MM-YYYY'),'Rafael Muñoz',to_date('23-04-2010','DD-MM-YYYY'));
INSERT INTO erp.tb_cars (cars_registration, cars_model, cars_function,cars_deposit,cars_fuel,cars_date_input,cars_employee,cars_date_registration) VALUES ('4273GFK','MERCEDES-CITAN','reparto',60,'gasoil',to_date('24-07-2022','DD-MM-YYYY'),'David Ruiz',to_date('20-06-2008','DD-MM-YYYY'));
INSERT INTO erp.tb_cars (cars_registration, cars_model, cars_function,cars_deposit,cars_fuel,cars_date_input,cars_employee,cars_date_registration) VALUES ('6392KPT','SKODA-FABIA','comercial',30,'gasoil',to_date('25-07-2022','DD-MM-YYYY'),'Carmen Ruiz',to_date('03-10-2018','DD-MM-YYYY'));
INSERT INTO erp.tb_cars (cars_registration, cars_model, cars_function,cars_deposit,cars_fuel,cars_date_input,cars_employee,cars_date_registration) VALUES ('9421GMT','MERCEDES-VITO','reparto',60,'gasoil',to_date('26-07-2022','DD-MM-YYYY'),'Jesus Álvarez',to_date('03-06-2009','DD-MM-YYYY'));

------------------------------------------------------------------------------------------------
--
-- Data tb_gas_station;
--
------------------------------------------------------------------------------------------------

INSERT INTO erp.tb_gas_station (gas_id,gas_name) VALUES ('GS01','Gasolinera Polígono');
INSERT INTO erp.tb_gas_station (gas_id,gas_name) VALUES ('GS02','Gasolinera Norte');
INSERT INTO erp.tb_gas_station (gas_id,gas_name) VALUES ('GS03','Gasolinera Sud');
INSERT INTO erp.tb_gas_station (gas_id,gas_name) VALUES ('GS04','Gasolinera Centro');
INSERT INTO erp.tb_gas_station (gas_id,gas_name) VALUES ('GS05','Gasolinera Estación tren');


------------------------------------------------------------------------------------------------
--
-- Data tb_pump;
--
------------------------------------------------------------------------------------------------

INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (1,NULL,'GS01','GS01');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (2,NULL,'GS02','GS02');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (3,NULL,'GS03','GS03');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (4,NULL,'GS04','GS04');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (5,NULL,'GS05','GS05');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (6,1,'Surtidor Nº1','GS01');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (7,1,'Surtidor Nº2','GS01');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (8,1,'Surtidor Nº3','GS01');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (9,1,'Surtidor Nº4','GS01');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (10,2,'Surtidor Nº1','GS02');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (11,2,'Surtidor Nº2','GS02');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (12,2,'Surtidor Nº3','GS02');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (13,3,'Surtidor Nº1','GS03');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (14,3,'Surtidor Nº2','GS03');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (15,3,'Surtidor Nº3','GS03');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (16,4,'Surtidor Nº1','GS04');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (17,4,'Surtidor Nº2','GS04');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (18,4,'Surtidor Nº3','GS04');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (19,4,'Surtidor Nº4','GS04');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (20,5,'Surtidor Nº1','GS05');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (21,5,'Surtidor Nº2','GS05');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (22,5,'Surtidor Nº3','GS05');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (23,6,'Diesel ','GS01');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (24,6,'Gasolina','GS01');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (25,7,'Diesel ','GS01');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (26,7,'Gasolina','GS01');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (27,8,'Diesel ','GS01');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (28,8,'Gasolina','GS01');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (29,9,'Diesel ','GS01');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (30,9,'Gasolina','GS01');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (31,10,'Diesel ','GS02');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (32,10,'Gasolina','GS02');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (33,11,'Diesel ','GS02');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (34,11,'Gasolina','GS02');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (35,12,'Diesel ','GS02');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (36,12,'Gasolina','GS02');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (37,13,'Diesel ','GS03');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (38,13,'Gasolina','GS03');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (39,14,'Diesel ','GS03');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (40,14,'Gasolina','GS03');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (41,15,'Diesel ','GS03');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (42,15,'Gasolina','GS03');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (43,16,'Diesel ','GS04');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (44,16,'Gasolina','GS04');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (45,17,'Diesel ','GS04');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (46,17,'Gasolina','GS04');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (47,18,'Diesel ','GS04');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (48,18,'Gasolina','GS04');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (49,19,'Diesel ','GS04');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (50,19,'Gasolina','GS04');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (51,20,'Diesel ','GS05');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (52,20,'Gasolina','GS05');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (53,21,'Diesel ','GS05');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (54,21,'Gasolina','GS05');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (55,22,'Diesel ','GS05');
INSERT INTO erp.tb_pump(pm_id,pm_parent_id,pm_descr,gas_id) VALUES (56,22,'Gasolina','GS05');


------------------------------------------------------------------------------------------------
--
-- Data tb_fuel_price;
--
------------------------------------------------------------------------------------------------

INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('01-08-2022','DD-MM-YYY'),'gasoil',1.929);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('02-08-2022','DD-MM-YYY'),'gasoil',1.949);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('03-08-2022','DD-MM-YYY'),'gasoil',1.969);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('04-08-2022','DD-MM-YYY'),'gasoil',1.989);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('05-08-2022','DD-MM-YYY'),'gasoil',2.009);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('06-08-2022','DD-MM-YYY'),'gasoil',2.029);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('07-08-2022','DD-MM-YYY'),'gasoil',1.999);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('08-08-2022','DD-MM-YYY'),'gasoil',1.969);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('09-08-2022','DD-MM-YYY'),'gasoil',1.939);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('10-08-2022','DD-MM-YYY'),'gasoil',1.909);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('11-08-2022','DD-MM-YYY'),'gasoil',1.879);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('12-08-2022','DD-MM-YYY'),'gasoil',1.849);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('13-08-2022','DD-MM-YYY'),'gasoil',1.819);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('14-08-2022','DD-MM-YYY'),'gasoil',1.859);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('15-08-2022','DD-MM-YYY'),'gasoil',1.899);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('16-08-2022','DD-MM-YYY'),'gasoil',1.939);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('17-08-2022','DD-MM-YYY'),'gasoil',1.979);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('18-08-2022','DD-MM-YYY'),'gasoil',2.019);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('19-08-2022','DD-MM-YYY'),'gasoil',2.059);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('20-08-2022','DD-MM-YYY'),'gasoil',2.099);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('21-08-2022','DD-MM-YYY'),'gasoil',2.139);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('22-08-2022','DD-MM-YYY'),'gasoil',2.126);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('23-08-2022','DD-MM-YYY'),'gasoil',2.113);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('24-08-2022','DD-MM-YYY'),'gasoil',2.1);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('25-08-2022','DD-MM-YYY'),'gasoil',2.087);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('26-08-2022','DD-MM-YYY'),'gasoil',2.074);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('27-08-2022','DD-MM-YYY'),'gasoil',2.061);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('28-08-2022','DD-MM-YYY'),'gasoil',2.048);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('29-08-2022','DD-MM-YYY'),'gasoil',2.035);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('30-08-2022','DD-MM-YYY'),'gasoil',2.022);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('31-08-2022','DD-MM-YYY'),'gasoil',2.009);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('01-09-2022','DD-MM-YYY'),'gasoil',1.996);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('02-09-2022','DD-MM-YYY'),'gasoil',1.983);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('03-09-2022','DD-MM-YYY'),'gasoil',1.97);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('04-09-2022','DD-MM-YYY'),'gasoil',1.957);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('05-09-2022','DD-MM-YYY'),'gasoil',1.944);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('06-09-2022','DD-MM-YYY'),'gasoil',1.931);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('07-09-2022','DD-MM-YYY'),'gasoil',1.918);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('08-09-2022','DD-MM-YYY'),'gasoil',1.905);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('09-09-2022','DD-MM-YYY'),'gasoil',1.926);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('10-09-2022','DD-MM-YYY'),'gasoil',1.947);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('11-09-2022','DD-MM-YYY'),'gasoil',1.968);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('12-09-2022','DD-MM-YYY'),'gasoil',1.989);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('13-09-2022','DD-MM-YYY'),'gasoil',2.01);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('14-09-2022','DD-MM-YYY'),'gasoil',2.031);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('01-08-2022','DD-MM-YYY'),'gasolina',2.029);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('02-08-2022','DD-MM-YYY'),'gasolina',2.049);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('03-08-2022','DD-MM-YYY'),'gasolina',2.069);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('04-08-2022','DD-MM-YYY'),'gasolina',2.089);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('05-08-2022','DD-MM-YYY'),'gasolina',2.109);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('06-08-2022','DD-MM-YYY'),'gasolina',2.129);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('07-08-2022','DD-MM-YYY'),'gasolina',2.099);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('08-08-2022','DD-MM-YYY'),'gasolina',2.069);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('09-08-2022','DD-MM-YYY'),'gasolina',2.039);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('10-08-2022','DD-MM-YYY'),'gasolina',2.009);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('11-08-2022','DD-MM-YYY'),'gasolina',1.979);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('12-08-2022','DD-MM-YYY'),'gasolina',1.949);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('13-08-2022','DD-MM-YYY'),'gasolina',1.919);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('14-08-2022','DD-MM-YYY'),'gasolina',1.959);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('15-08-2022','DD-MM-YYY'),'gasolina',1.999);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('16-08-2022','DD-MM-YYY'),'gasolina',2.039);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('17-08-2022','DD-MM-YYY'),'gasolina',2.079);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('18-08-2022','DD-MM-YYY'),'gasolina',2.119);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('19-08-2022','DD-MM-YYY'),'gasolina',2.159);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('20-08-2022','DD-MM-YYY'),'gasolina',2.199);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('21-08-2022','DD-MM-YYY'),'gasolina',2.239);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('22-08-2022','DD-MM-YYY'),'gasolina',2.226);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('23-08-2022','DD-MM-YYY'),'gasolina',2.213);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('24-08-2022','DD-MM-YYY'),'gasolina',2.2);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('25-08-2022','DD-MM-YYY'),'gasolina',2.187);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('26-08-2022','DD-MM-YYY'),'gasolina',2.174);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('27-08-2022','DD-MM-YYY'),'gasolina',2.161);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('28-08-2022','DD-MM-YYY'),'gasolina',2.148);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('29-08-2022','DD-MM-YYY'),'gasolina',2.135);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('30-08-2022','DD-MM-YYY'),'gasolina',2.122);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('31-08-2022','DD-MM-YYY'),'gasolina',2.109);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('01-09-2022','DD-MM-YYY'),'gasolina',2.096);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('02-09-2022','DD-MM-YYY'),'gasolina',2.083);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('03-09-2022','DD-MM-YYY'),'gasolina',2.07);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('04-09-2022','DD-MM-YYY'),'gasolina',2.057);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('05-09-2022','DD-MM-YYY'),'gasolina',2.044);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('06-09-2022','DD-MM-YYY'),'gasolina',2.031);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('07-09-2022','DD-MM-YYY'),'gasolina',2.018);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('08-09-2022','DD-MM-YYY'),'gasolina',2.005);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('09-09-2022','DD-MM-YYY'),'gasolina',2.026);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('10-09-2022','DD-MM-YYY'),'gasolina',2.047);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('11-09-2022','DD-MM-YYY'),'gasolina',2.068);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('12-09-2022','DD-MM-YYY'),'gasolina',2.089);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('13-09-2022','DD-MM-YYY'),'gasolina',2.11);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('14-09-2022','DD-MM-YYY'),'gasolina',2.131);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('15-09-2022','DD-MM-YYY'),'gasolina',2.009);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('16-09-2022','DD-MM-YYY'),'gasolina',1.979);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('17-09-2022','DD-MM-YYY'),'gasolina',1.949);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('18-09-2022','DD-MM-YYY'),'gasolina',1.919);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('19-09-2022','DD-MM-YYY'),'gasolina',1.959);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('20-09-2022','DD-MM-YYY'),'gasolina',1.999);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('21-09-2022','DD-MM-YYY'),'gasolina',2.001);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('22-09-2022','DD-MM-YYY'),'gasolina',2.001);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('23-09-2022','DD-MM-YYY'),'gasolina',1.999);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('24-09-2022','DD-MM-YYY'),'gasolina',1.959);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('25-09-2022','DD-MM-YYY'),'gasolina',1.959);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('26-09-2022','DD-MM-YYY'),'gasolina',1.979);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('27-09-2022','DD-MM-YYY'),'gasolina',1.949);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('28-09-2022','DD-MM-YYY'),'gasolina',1.919);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('29-09-2022','DD-MM-YYY'),'gasolina',1.919);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('30-09-2022','DD-MM-YYY'),'gasolina',1.959);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('15-09-2022','DD-MM-YYY'),'gasoil',1.996);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('16-09-2022','DD-MM-YYY'),'gasoil',1.983);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('17-09-2022','DD-MM-YYY'),'gasoil',1.97);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('18-09-2022','DD-MM-YYY'),'gasoil',1.957);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('19-09-2022','DD-MM-YYY'),'gasoil',1.996);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('20-09-2022','DD-MM-YYY'),'gasoil',1.983);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('21-09-2022','DD-MM-YYY'),'gasoil',1.97);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('22-09-2022','DD-MM-YYY'),'gasoil',1.957);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('23-09-2022','DD-MM-YYY'),'gasoil',1.944);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('24-09-2022','DD-MM-YYY'),'gasoil',1.931);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('25-09-2022','DD-MM-YYY'),'gasoil',1.918);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('26-09-2022','DD-MM-YYY'),'gasoil',1.905);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('27-09-2022','DD-MM-YYY'),'gasoil',1.926);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('28-09-2022','DD-MM-YYY'),'gasoil',1.947);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('29-09-2022','DD-MM-YYY'),'gasoil',1.968);
INSERT INTO erp.tb_fuel_price (fp_date,fp_fuel,fp_import) VALUES (to_date('30-09-2022','DD-MM-YYY'),'gasoil',1.989);

------------------------------------------------------------------------------------------------
--
-- Data tb_refueling;
--
------------------------------------------------------------------------------------------------

INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','0019GVM',47,to_date('01-08-2022','DD-MM-YYYY'),23,234561);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','0019GVM',33,to_date('26-08-2022','DD-MM-YYYY'),23,235411);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','0019GVM',55,to_date('05-09-2022','DD-MM-YYYY'),25,236061);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','0019GVM',34,to_date('10-09-2022','DD-MM-YYYY'),27,236794);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','0019GVM',51,to_date('06-08-2022','DD-MM-YYYY'),31,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','0019GVM',45,to_date('31-08-2022','DD-MM-YYYY'),33,238044);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','0019GVM',53,to_date('15-09-2022','DD-MM-YYYY'),33,238794);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS03','0019GVM',39,to_date('11-08-2022','DD-MM-YYYY'),37,239711);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS03','0019GVM',43,to_date('20-09-2022','DD-MM-YYYY'),41,240277);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS04','0019GVM',44,to_date('16-08-2022','DD-MM-YYYY'),43,241161);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','0019GVM',42,to_date('21-08-2022','DD-MM-YYYY'),51,241877);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','0815GYR',32,to_date('08-08-2022','DD-MM-YYYY'),25,125300);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','0815GYR',32,to_date('14-08-2022','DD-MM-YYYY'),29,125816);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','0815GYR',31,to_date('18-08-2022','DD-MM-YYYY'),23,126350);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','0815GYR',35,to_date('02-09-2022','DD-MM-YYYY'),25,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','0815GYR',30,to_date('11-08-2022','DD-MM-YYYY'),35,127383);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','0815GYR',30,to_date('21-08-2022','DD-MM-YYYY'),35,127900);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS03','0815GYR',28,to_date('24-08-2022','DD-MM-YYYY'),37,128400);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS04','0815GYR',33,to_date('02-08-2022','DD-MM-YYYY'),45,128866);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS04','0815GYR',27,to_date('27-08-2022','DD-MM-YYYY'),47,129316);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','0815GYR',31,to_date('05-08-2022','DD-MM-YYYY'),53,129883);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','0815GYR',34,to_date('30-08-2022','DD-MM-YYYY'),55,130466);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','2093GSW',43,to_date('06-08-2022','DD-MM-YYYY'),27,201547);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','2093GSW',46,to_date('09-08-2022','DD-MM-YYYY'),29,202263);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','2093GSW',30,to_date('24-08-2022','DD-MM-YYYY'),23,203030);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','2093GSW',20,to_date('30-08-2022','DD-MM-YYYY'),25,203730);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','2093GSW',22,to_date('02-09-2022','DD-MM-YYYY'),25,204297);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','2093GSW',60,to_date('03-08-2022','DD-MM-YYYY'),35,204897);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','2093GSW',42,to_date('12-08-2022','DD-MM-YYYY'),31,205580);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','2093GSW',42,to_date('27-08-2022','DD-MM-YYYY'),31,206080);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','2093GSW',34,to_date('05-09-2022','DD-MM-YYYY'),33,206780);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS03','2093GSW',34,to_date('15-08-2022','DD-MM-YYYY'),41,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS03','2093GSW',35,to_date('08-09-2022','DD-MM-YYYY'),41,207480);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS04','2093GSW',36,to_date('18-08-2022','DD-MM-YYYY'),49,208047);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS04','2093GSW',36,to_date('11-09-2022','DD-MM-YYYY'),43,208630);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','2093GSW',41,to_date('21-08-2022','DD-MM-YYYY'),51,209230);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','2093GSW',33,to_date('14-09-2022','DD-MM-YYYY'),53,209780);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','3685HDP',60,to_date('10-08-2022','DD-MM-YYYY'),27,301442);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','3685HDP',34,to_date('20-08-2022','DD-MM-YYYY'),27,301992);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','3685HDP',31,to_date('25-08-2022','DD-MM-YYYY'),29,302558);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','3685HDP',43,to_date('19-09-2022','DD-MM-YYYY'),29,303075);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','3685HDP',33,to_date('30-09-2022','DD-MM-YYYY'),27,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','3685HDP',33,to_date('15-08-2022','DD-MM-YYYY'),33,304275);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','3685HDP',30,to_date('30-08-2022','DD-MM-YYYY'),35,304825);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','3685HDP',20,to_date('25-09-2022','DD-MM-YYYY'),35,305392);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS03','3685HDP',42,to_date('04-09-2022','DD-MM-YYYY'),37,306108);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS04','3685HDP',33,to_date('09-09-2022','DD-MM-YYYY'),43,306442);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','3685HDP',34,to_date('14-09-2022','DD-MM-YYYY'),55,306992);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','4273GFK',40,to_date('05-08-2022','DD-MM-YYYY'),23,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','4273GFK',39,to_date('12-08-2022','DD-MM-YYYY'),23,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','4273GFK',25,to_date('15-08-2022','DD-MM-YYYY'),25,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','4273GFK',36,to_date('01-09-2022','DD-MM-YYYY'),27,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','4273GFK',35,to_date('09-08-2022','DD-MM-YYYY'),33,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','4273GFK',43,to_date('18-08-2022','DD-MM-YYYY'),35,199523);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','4273GFK',37,to_date('04-09-2022','DD-MM-YYYY'),35,200106);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS03','4273GFK',42,to_date('21-08-2022','DD-MM-YYYY'),41,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS04','4273GFK',32,to_date('26-08-2022','DD-MM-YYYY'),47,201173);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','4273GFK',35,to_date('29-08-2022','DD-MM-YYYY'),53,201889);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','5649JSN',42,to_date('11-08-2022','DD-MM-YYYY'),30,202589);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','5649JSN',33,to_date('14-08-2022','DD-MM-YYYY'),26,203123);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','5649JSN',41,to_date('29-08-2022','DD-MM-YYYY'),26,203706);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','5649JSN',38,to_date('04-09-2022','DD-MM-YYYY'),28,204306);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','5649JSN',33,to_date('07-09-2022','DD-MM-YYYY'),24,204923);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','5649JSN',35,to_date('17-08-2022','DD-MM-YYYY'),34,210226);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','5649JSN',43,to_date('01-09-2022','DD-MM-YYYY'),32,210776);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','5649JSN',31,to_date('10-09-2022','DD-MM-YYYY'),32,211359);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS03','5649JSN',36,to_date('20-08-2022','DD-MM-YYYY'),42,211959);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS04','5649JSN',38,to_date('23-08-2022','DD-MM-YYYY'),48,212592);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','5649JSN',39,to_date('26-08-2022','DD-MM-YYYY'),52,213242);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','6392KPT',20,to_date('13-08-2022','DD-MM-YYYY'),23,213926);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','6392KPT',16,to_date('19-08-2022','DD-MM-YYYY'),23,214642);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','6392KPT',22,to_date('24-08-2022','DD-MM-YYYY'),25,215276);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','6392KPT',17,to_date('16-08-2022','DD-MM-YYYY'),31,215826);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','6392KPT',21,to_date('27-08-2022','DD-MM-YYYY'),35,216342);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS03','6392KPT',30,to_date('04-08-2022','DD-MM-YYYY'),41,89550);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS03','6392KPT',19,to_date('30-08-2022','DD-MM-YYYY'),37,89900);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS04','6392KPT',21,to_date('07-08-2022','DD-MM-YYYY'),49,90200);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS04','6392KPT',18,to_date('02-09-2022','DD-MM-YYYY'),43,90533);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','6392KPT',18,to_date('10-08-2022','DD-MM-YYYY'),51,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','6392KPT',22,to_date('05-09-2022','DD-MM-YYYY'),53,91083);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','7045KDM',33,to_date('13-08-2022','DD-MM-YYYY'),29,91450);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','7045KDM',36,to_date('02-09-2022','DD-MM-YYYY'),25,91800);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','7045KDM',38,to_date('12-09-2022','DD-MM-YYYY'),23,92116);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','7045KDM',31,to_date('23-08-2022','DD-MM-YYYY'),35,92416);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','7045KDM',36,to_date('22-09-2022','DD-MM-YYYY'),33,92783);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','8806KZN',28,to_date('23-08-2022','DD-MM-YYYY'),24,72500);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','8806KZN',27,to_date('29-08-2022','DD-MM-YYYY'),28,73016);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','8806KZN',22,to_date('01-09-2022','DD-MM-YYYY'),30,73616);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','8806KZN',25,to_date('16-09-2022','DD-MM-YYYY'),24,74250);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','8806KZN',29,to_date('22-09-2022','DD-MM-YYYY'),28,74850);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','8806KZN',23,to_date('26-08-2022','DD-MM-YYYY'),34,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','8806KZN',28,to_date('04-09-2022','DD-MM-YYYY'),34,280157);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','8806KZN',28,to_date('19-09-2022','DD-MM-YYYY'),32,280540);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS03','8806KZN',27,to_date('07-09-2022','DD-MM-YYYY'),38,280990);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS04','8806KZN',26,to_date('10-09-2022','DD-MM-YYYY'),50,281357);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','8806KZN',30,to_date('20-08-2022','DD-MM-YYYY'),54,281823);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','8806KZN',22,to_date('13-09-2022','DD-MM-YYYY'),56,282273);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','9421GMT',44,to_date('01-08-2022','DD-MM-YYYY'),29,282707);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','9421GMT',42,to_date('14-08-2022','DD-MM-YYYY'),25,283073);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','9421GMT',39,to_date('20-08-2022','DD-MM-YYYY'),23,283490);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','9421GMT',38,to_date('23-08-2022','DD-MM-YYYY'),23,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','9421GMT',33,to_date('07-09-2022','DD-MM-YYYY'),25,284440);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS01','9421GMT',40,to_date('13-09-2022','DD-MM-YYYY'),25,305216);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','9421GMT',41,to_date('02-08-2022','DD-MM-YYYY'),35,305899);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','9421GMT',41,to_date('17-08-2022','DD-MM-YYYY'),35,306599);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','9421GMT',33,to_date('26-08-2022','DD-MM-YYYY'),33,307282);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS02','9421GMT',39,to_date('10-09-2022','DD-MM-YYYY'),33,307932);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS03','9421GMT',42,to_date('05-08-2022','DD-MM-YYYY'),37,308632);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS03','9421GMT',31,to_date('29-08-2022','DD-MM-YYYY'),41,309316);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS04','9421GMT',41,to_date('08-08-2022','DD-MM-YYYY'),47,309966);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS04','9421GMT',35,to_date('01-09-2022','DD-MM-YYYY'),45,NULL);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','9421GMT',39,to_date('11-08-2022','DD-MM-YYYY'),53,311149);
INSERT INTO erp.tb_refueling (gas_id,cars_registration,rf_liters,rf_date,pm_id,rf_km) VALUES ('GS05','9421GMT',41,to_date('04-09-2022','DD-MM-YYYY'),55,311666);

------------------------------------------------------------------------------------------------
--
-- Data tb_invoice;
--
------------------------------------------------------------------------------------------------

INSERT INTO erp.tb_invoice(inv_id,inv_num,inv_date_start,inv_date_end,inv_amount,inv_liters_total) VALUES (1,'1001',to_date('01/08/2022','DD-MM-YYYY'),to_date('31/08/2022','DD-MM-YYYY'),5099.52,2533);
INSERT INTO erp.tb_invoice(inv_id,inv_num,inv_date_start,inv_date_end,inv_amount,inv_liters_total) VALUES (2,'1002',to_date('01/09/2022','DD-MM-YYYY'),to_date('30/09/2022','DD-MM-YYYY'),3847.98,1782);
INSERT INTO erp.tb_invoice(inv_id,inv_num,inv_date_start,inv_date_end,inv_amount,inv_liters_total) VALUES (3,'1003',to_date('01/10/2022','DD-MM-YYYY'),to_date('31/10/2022','DD-MM-YYYY'),5498.16,2721);

------------------------------------------------------------------------------------------------
--
-- Data tb_lines_invoice;
--
------------------------------------------------------------------------------------------------

INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,1,'0019GVM','GS01 ',80,159.11);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,2,'0019GVM','GS02 ',96,193.88);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,3,'0019GVM','GS03 ',39,73.28);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,4,'0019GVM','GS04 ',44,85.32);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,5,'0019GVM','GS05 ',42,89.84);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,6,'0815GYR','GS01 ',95,185.09);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,7,'0815GYR','GS02 ',60,120.54);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,8,'0815GYR','GS03 ',28,58.80);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,9,'0815GYR','GS04 ',60,119.96);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,10,'0815GYR','GS05 ',65,131.03);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,11,'2093GSW','GS01 ',139,279.88);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,12,'2093GSW','GS02 ',144,282.36);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,13,'2093GSW','GS03 ',34,64.57);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,14,'2093GSW','GS04 ',36,72.68);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,15,'2093GSW','GS05 ',41,87.70);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,16,'3685HDP','GS01 ',125,250.60);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,17,'3685HDP','GS02 ',63,123.33);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,18,'4273GFK','GS01 ',104,199.95);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,19,'4273GFK','GS02 ',78,154.68);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,20,'4273GFK','GS03 ',42,89.84);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,21,'4273GFK','GS04 ',32,66.37);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,22,'4273GFK','GS05 ',35,71.23);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,23,'5649JSN','GS01 ',116,235.30);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,24,'5649JSN','GS02 ',35,72.77);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,25,'5649JSN','GS03 ',36,79.16);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,26,'5649JSN','GS04 ',38,84.09);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,27,'5649JSN','GS05 ',39,84.79);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,28,'6392KPT','GS01 ',58,115.52);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,29,'6392KPT','GS02 ',38,76.24);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,30,'6392KPT','GS03 ',49,98.09);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,31,'6392KPT','GS04 ',21,41.98);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,32,'6392KPT','GS05 ',18,34.36);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,33,'7045KDM','GS01 ',33,60.03);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,34,'7045KDM','GS02 ',31,65.50);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,35,'8806KZN','GS01 ',55,119.61);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,36,'8806KZN','GS02 ',23,50.00);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,37,'8806KZN','GS05 ',30,65.97);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,38,'9421GMT','GS01 ',163,325.11);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,39,'9421GMT','GS02 ',115,229.49);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,40,'9421GMT','GS03 ',73,147.46);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,41,'9421GMT','GS04 ',41,80.73);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(1,42,'9421GMT','GS05 ',39,73.28);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,1,'0019GVM','GS01 ',80,159.11);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,2,'0019GVM','GS02 ',96,193.88);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,3,'0019GVM','GS03 ',39,73.28);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,4,'0019GVM','GS04 ',44,85.32);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,5,'0019GVM','GS05 ',42,89.84);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,6,'0815GYR','GS01 ',95,185.09);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,7,'0815GYR','GS02 ',60,120.54);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,8,'0815GYR','GS03 ',28,58.80);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,9,'0815GYR','GS04 ',60,119.96);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,10,'0815GYR','GS05 ',65,131.03);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,11,'2093GSW','GS01 ',139,279.88);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,12,'2093GSW','GS02 ',144,282.36);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,13,'2093GSW','GS03 ',34,64.57);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,14,'2093GSW','GS04 ',36,72.68);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,15,'2093GSW','GS05 ',41,87.70);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,16,'3685HDP','GS01 ',125,250.60);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,17,'3685HDP','GS02 ',63,123.33);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,18,'4273GFK','GS01 ',104,199.95);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,19,'4273GFK','GS02 ',78,154.68);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,20,'4273GFK','GS03 ',42,89.84);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,21,'4273GFK','GS04 ',32,66.37);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,22,'4273GFK','GS05 ',35,71.23);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,23,'5649JSN','GS01 ',116,235.30);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,24,'5649JSN','GS02 ',35,72.77);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,25,'5649JSN','GS03 ',36,79.16);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,26,'5649JSN','GS04 ',38,84.09);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,27,'5649JSN','GS05 ',39,84.79);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,28,'6392KPT','GS01 ',58,115.52);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,29,'6392KPT','GS02 ',38,76.24);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,30,'6392KPT','GS03 ',49,98.09);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(2,31,'6392KPT','GS04 ',21,41.98);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,1,'0019GVM','GS01 ',80,159.11);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,2,'0019GVM','GS02 ',96,193.88);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,3,'0019GVM','GS03 ',39,73.28);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,4,'0019GVM','GS04 ',44,85.32);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,5,'0019GVM','GS05 ',42,89.84);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,6,'0815GYR','GS01 ',190,370.18);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,7,'0815GYR','GS02 ',120,241.08);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,8,'0815GYR','GS03 ',56,117.6);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,9,'0815GYR','GS04 ',120,239.92);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,10,'0815GYR','GS05 ',130,262.06);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,11,'2093GSW','GS01 ',139,279.88);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,12,'2093GSW','GS02 ',144,282.36);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,13,'2093GSW','GS03 ',34,64.57);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,14,'2093GSW','GS04 ',36,72.68);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,15,'2093GSW','GS05 ',41,87.70);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,16,'3685HDP','GS01 ',125,250.60);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,17,'3685HDP','GS02 ',63,123.33);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,18,'4273GFK','GS01 ',104,199.95);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,19,'4273GFK','GS02 ',156,309.36);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,20,'4273GFK','GS03 ',84,179.68);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,21,'4273GFK','GS04 ',64,132.74);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,22,'4273GFK','GS05 ',70,142.46);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,23,'5649JSN','GS01 ',116,235.30);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,24,'5649JSN','GS02 ',70,145.54);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,25,'5649JSN','GS03 ',72,158.32);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,26,'5649JSN','GS04 ',76,168.18);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,27,'5649JSN','GS05 ',78,169.58);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,28,'6392KPT','GS01 ',116,231.04);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,29,'6392KPT','GS02 ',76,152.48);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,30,'6392KPT','GS03 ',98,196.18);
INSERT INTO erp.tb_lines_invoice(inv_id,linv_id,cars_registration,gas_id,linv_liters,linv_amount) VALUES(3,31,'6392KPT','GS04 ',42,83.96);