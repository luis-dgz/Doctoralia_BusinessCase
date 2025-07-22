/* BI Analyst SQL Business Case*/
/* Please run the following queries before answering to the queations below.
This step is necessary to complete the business case*/

#database creation
create database BUSINESS_CASE;
USE BUSINESS_CASE;

#Table Creation
CREATE TABLE BUSINESS_CASE.PRODUCT (
    product_id VARCHAR(4) PRIMARY KEY not null,
    product_name VARCHAR(100) not null
);

CREATE TABLE BUSINESS_CASE.PRICE (
    product_id VARCHAR(100) PRIMARY KEY,
    price_standard INT NOT NULL,
    price_promo INT NOT NULL,
    country VARCHAR(100) not null,
    country_code INT
);

CREATE TABLE BUSINESS_CASE.CLIENTS (
    client_id VARCHAR(100) PRIMARY KEY,
    first_name varchar(100),
    last_name varchar(100),
    city varchar(100),
    country varchar (100)
);

CREATE TABLE BUSINESS_CASE.INVOICES (
    invoice_id int,
    inv_date date,
    client_id varchar(100),
    product_id varchar(4),
    quantity int,
    amount_eur int,
    country_code int
);
#INPUT DATA IN TABLE
INSERT INTO BUSINESS_CASE.PRODUCT (PRODUCT_ID,PRODUCT_NAME)
VALUES( 'P1','producto_1'),('P2','producto_2'),('P3','producto_3'),('P4','producto_4'),('P5','producto_5'),('P6','producto_6');

INSERT INTO BUSINESS_CASE.INVOICES (invoice_id, inv_date, client_id, product_id, quantity, amount_eur, country_code)
VALUES ('1','2021/12/01','C4','P3','1','160','30'),
('1','2021/12/01','C4','P5','2','1200','30'),
('2','2021/12/01','C17','P1','2','160','10'),
('3','2021/12/02','C16','P1','1','100','10'),
('4','2021/12/03','C6','P4','3','1050','30'),
('5','2021/12/03','C7','P3','1','160','30'),
('5','2021/12/03','C7','P4','2','700','30'),
('5','2021/12/03','C7','P5','3','1500','30'),
('6','2021/12/03','C15','P2','1','150','10'),
('7','2021/12/04','C13','P4','1','280','30'),
('8','2021/12/04','C16','P6','1','650','10'),
('9','2021/12/05','C18','P3','1','200','30'),
('9','2021/12/05','C18','P4','1','350','30'),
('9','2021/12/05','C18','P5','1','600','30'),
('10','2021/12/06','C9','P1','2','160','10'),
('11','2021/12/07','C12','P4','2','560','30'),
('12','2021/12/10','C12','P4','1','350','30'),
('13','2021/12/11','C4','P5','1','600','30'),
('14','2021/12/15','C19','P2','3','360','10'),
('14','2021/12/15','C19','P6','1','650','10'),
('15','2021/12/17','C2','P6','1','520','10'),
('16','2021/12/18','C8','P3','1','200','30'),
('16','2021/12/18','C8','P4','1','280','30'),
('17','2021/12/18','C17','P1','4','320','10'),
('18','2021/12/18','C20','P1','1','100','10'),
('19','2021/12/21','C18','P5','3','1800','30'),
('19','2021/12/21','C18','P3','2','400','30'),
('20','2021/12/22','C20','P2','1','120','10'),
('21','2021/12/23','C3','P3','3','600','30'),
('21','2021/12/23','C3','P4','4','1400','30'),
('21','2021/12/23','C3','P5','5','3000','30'),
('22','2021/12/23','C11','P3','1','160','30'),
('23','2021/12/26','C11','P4','1','280','30'),
('24','2021/12/26','C1','P4','5','1400','30'),
('25','2021/12/28','C10','P5','3','1500','30'),
('25','2021/12/28','C10','P3','1','160','30'),
('25','2021/12/28','C10','P4','1','280','30'),
('26','2021/12/28','C5','P1','2','200','10'),
('27','2021/12/29','C5','P2','3','360','10'),
('28','2021/12/29','C1','P4','1','350','30'),
('28','2021/12/29','C1','P3','1','200','30'),
('29','2021/12/29','C17','P6','3','1950','10'),
('30','2021/12/30','C10','P4','1','280','30'),
('31','2021/12/31','C9','P1','3','300','10'),
('31','2021/12/31','C9','P2','2','240','10'),
('31','2021/12/31','C9','P6','1','650','10'),
('32','2021/12/31','C2','P6','1','520','10'),
('33','2021/12/31','C15','P1','2','200','10'),
('34','2022/01/01','C17','P6','1','650','10'),
('35','2022/01/01','C1','P4','1','350','30');
 
INSERT INTO BUSINESS_CASE.CLIENTS (client_id,first_name,last_name,city,country)
VALUES('C1','juan','perez','Guadalajara','Mexico'),
('C2','maria','lozano','Medellin','Colombia'),
('C3','ana','espinoza','Torreon','Mexico'),
('C4','fernando','galvan','Ciudad de Mexico','Mexico'),
('C5','mariana','gutierrez','Cartagena','Colombia'),
('C6','eduardo','alvarez','Ciudad de Mexico ','Mexico'),
('C7','juan','garcia','Puebla ','Mexico'),
('C8','edgar','hernandez','Monterrey','Mexico'),
('C9','karina','juarez','Medellin','Colombia'),
('C10','hugo','dominguez','Queretaro','Mexico'),
('C11','salvador','cervantes','Queretaro','Mexico'),
('C12','arturo','chavez','Guadalajara','Mexico'),
('C13','rodrigo','juarez','Monterrey','Mexico'),
('C14','rene','sandoval','Ciudad de Mexico ','Mexico'),
('C15','maite','martinez','Cartagena','Colombia'),
('C16','guadalupe','torres','Bogota','Colombia'),
('C17','alejandro','perez','Medellin','Colombia'),
('C18','jorge','reyes','Puebla ','Mexico'),
('C19','mariana','gutierrez','Bogota','Colombia'),
('C20','marina','rodriguez','Bogota','Colombia');

INSERT INTO BUSINESS_CASE.PRICE (product_id, price_standard, price_promo, country,country_code)
VALUES ('P1','100','80','Colombia','10'),
('P2','150','120','Colombia','10'),
('P3','200','160','Mexico','30'),
('P4','350','280','Mexico','30'),
('P5','600','500','Mexico','30'),
('P6','650','520','Colombia','10');

#TEST
#1. Seleccione todos los registros de la tabla PRODUCT
SELECT * FROM PRODUCT;

#2.Seleccione todas las ventas del primero de Diciembre 2021
SELECT *
FROM BUSINESS_CASE.INVOICES
WHERE inv_date = '2021-12-01';

#3 Seleccione todos los clientes que viven en Mexico
SELECT *
FROM BUSINESS_CASE.CLIENTS
WHERE country = 'Mexico';						

#4 Seleccione todos los productos que se vendieron en la factura 25
SELECT *
FROM BUSINESS_CASE.INVOICES
WHERE invoice_id = 25;

#5 ¿Cuantos productos diferentes se venden en Colombia?
SELECT COUNT(DISTINCT product_id) AS productos_diferentes
FROM BUSINESS_CASE.PRICE
WHERE country = 'Colombia';


#6 Seleccione todos los clientes que viven en Cartagena
SELECT *
FROM BUSINESS_CASE.CLIENTS
WHERE city = 'Cartagena';	

#7 ¿Cuantos clientes viven en la ciudad Guadalajara?
SELECT COUNT(*) AS total_clientes_guadalajara
FROM BUSINESS_CASE.CLIENTS
WHERE city = 'Guadalajara';

#8 ¿Cuál fue el monto total facturado en Mexico en Diciembre 2021?
SELECT SUM(amount_eur) AS total_facturado_mexico_dic2021
FROM BUSINESS_CASE.INVOICES
WHERE country_code = 30
    AND inv_date BETWEEN '2021-12-01' AND '2021-12-31';

#9 ¿Cuantos productos "producto_1" se vendieron en Colombia desde el primero hasta el 15 de diciembre 2021?
SELECT SUM(i.quantity) AS total_producto_1_colombia
FROM BUSINESS_CASE.INVOICES i
JOIN BUSINESS_CASE.PRODUCT p ON i.product_id = p.product_id
WHERE p.product_name = 'producto_1'
    AND i.country_code = 10
    AND i.inv_date BETWEEN '2021-12-01' AND '2021-12-15';
        
#10 ¿Cuántas veces comprò el cliente C10 en México?
SELECT COUNT(DISTINCT i.invoice_id) AS compras_cliente_C10_mexico
FROM BUSINESS_CASE.INVOICES i
WHERE i.client_id = 'C10'
    AND i.country_code = 30;	
    
#11 ¿Cuánto gastò el cliente C17 en Diciembre para la compra del "producto_6"?
SELECT SUM(i.amount_eur) AS total_gastado
FROM BUSINESS_CASE.INVOICES i
JOIN BUSINESS_CASE.PRODUCT p ON i.product_id = p.product_id
WHERE i.client_id = 'C17'
    AND p.product_name = 'producto_6'
    AND MONTH(i.inv_date) = 12
    AND YEAR(i.inv_date) = 2021;
        
#12 Seleccione la facturaciòn total de los dos Paises en el mes de diciembre agrupandola por Pais
SELECT pr.country, SUM(i.amount_eur) AS total_facturado
FROM BUSINESS_CASE.INVOICES i
JOIN BUSINESS_CASE.PRICE pr ON i.country_code = pr.country_code
WHERE MONTH(i.inv_date) = 12 AND YEAR(i.inv_date) = 2021
GROUP BY pr.country;

#13 Seleccione la tabla INVOICE agregando el indicador "price_type" que informe si el precio por producto fue "STANDARD" o "PROMO"
SELECT 
    i.*,
    CASE 
        WHEN i.amount_eur / i.quantity = pr.price_standard THEN 'STANDARD'
        WHEN i.amount_eur / i.quantity = pr.price_promo THEN 'PROMO'
        ELSE 'UNKNOWN'
    END AS price_type
FROM BUSINESS_CASE.INVOICES i
JOIN BUSINESS_CASE.PRICE pr ON i.product_id = pr.product_id
    AND i.country_code = pr.country_code;

#14 "Dada la informaciòn disponible en las tablas, cree un dashboard utilizando Tableau
# ¿Cuales conclusiones puede observar y cuales recomendaciones tendrìa?"
# Si no se cuenta con la versiòn Desktop de Tableau, puede bajar Tableau Public a la siguiente liga.
# https://public.tableau.com/en-us/s/download
						
						

