create table products
(product_id int,
product_class_id int,
brand_name varchar(20),
product_name varchar(20),
is_low_fat_flg tinyint,
is_recyclable_flg tinyint,
price float);


create table stores
(store_id int,
type varchar (10),
name varchar(15),
state varchar(15),
first_opened_date datetime,
last_remodel_date datetime,
area_sqft int
);


create table customers
(customer_id int,
first_name varchar(15),
last_name varchar(15),
state varchar(15),
birthdate date,
education varchar(15),
gender varchar(10),
date_account_opened date
);


create table sales
(
product_id int,
store_id int,
customer_id int,
promotion_id int,
store_sales float,
store_cost float,
units_sold float,
transaction_date date
);


insert into products (product_id, product_class_id , brand_name,product_name,is_low_fat_flg,is_recyclable_flg, price) values (11,30,'Nike','Shoes',1,0,200.5);
insert into products (product_id, product_class_id , brand_name,product_name,is_low_fat_flg,is_recyclable_flg, price) values (12,40,'Nike','Sweats',1,0,80.5);
insert into products (product_id, product_class_id , brand_name,product_name,is_low_fat_flg,is_recyclable_flg, price) values (13,30,'Adiddas','Shoes',0,0,00.5);
insert into products (product_id, product_class_id , brand_name,product_name,is_low_fat_flg,is_recyclable_flg, price) values (14,40,'Adiddas','Sweats',1,1,100.5);
insert into products (product_id, product_class_id , brand_name,product_name,is_low_fat_flg,is_recyclable_flg, price) values (15,50,'UA','Pretty_s',0,1,400.5);
insert into products (product_id, product_class_id , brand_name,product_name,is_low_fat_flg,is_recyclable_flg, price) values (16,60,'UA','Hoodie',1,1,60.5);
insert into products (product_id, product_class_id , brand_name,product_name,is_low_fat_flg,is_recyclable_flg, price) values (17,70,'New_B','Shoes_lady',1,0,120);
insert into products (product_id, product_class_id , brand_name,product_name,is_low_fat_flg,is_recyclable_flg, price) values (18,30,'New_B','Shoes',1,1,31.5);


insert into stores (store_id, type , name, state, first_opened_date,last_remodel_date,area_sqft) values (1,'Sports','Nike_store','AZ','2020-11-11 13:00:00','2020-11-13 14:00:00',20);
insert into stores (store_id, type , name, state, first_opened_date,last_remodel_date,area_sqft) values (2,'Sports','Adidas_store','AZ','2020-10-11 13:00:00','2020-10-13 14:00:00',20);
insert into stores (store_id, type , name, state, first_opened_date,last_remodel_date,area_sqft) values (3,'Sports','UA_store','NY','2020-08-11 13:00:00','2020-09-13 14:00:00',30);
insert into stores (store_id, type , name, state, first_opened_date,last_remodel_date,area_sqft) values (4,'Sports','New_B_store','PN','2020-11-15 13:00:00','2020-11-16 14:00:00',40);



insert into customers (customer_id, first_name , last_name, state, birthdate,education,gender,date_account_opened) values (111,'Ross','Geller','NY','1970-11-17','Rocks','M','2019-03-11');
insert into customers (customer_id, first_name , last_name, state, birthdate,education,gender,date_account_opened) values (112,'Monica','Geller','NY','1975-02-03','Cook','F','2018-02-10');
insert into customers (customer_id, first_name , last_name, state, birthdate,education,gender,date_account_opened) values (113,'Rachel','Green','Rich_state','1972-01-15','Shop','F','2019-04-11');
insert into customers (customer_id, first_name , last_name, state, birthdate,education,gender,date_account_opened) values (114,'Joey','Tribianni','Quins','1977-09-17','Actor','M','2019-06-16');
insert into customers (customer_id, first_name , last_name, state, birthdate,education,gender,date_account_opened) values (115,'Phoebe','Buffe','NY','1969-05-10','Masage','F','2018-07-20');
insert into customers (customer_id, first_name , last_name, state, birthdate,education,gender,date_account_opened) values (116,'Chandler','Bing','Vegas','1972-09-22','Numbers','M','2019-02-15');



insert into sales (product_id, store_id ,customer_id,promotion_id, store_sales,store_cost,units_sold,transaction_date) values (11,1,111,156,333.5,200.5,5,'2020-11-18');
insert into sales (product_id, store_id ,customer_id,promotion_id, store_sales,store_cost,units_sold,transaction_date) values (12,1,112,157,233.5,100.5,10,'2020-11-19');
insert into sales (product_id, store_id ,customer_id,promotion_id, store_sales,store_cost,units_sold,transaction_date) values (13,2,114,159,433.5,123.5,3,'2020-11-17');
insert into sales (product_id, store_id ,customer_id,promotion_id, store_sales,store_cost,units_sold,transaction_date) values (15,3,115,159,245.5,182.5,5,'2020-11-20');
insert into sales (product_id, store_id ,customer_id,promotion_id, store_sales,store_cost,units_sold,transaction_date) values (18,4,114,148,287.5,148.3,3,'2020-11-21');
insert into sales (product_id, store_id ,customer_id,promotion_id, store_sales,store_cost,units_sold,transaction_date) values (14,3,113,156,146.7,58.5,8,'2020-11-22');
insert into sales (product_id, store_id ,customer_id,promotion_id, store_sales,store_cost,units_sold,transaction_date) values (11,1,111,156,333.5,200.5,8,'2020-11-23');
insert into sales (product_id, store_id ,customer_id,promotion_id, store_sales,store_cost,units_sold,transaction_date) values (17,1,111,null,100,100,4,'2020-11-17');
insert into sales (product_id, store_id ,customer_id,promotion_id, store_sales,store_cost,units_sold,transaction_date) values (16,3,116,null,70,70,3,'2020-11-17');


