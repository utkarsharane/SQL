use utkarsha;
create table categories(category_ID int primary key,category_name varchar(20) not null,category_type
varchar(20));
insert into categories values(1,'MensWear','Fashion'),(2,'WomensWear','Fashion'),(3,'Makeup','Beauty'),
(4,'Gadgets','Electronics'),(5,'Grocery','Essentials');
select * from categories;
create table products(product_ID int primary key,category_ID int,foreign key(category_ID)
references categories(category_ID), product_name varchar(20) not null);
insert into products values(101,1,'Tshirt'),(102,3,'Mascara'),(103,2,'croptop'),(104,4,'Earbuds'),
(105,5,'Coffee'),(106,2,'Jeans'),(107,1,'Shirt'),(108,5,'Salt'),(109,3,'Nailpaint'),(110,4,'Smartwatch'),
(111,2,'Kurta'),(112,1,'Trouser'),(113,5,'Tea'),(114,3,'Primer'),(115,4,'Speaker'),(116,1,'Shorts'),
(117,3,'Lipstick'),(118,2,'Saree'),(119,5,'Oats'),(120,4,'Trimmer');
select * from products;
create table seller(seller_ID int primary key,product_ID int,foreign key(product_ID)
references products(product_ID),Name varchar(20));
insert into seller values(401,101,'Jvke'),(402,110,'Boatz'),(403,105,'Nestle'),(404,102,'Beautiz'),
(405,104,'Roller'),(406,106,'Roadster'),(407,103,'Coldplayz'),(408,109,'Verymiss'),(409,107,'Rolez'),
(410,111,'Suhani collection'),(411,108,'Tata'),(412,113,'Label'),(413,118,'Sakshi collection'),
(414,120,'Sonic'),(415,115,'Mivi'),(416,119,'Khushifoods'),(417,114,'Selenaz'),(418,117,'Rozy'),
(419,112,'VVZ collection'),(420,116,'Butterfly collection');
select * from seller;
create table customers(customer_ID int primary key,Name varchar(20) not null,contact_add char(20),
address varchar(50));
insert into customers values
(211,'Asha Negi',7112312007,'Shivajinagar_D-2_Mumbai'),
(212,'Aarav Sharma',7665812278,'Balajinagar_Ganesh_appt_S-2_Powai'),
(213,'Ishan Verma',8236547896,'Ganesh_Marg_P-2_Pune'),
(214,'Shambhavi Rana',7665846578,'Bajaj_colony_Gajanan_appt_D-2_Bandra'),
(215,'Anand Gupta',9566223278,'Krupanagar_Ganesh_colony_S-45_Borivali'),
(216,'Prisha Rajpurohit',7123654788,'Sambhavnagar_Parijat_appt_D-21_Andheri'),
(217,'Krishna Narkhede',9565562232,'Siddhesh_appt_Ganeshnagar_P-6_Thane'),
(218,'Vidhisha Goenka',8112356478,'Yogeshwar_society_parijat-2_Panvel'),
(219,'Prisha Singha',7666542121,'Vimannagar_Pratiksha_appt_A-2_Vashi'),
(220,'Anmol Bajaj',8655222112,'Ganga_colony_Ganesh_appt_B-2_Pune'),
(221,'Rajesh Pimple',7123456984,'Shahjinagar_Lily_appt_C-2_Palghar'),
(222,'Sarang Patil',8213654789,'Union_park_S-25_VasaiRoad'),
(223,'Kamlesh Sankhe',9523556412,'Shiv_appt_Gajanan_colony_E-28_Boisar'),
(224,'Priya Sharma',7623456978,'Balaji_baug_Pratisha_appt_F-56_Powai'),
(225,'Gajanan Devan',7665265545,'Saki-naka_Arnav_nagar_A-23_Dhule'),
(226,'Zoya Shah',7124558788,'Vidyanagar_pusha_appt_A-32_Nashik'),
(227,'John Doe',9123456128,'Stephen_society_A-34,Sion'),
(228,'Febiya Fernandes',7652564564,'John_union_appt_S-42_Matunga'),
(229,'Firoz khan',9632457878,'Khushi_nagar_A-24_Dadar'),
(230,'Shailaja Kadam',8456123478,'Balaji_colony_Ganesh_appt_A-20_Ratnagiri'),
(231,'Abhinav Mishra',945212212,'Shambhav_nagar_Lotus_A-23_Devgadh'),
(232,'George Doe',9654789654,'Parijat_marg_Doe_lane_A-2_Jogeshwari'),
(233,'Ashwini Pimple',9874561232,'Balaji-2_OstwalEmpire_Goregaon'),
(234,'Ashvi Sane',7896541238,'Balajinagar_Ganesh_Lane_A-2_Pune'),
(235,'Kundan Sharma',9822145428,'Ostwal_Empire_A-23,Banglore'),
(236,'Pushpak Wankhede',8123456547,'Triptinagar_D-38_Delhi'),
(237,'Priya Mehta',7251456327,'Sanjivani_appt_Ganesh_nagar_D-82_Kolkata'),
(238,'Meena Kamat',7123456981,'Ganesh_nagar_kanha_B-29_Chennai'),
(239,'Alex Sebastian',8852314695,'George_market_C-12_NaviMumbai'),
(240,'Leena Sharma',7452123658,'Bajaj_lane_krupa_appt_B-22_Dadar');
select * from customers;
create table shoppingorder(order_ID int primary key,customer_ID int,foreign key(customer_ID)
references customers(customer_ID),Date date);
insert into shoppingorder values(1001,211,'2023-05-21'),(1002,215,'2023-05-11'),(1003,218,'2023-05-01'),
(1004,213,'2023-05-12'),(1005,216,'2023-05-05'),(1006,212,'2023-05-13'),(1007,219,'2023-05-22'),
(1008,214,'2023-05-08'),(1009,215,'2023-05-15'),(1010,217,'2023-05-06'),(1011,220,'2023-05-25'),
(1012,240,'2023-05-29'),(1013,238,'2023-05-02'),(1014,235,'2023-05-31'),(1015,237,'2023-05-24'),
(1016,239,'2023-05-26'),(1017,232,'2023-05-18'),(1018,231,'2023-05-03'),(1019,234,'2023-05-27'),
(1020,233,'2023-05-04'),(1021,236,'2023-05-13'),(1022,222,'2023-05-09'),(1023,226,'2023-05-19'),
(1024,221,'2023-05-14'),(1025,225,'2023-05-17'),(1026,228,'2023-05-28'),(1027,223,'2023-05-23'),
(1028,224,'2023-05-30'),(1029,229,'2023-05-06'),(1030,230,'2023-05-19'),(1031,227,'2023-05-08'),
(1032,219,'2023-05-07'),(1033,221,'2023-05-15'),(1034,216,'2023-05-22'),(1035,238,'2023-05-28'),
(1036,213,'2023-05-06'),(1037,240,'2023-05-23'),(1038,229,'2023-05-27'),(1039,219,'2023-05-04'),
(1040,235,'2023-05-24');
select * from shoppingorder;
create table deliveries(deliveries_ID int primary key,order_ID int,foreign key(order_ID)
references shoppingorder(order_ID),Date date);
insert into deliveries values(501,1038,'2023-05-29'),(502,1035,'2023-05-31'),(503,1040,'2023-05-29'),
(504,1032,'2023-05-10'),(505,1039,'2023-05-07'),(506,1036,'2023-05-11'),(507,1033,'2023-05-18'),
(508,1037,'2023-05-29'),(509,1031,'2023-05-13'),(510,1034,'2023-05-25'),(511,1001,'2023-05-28'),
(512,1006,'2023-05-18'),(513,1009,'2023-05-18'),(514,1003,'2023-05-11'),(515,1007,'2023-05-27'),
(516,1002,'2023-05-16'),(517,1004,'2023-05-15'),(518,1008,'2023-05-16'),(519,1005,'2023-05-13'),
(520,1010,'2023-05-09'),(521,1020,'2023-05-09'),(522,1022,'2023-05-15'),(523,1021,'2023-05-18'),
(524,1028,'2023-05-31'),(525,1025,'2023-05-20'),(526,1024,'2023-05-17'),(527,1029,'2023-05-09'),
(528,1023,'2023-05-22'),(529,1026,'2023-05-31'),(530,1027,'2023-05-26'),(531,1034,'2023-05-26'),
(532,1016,'2023-05-29'),(533,1015,'2023-05-26'),(534,1018,'2023-05-08'),(535,1014,'2023-05-31'),
(536,1017,'2023-05-20'),(537,1011,'2023-05-28'),(538,1013,'2023-05-05'),(539,1020,'2023-05-07'),
(540,1012,'2023-05-30');
select * from deliveries;
create table payments(payment_ID int primary key,category_ID int,foreign key(category_ID)
references categories(category_ID),Date date);
insert into payments values(2001,2,'2023-05-18'),(2002,4,'2023-05-11'),(2003,3,'2023-05-10'),
(2004,5,'2023-05-09'),(2005,1,'2023-05-03'),(2006,4,'2023-05-22'),(2007,2,'2023-05-26'),
(2008,1,'2023-05-17'),(2009,5,'2023-05-12'),(2010,3,'2023-05-31'),(2011,4,null),(2012,5,'2023-05-28'),
(2013,2,'2023-05-08'),(2014,3,'2023-05-28'),(2015,1,'2023-05-26'),(2016,2,'2023-05-15'),
(2017,5,'2023-05-01'),(2018,4,'2023-05-04'),(2019,1,null),(2020,1,'2023-05-03'),(2021,3,'2023-05-07'),
(2022,2,'2023-05-16'),(2023,1,'2023-05-11'),(2024,5,'2023-05-15'),(2025,4,'2023-05-12'),
(2026,4,'2023-05-05'),(2027,5,'2023-05-14'),(2028,1,'2023-05-13'),(2029,2,'2023-05-25'),
(2030,2,'2023-05-09'),(2031,4,'2023-05-20'),(2032,3,'2023-05-21'),(2033,5,'2023-05-31'),
(2034,3,'2023-05-16'),(2035,1,'2023-05-27'),(2036,4,'2023-05-02'),(2037,5,'2023-05-24'),(2038,2,null),
(2039,1,'2023-05-28'),(2040,2,'2023-05-31'),(2041,5,'2023-05-29'),(2042,3,null),(2043,4,'2023-05-23'),
(2044,5,null),(2045,1,'2023-05-19'),(2046,3,'2023-05-11'),(2047,2,'2023-05-21'),(2048,1,'2023-05-07'),
(2049,4,'2023-05-02'),(2050,1,'2023-05-28');
select * from payments;
create table transacationreports(report_ID int primary key,customer_ID int,foreign key(customer_ID)
references customers(customer_ID),order_ID int,foreign key(order_ID)references shoppingorder(order_ID),
product_ID int,foreign key(product_ID) references products(product_ID),payment_ID int,foreign key(payment_ID)
references payments(payment_ID));
insert into transacationreports values(3001,214,1001,102,2035),(3002,239,1020,118,2021),
(3003,231,1035,103,2044),(3004,238,1032,117,2025),(3005,215,1005,101,2006),(3006,228,1031,114,2027),
(3007,211,1021,104,2030),(3008,232,1021,115,2017),(3009,229,1015,112,2016),(3010,225,1025,116,2023);
select * from transacationreports;
