--Check Structure of table
EXEC sp_help Sales;


-- Insert into Departments Table
insert into Departments(d_id, d_name, d_email, d_location, manager_id)
values
('18D1027','HR','hr@xetasquad.com','Sambalpur','20MN1012'),
('18D1009','IT','it@xetasquad.com','Sambalpur','19MN1011'),
('19D1013','Account','account@xetasquad.com','Sambalpur','20MN1015'),
('20D1021','Sales','sales@xetasquad.com','Bargarh','21MN1031'),
('20D1020','Marketing','marketing@xetasquad.com','Rourkela','23MN1047');
select * from departments;

-- Insert into Employees Table
insert into Employees(e_id,e_name,e_dob,e_age,e_phone,e_email,e_address,e_city,e_state,e_postal_code,e_d_id,e_doj,e_experience,e_salary)
values
('18E185','Khushi Kar','1986-06-20',39,'6026013418','mahikaamble@agate.net','H.No. 79, Issac Path','Surat','Gujarat','394101','18D1009','2018-10-18',7,58929),
('16E136','Kartik Kalla','1996-12-09',29,'9740847184','jborra@hotmail.com','H.No. 223, Sachdev Nagar','Vadodara','Gujarat','761909','18D1027','2016-05-10',9,30192),
('17E153','Jiya Bains','2000-12-30',25,'7365026801','sabharwalvaibhav@hotmail.com','H.No. 11, Sundaram Ganj','Nagpur','Maharashtra','950959','18D1009','2017-08-03',8,95146),
('21E157','Manjari Seshadri','1979-02-20',46,'2551210331','aniruddhraj@din.com','606, Uppal Circle','Surat','Gujarat','799915','18D1009','2021-03-05',4,57671),
('17E161','Seher Soni','1975-04-06',50,'7786851078','mahika82@hotmail.com','16, Wason Road','Bangalore','Karnataka','228358','19D1013','2017-12-03',8,98152),
('22E101','Chirag Kumer','1992-03-20',33,'8229144504','psrinivas@yahoo.com','38/980, Dara Chowk','Vadodara','Gujarat','164259','20D1021','2022-07-31',3,109791),
('18E163','Diya Ram','1983-08-16',42,'7897003030','siyalalla@hotmail.com','93/286, Bakshi Road','Coimbatore','Tamil Nadu','957254','20D1020','2018-01-25',7,51756),
('22E190','Uthkarsh Shere','1979-08-13',46,'8433822302','gchokshi@gmail.com','H.No. 198, Gala Marg','Bhubaneswar','Odisha','635715','20D1021','2022-05-27',3,64738),
('22E182','Ivana Rajagopal','1981-10-25',44,'9409234632','ebala@gmail.com','79/412, Loke Chowk','Sambalpur','Odisha','604492','18D1009','2022-10-27',3,58598),
('17E116','Ivan Singhal','1997-08-12',28,'9557220511','nsha@hotmail.com','H.No. 181, Dani Ganj','Cuttack','Odisha','876211','19D1013','2017-02-22',8,62195),
('22E102','Bhavin Kalla','2001-02-11',24,'8652364288','miraanarya@hotmail.com','22/38, Din','Madurai','Tamil Nadu','603005','20D1020','2022-02-04',3,69708),
('24E180','Inaaya  Manne','1999-04-01',26,'8522753953','ddube@gmail.com','H.No. 715, Bedi Circle','Coimbatore','Tamil Nadu','137656','20D1021','2024-08-11',1,72363),
('22E113','Himmat Sekhon','1984-09-06',41,'9651738676','yashvi13@hotmail.com','35/105, Balay','Bhubaneswar','Odisha','860617','20D1020','2022-01-21',3,115671),
('22E112','Zaina Handa','1996-05-11',29,'7179262836','jayant29@yahoo.com','75Bath Street','Ahmedabad','Gujarat','537516','20D1020','2022-08-31',3,115740),
('16E153','Nehmat Mander','1989-09-27',36,'9674164091','vtripathi@zacharia-raju.com','H.No. 676, Shan Nagar','Pune','Maharashtra','633629','18D1009','2016-01-08',9,66396),
('17E113','Hunar Bansal','1981-02-28',44,'9441259523','biswasnitya@yahoo.com','26/875, Sidhu Nagar','Bhubaneswar','Odisha','151121','18D1027','2017-09-03',8,103162),
('18E141','Ivan Edwin','1977-07-09',48,'8691455227','hkothari@dash-buch.com','H.No. 66, Golla Ganj','Bhubaneswar','Odisha','273604','19D1013','2018-09-03',7,88730),
('17E140','Hrishita Dhawan','1983-09-11',42,'9968779373','wmandal@yahoo.com','07alan Circle','Pune','Maharashtra','786612','18D1009','2017-09-09',8,96804),
('25E136','Ahana  Ray','1994-09-11',31,'8085315332','shanemir@bahri.biz','11Dalal Circle','Hubli','Karnataka','975679','20D1021','2025-07-13',0,114826),
('20E147','Vanya Batra','1995-01-13',30,'8265088351','ichakraborty@gmail.com','50Dube Marg','Surat','Gujarat','835945','18D1009','2020-08-03',5,83450);
select * from employees;

-- Insert into Products Table
INSERT INTO Products (p_id, p_name, p_category, p_subcategory, quantity, unit_price, discount, price)
VALUES
('P001','AeroX Pro 4K Drone','Drone','Quadcopter',50,59999.00,5000.00,54999.00),
('P002','SkyView Mini Drone','Drone','Mini Drone',70,19999.00,2000.00,17999.00),
('P003','FalconEye GPS Drone','Drone','Quadcopter',40,74999.00,7000.00,67999.00),
('P004','EagleAir FPV Drone','Drone','Racing Drone',30,32999.00,2500.00,30499.00),
('P005','HoverMax Foldable Drone','Drone','Foldable',60,25999.00,1500.00,24499.00),
('P006','Photon 6K Drone','Drone','Professional',25,99999.00,10000.00,89999.00),
('P007','AeroScout Beginner Drone','Drone','Entry-Level',80,14999.00,1000.00,13999.00),
('P008','StormRider FPV Drone','Drone','Racing Drone',35,41999.00,3000.00,38999.00),
('P009','HawkVision Survey Drone','Drone','Mapping',20,124999.00,15000.00,109999.00),
('P010','NanoFly Pocket Drone','Drone','Mini Drone',100,9999.00,500.00,9499.00),
('P011','4K Camera Gimbal','Accessories','Gimbal',60,8999.00,1000.00,7999.00),
('P012','Drone Propeller Set','Accessories','Propellers',120,1999.00,200.00,1799.00),
('P013','Li-Po Battery Pack 5000mAh','Accessories','Battery',90,3999.00,300.00,3699.00),
('P014','FPV Goggles X2','Accessories','FPV Goggles',50,14999.00,1200.00,13799.00),
('P015','Drone Backpack Carry Case','Accessories','Case',70,4999.00,400.00,4599.00),
('P016','Landing Gear Extension','Accessories','Landing Gear',80,1299.00,100.00,1199.00),
('P017','ND Filter Kit for Drones','Accessories','Lens Filters',55,2999.00,250.00,2749.00),
('P018','Remote Controller Strap','Accessories','Strap',100,799.00,50.00,749.00),
('P019','GPS Module Upgrade','Accessories','GPS Module',45,3499.00,300.00,3199.00),
('P020','Propeller Guards','Accessories','Prop Guards',110,1599.00,100.00,1499.00),
('P021','Drone Repair Basic','Service','Maintenance',NULL,2999.00,0.00,2999.00),
('P022','Drone Repair Advanced','Service','Maintenance',NULL,6999.00,0.00,6999.00),
('P023','Drone Pilot Training','Service','Training',NULL,14999.00,1000.00,13999.00),
('P024','Aerial Photography Package','Service','Photography',NULL,24999.00,2000.00,22999.00),
('P025','Aerial Survey Mapping','Service','Mapping',NULL,49999.00,5000.00,44999.00),
('P026','Battery Recycling Service','Service','Recycling',NULL,999.00,0.00,999.00),
('P027','Drone Software Update','Service','Software',NULL,1999.00,0.00,1999.00),
('P028','Custom Drone Build Service','Service','Customization',NULL,79999.00,7000.00,72999.00),
('P029','Event Coverage Drone Service','Service','Event',NULL,29999.00,2500.00,27499.00),
('P030','Annual Maintenance Contract','Service','AMC',NULL,19999.00,1500.00,18499.00);
select * from products;
update products
set quantity = 1,
	updated_at = SYSDATETIME()
where quantity is NULL;


-- Insert into Customers Table
insert into customers(c_id,c_name,c_email,c_phone,c_address,c_city,c_state,c_postal_code,purchase_amount)
values
('CUST001','Raghav Roy','sahnidrishya@hotmail.com','9797692634','59/98Dass Marg','Howrah','West Bengal','470979',71997),
('CUST002','Faiyaz Chaudhary','manikya80@gmail.com','8456654327','H.No. 27, Ghosh Road','Kolkata','West Bengal','919665',95995),
('CUST003','Zaina Kant','pranay02@yahoo.com','9986689086','H.No. 410, Swamy','Bhubaneswar','Odisha','989478',367995),
('CUST004','Samiha Bhakta','manjari67@hotmail.com','7786287887','H.No. 010Chaudhary','Bangalore','Karnataka','989478',93997),
('CUST005','Advik Mallick','ekar@chad-dugar.org','6472085664','83/591, Sankaran Ganj','Mysore','Karnataka','911093',74997),
('CUST006','Hiran Batta','dgopal@gmail.com','8626188729','25/843Varma Road','Cuttack','Odisha','656800',89999),
('CUST007','Samiha Kara','thakerkiaan@gmail.com','7794151098','41, Vasa Path','Madurai','Tamil Nadu','814214',43997),
('CUST008','Armaan Krishna','kismatsaini@hotmail.com','9981370399','H.No. 86Kadakia Path','Bangalore','Karnataka','805996',119997),
('CUST009','Aarav Kapadia','zoyatalwar@hotmail.com','8768079675','50/529Boase Zila','New Delhi','Delhi','626095',109999),
('CUST010','Dharmajan Dhaliwal','dalalvivaan@yahoo.com','7688654156','H.No. 89Bhandari Marg','Vadodara','Gujarat','412101',38996),
('CUST011','Advika Bajwa','tdalal@vig.com','9922212970','78/81, Venkataraman Circle','Kolkata','West Bengal','994490',114998),
('CUST012','Shray Kamdar','saksham98@bandi.info','8763597427','45Ganguly Street','Surat','Gujarat','621428',11794),
('CUST013','Divyansh Kant','talwararmaan@bhagat-kulkarni.com','8879624111','H.No. 44, Saran Marg','Pune','Maharashtra','134321',7698),
('CUST014','Nirvi Gole','daurora@gmail.com','7854385494','H.No. 85Raman Zila','Pune','Maharashtra','494586',43797),
('CUST015','Pari Grewal','manikyabuch@yahoo.com','9844266211','07/990, Lala Marg','Pune','Maharashtra','223555',131693),
('CUST016','Misha Dora','fbarad@ramesh.com','9984070726','77/091, Chahal','Howrah','West Bengal','567943',1199),
('CUST017','Farhan Sahni','caurora@gmail.com','8779525023','H.No. 06, Comar Marg','Bhubaneswar','Odisha','726272',2749),
('CUST018','Lakshay Viswanathan','khannaonkar@hotmail.com','9967774998','H.No. 469Lalla Ganj','Sambalpur','Odisha','292291',306745),
('CUST019','Rasha Chauhan','lalaseher@yahoo.com','7782014444','04/914, Rana Nagar','Surat','Gujarat','828806',6698),
('CUST020','Dhruv Gour','zeeshan82@basu-ghose.com','9937467864','97, Rana Ganj','Sambalpur','Odisha','406866',104791),
('CUST021','Azad Toor','ahana-bhatnagar@hotmail.com','9187757093','571, Devi Circle','Coimbatore','Tamil Nadu','102302',5998),
('CUST022','Khushi Chakraborty','ladjivika@varughese.com','7787132826','H.No. 97, Vyas','Mumbai','Maharashtra','61641',55992),
('CUST023','Prisha Solanki','hlad@dua-subramaniam.org','9447356307','H.No. 38, Sur Street','Coimbatore','Tamil Nadu','656920',28998),
('CUST024','Ranbir Dhillon','hridaan64@yahoo.com','8645582508','71/79, Chawla Nagar','Mumbai','Maharashtra','475778',22999),
('CUST025','Samaira Tripathi','madhupmammen@gmail.com','9908942873','50/64, Shah Path','Chennai','Tamil Nadu','18427',239995),
('CUST026','Vaibhav Savant','sinhamehul@yahoo.com','9937098091','22Baria Circle','Mysore','Karnataka','982693',3996);
select * from customers;


-- Insert into Sales Table
INSERT INTO Sales (s_id, p_id, c_id, s_date, quantity, unit_price, discount, price)
VALUES
('S001', 'P001', 'CUST001', '2023-01-05', 2, 25.50, 0.00, 51.00),
('S002', 'P005', 'CUST005', '2023-01-06', 1, 150.00, 10.00, 140.00),
('S003', 'P010', 'CUST010', '2023-01-07', 3, 5.00, 0.50, 14.50),
('S004', 'P022', 'CUST022', '2023-01-08', 5, 45.00, 2.00, 223.00),
('S005', 'P015', 'CUST015', '2023-01-09', 1, 120.00, 0.00, 120.00),
('S006', 'P002', 'CUST002', '2023-01-10', 4, 30.25, 1.25, 120.00),
('S007', 'P025', 'CUST025', '2023-01-11', 2, 85.00, 5.00, 165.00),
('S008', 'P008', 'CUST008', '2023-01-12', 1, 200.00, 0.00, 200.00),
('S009', 'P028', 'CUST018', '2023-01-13', 3, 15.00, 0.00, 45.00),
('S010', 'P004', 'CUST004', '2023-01-14', 1, 55.00, 0.00, 55.00),
('S011', 'P012', 'CUST012', '2023-01-15', 6, 10.00, 0.00, 60.00),
('S012', 'P019', 'CUST019', '2023-01-16', 2, 75.00, 2.50, 147.50),
('S013', 'P006', 'CUST006', '2023-01-17', 1, 90.00, 0.00, 90.00),
('S014', 'P020', 'CUST020', '2023-01-18', 4, 35.00, 1.00, 139.00),
('S015', 'P027', 'CUST027', '2023-01-19', 3, 60.00, 3.00, 177.00),
('S016', 'P011', 'CUST011', '2023-01-20', 2, 25.00, 0.00, 50.00),
('S017', 'P016', 'CUST016', '2023-01-21', 1, 180.00, 5.00, 175.00),
('S018', 'P003', 'CUST003', '2023-01-22', 5, 20.00, 0.00, 100.00),
('S019', 'P021', 'CUST021', '2023-01-23', 2, 40.00, 0.00, 80.00),
('S020', 'P024', 'CUST024', '2023-01-24', 1, 70.00, 0.00, 70.00),
('S021', 'P007', 'CUST007', '2023-01-25', 3, 50.00, 2.00, 148.00),
('S022', 'P009', 'CUST009', '2023-01-26', 1, 110.00, 0.00, 110.00),
('S023', 'P026', 'CUST026', '2023-01-27', 4, 12.00, 0.00, 48.00),
('S024', 'P013', 'CUST013', '2023-01-28', 2, 95.00, 0.00, 190.00),
('S025', 'P017', 'CUST017', '2023-01-29', 1, 250.00, 15.00, 235.00),
('S026', 'P030', 'CUST020', '2023-01-30', 5, 8.00, 0.00, 40.00),
('S027', 'P014', 'CUST014', '2023-01-31', 3, 65.00, 5.00, 190.00),
('S028', 'P023', 'CUST023', '2023-02-01', 2, 5.00, 0.00, 10.00),
('S029', 'P018', 'CUST018', '2023-02-02', 1, 15.00, 0.00, 15.00),
('S030', 'P029', 'CUST015', '2023-02-03', 4, 25.00, 2.00, 98.00),
('S031', 'P001', 'CUST001', '2023-02-04', 1, 25.50, 0.00, 25.50),
('S032', 'P005', 'CUST005', '2023-02-05', 2, 150.00, 5.00, 295.00),
('S033', 'P010', 'CUST010', '2023-02-06', 1, 5.00, 0.00, 5.00),
('S034', 'P022', 'CUST022', '2023-02-07', 3, 45.00, 1.00, 134.00),
('S035', 'P015', 'CUST015', '2023-02-08', 2, 120.00, 0.00, 240.00),
('S036', 'P002', 'CUST002', '2023-02-09', 1, 30.25, 0.00, 30.25),
('S037', 'P025', 'CUST025', '2023-02-10', 3, 85.00, 10.00, 245.00),
('S038', 'P008', 'CUST008', '2023-02-11', 2, 200.00, 0.00, 400.00),
('S039', 'P028', 'CUST018', '2023-02-12', 1, 15.00, 0.00, 15.00),
('S040', 'P004', 'CUST004', '2023-02-13', 2, 55.00, 0.00, 110.00);
select * from Sales;

update s
set s.unit_price = p.unit_price,
	s.discount = p.discount
from sales s
join products p
on s.p_id = p.p_id;
update sales 
set price= (quantity * unit_price) - discount;