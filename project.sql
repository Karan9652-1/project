create database main_project;
use main_project
create table main_table(PRODUCT_ID int primary, CATEGORY varchar(50), PRODUCT_NAME varchar(50), QUANTITY int, SELLER_NAME varchar(50), PRICE int, BRAND_NAME varchar(50));
insert into main_table values(100,'Smartphones','Vivo V12',24,'Vivo PVT.LTD',20000,'VIVO');
insert into main_table values(101,'Smartphones','Vivo V10_Pro',20,'Vivo PVT.LTD',18000,'VIVO');
insert into main_table values(102,'Smartphones','Vivo Z12',10,'Vivo PVT.LTD',4700,'VIVO');
insert into main_table values(103,'Smartphones','Iphone A10',46,'Apple PVT.LTD',15000,'APPLE');      
insert into main_table values(104,'Smartphones','Iphone X11',45,'Apple PVT.LTD',50000,'APPLE');      
insert into main_table values(105,'Smartphones','Iphone Z15_plus',34,'Apple PVT.LTD',37880,'APPLE');      
insert into main_table values(106,'Smartphones','Infinix S17_LITE',27,'Infinix PVT.LTD',27580,'INFINIX');    
insert into main_table values(107,'Smartphones','Infinix XZ29',16,'Infinix PVT.LTD',67890,'INFINIX');    
insert into main_table values(108,'Smartphones','Infinix K17',19,'Infinix PVT.LTD',17000,'INFINIX');    
insert into main_table values(109,'Tablets','Realme K19',11,'Realme PVT.LTD',21000,'REALME');     
insert into main_table values(110,'Tablets','Realme G7',12,'Realme PVT.LTD',34000,'REALME');     
insert into main_table values(111,'Television','LG I20',57,'LG PVT.LTD',30000,'LG');         
insert into main_table values(112,'Television','Sony A11_Pro_plus',23,'Sony PVT.LTD',35000,'SONY');       
insert into main_table values(113,'Television','Sony A11',23,'Sony PVT.LTD',40000,'SONY');       
insert into main_table values(114,'Television','Micromax B12',23,'Micromax PVT.LTD',40000,'SONY');       
insert into main_table values(115,'Clothes','Mens_T-Shirt_S',25,'Zara Clothings',1300,'ZARA');       
insert into main_table values(116,'Clothes','Mens_Sweat-Shirt_S',36,'Zara Clothings',260,'ZARA');       
insert into main_table values(117,'Clothes','Women_Saree',43,'Zara clothings',750,'ZARA');       
insert into main_table values(118,'Clothes','Children_Shirts_Pants',32,'Tim clothings',657,'TIM');        
insert into main_table values(119,'Clothes','Women_Leggings_L',48,'Tim clothings',1570,'TIM');        
insert into main_table values(120,'Clothes','Women_Salwar_Kameez_XL',56,'Rajesh clothings',1570,'RAJESH');     
insert into main_table values(121,'Clothes','Women_Jeans_M',37,'Rajesh clothings',2050,'RAJESH');     
insert into main_table values(122,'Shoes_Footwears','Nike_Canvas_Shoes',56,'Nike Shoes and footwears',670,'NIKE');       
insert into main_table values(123,'Shoes_Footwears','Nike_Sports_Shoes',44,'Nike Shoes and footwears',569,'NIKE');       
insert into main_table values(124,'Shoes_Footwears','Adidas_Sports_Shoes',44,'Adidas Shoes and footwears',789,'ADIDAS');     
insert into main_table values(125,'Shoes_Footwears','Adidas_Canvas_Shoes',76,'Adidas Shoes and footwears',789,'ADIDAS');     
insert into main_table values(126,'Shoes_Footwears','Adidas_Footwears',50,'Adidas Shoes and footwears',300,'ADIDAS');     
insert into main_table values(127,'Shoes_Footwears','Nike_Footwears',30,'Nike Shoes and footwears',360,'NIKE');     
insert into main_table values(128,'Shoes_Footwears','Bata_Footwears',40,'Bata Shoes and footwears',200,'BATA');
insert into main_table values(129,'Shoes_Footwears','Bata_Canvas_Shoes'56'Bata Shoes and footwears',490,'BATA');
insert into main_table values(130,'Shoes_Footwears','Bata_Sports_Shoes'56'Bata Shoes and footwears',670,'BATA');
CREATE TABLE order_table (
    TRANSACTION_ID INT AUTO_INCREMENT PRIMARY KEY,
    PRODUCT_ID INT,
    PRODUCT_NAME VARCHAR(50),
    DATE_OF_DISPATCH DATE,
    CONTACT_DETAILS_OF_CUSTOMER VARCHAR(20)
);
insert into order_table values( 1,100,'Vivo V12',20181022,1234567890);                  
insert into order_table values(2,104,'iphone X11',20180615,1234567890);                  
insert into order_table values(3,100,'Vivo V12',20240713,9871898196); 