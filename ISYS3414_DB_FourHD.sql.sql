create database online_shop;
Create table Customer (
	CustomerName Char(30),
    Phone_Number Numeric(20),
    Email varchar(200),
    Address Varchar(200),
    primary key (Email));
 Insert into Customer (CustomerName, Phone_Number, Email, Address )
 values ('John', 0346517265, 'John123@gmail.com', ' 123 Main Street, Atown, CA 12345'),
		('Iris', 0983652871, 'Iris456@gmail.com', '456 Elm Street, Btown, CA 12345'),
        ('Anna', 0363478274, 'AnnaSmith@gmai.com', '789 Oak Street, nytown, CA 12345'),
        ('Tom' , 0473478288, 'TomJerry@gmail.com', '1011 Pine Street, Aytown, CA 12345'),
        ('Bill', 0366588278, 'Billhandsome@gmail.com', '1234 Maple Street, ytown, CA 12345');
	Create table UserAccount (
		Email varchar(200),
		UserID numeric(30),
        UserName Varchar(50),
        Pass_word varchar(50),
        primary key ( UserID),
        foreign key(Email) references Customer(Email));
	Insert into UserAccount (Email,UserID, UserName, Pass_word)
    Values ('John123@gmail.com',567348 , 'John', 'John@123'),
			('Iris456@gmail.com',456348, 'Iris', 'Iris@345'),
            ('AnnaSmith@gmai.com',789364, 'Anna', 'AnnaNguyen'),
            ('TomJerry@gmail.com',728472, 'Tom' , 'luvJerry'),
            ('Billhandsome@gmail.com',476234, 'Bill', 'sadboiz123');
	Create table Bank_account (
    Bank_account_Number numeric(50),
    Bank_Name varchar(200),
    primary key (Bank_account_Number));
    Insert into Bank_account ( Bank_account_Number, Bank_Name)
    values (79803421, 'TBank'),
			(54320789, 'VBank'),
			(98879076, 'DBank'),
            (54678798, 'PBank'),
            (54792398, 'TVDPBank');
	create table Supplier (
    Supplier_phone_number numeric (30),
    Supplier_name varchar(200),
    Supplier_email varchar(200),
    Supplier_address varchar(200),
    SupplierID numeric(20),
    primary key (SupplierID));
    Insert into Supplier ( Supplier_phone_number, Supplier_name, Supplier_email, Supplier_address, SupplierID)
    Values (0365117425, 'Mary', 'Mary123@gmail.com', 'Ngo Duong Hamlet, An Binh Commune, Thuan Thanh District, Bac Ninh Province', 8973246),
			(0766342567,'Mike', 'Mike34@gmail.com', 'Hamlet 3, Long Son Commune, Can Duoc District, Long An Province',6782348),
            (0984562729,'Gin', 'GinnNG@gmail.com', '176, Dinh Cong Street,Phuong Liet Ward, Hoang Mai District', 9782345),
            (0497324732,'Pucca','Garu35@gmail.com','34,Street 4, Ward 7, District 10', 6798436);
create table Product (
    Product_code varchar(50),
    Discount varchar(20),
    Quantity numeric(20),
    Product_Name varchar(200),
    Price varchar(200),
    primary key (Product_code));
    Insert into Product (Product_code, Discount, Quantity, Product_Name, Price)
    Values  ('DFHK397', '50%',15,'Foundation','345000VND'),
			('SDAG987', '25%',30,'Concealer','279000VND'),
            ('HJKI789','10%',120,'eyeshadow','165000VND'),
            ('UJLV784','0%',10,'Eyeliner','50000VND'),
            ('YHDJ278','20%',50,'Mascara','250000VND'),
            ('IKUT657','0%',100,'powder','300000VND'),
            ('UJLV484','40%',150,'Lipstick','275000VND');
	create table Bill (
    Email varchar(200),
    Bank_account_Number numeric(50),
    Product_code varchar(50),
    Bill_Number numeric(50),
    Bill_Date date,
    Total_Cost varchar(200),
    primary key (Bill_Number),
    foreign key (Bank_account_Number) references Bank_account(Bank_account_Number),
    foreign key (Email) references Customer(Email),
    foreign key (Product_code) references Product(Product_code));
    Insert into Bill ( Email,Bank_account_Number, Product_code, Bill_Number, Bill_Date,Total_Cost)
    values ( 'John123@gmail.com',79803421, 'DFHK397',7983278327, '2022-06-05', '2000000VND'),
			('Iris456@gmail.com', 54320789,'SDAG987',3678093247, '2023-05-03', '587000VND'),
            ('AnnaSmith@gmai.com',54320789,'HJKI789',273948294, '2023-06-04', '6780000VND'),
            ('TomJerry@gmail.com',54678798, 'UJLV784',3648294726, '2022-08-07','890000VND'),
            ('Billhandsome@gmail.com',54792398, 'YHDJ278',9878902346, '2023-08-09', '4567800VND'),
            ('Iris456@gmail.com',79803421, 'IKUT657',7643897854, '2023-08-10', '3892000VND'),
            ('John123@gmail.com',98879076, 'UJLV484',3648284726, '2023-09-01', '8900000VND');
create table provide (
Product_code varchar(50),
SupplierID numeric(20),
primary key ( Product_code, SupplierID),
foreign key ( Product_code) references  Product(Product_code),
foreign key (SupplierID) references Supplier(SupplierID));
insert into provide ( Product_code, SupplierID)
values ( 'DFHK397',8973246),
		('SDAG987',6782348),
		('HJKI789',9782345),
		('UJLV784',9782345),
		('YHDJ278',8973246),
		('IKUT657',6798436),
		('UJLV484',6782348);
create table purchase ( 
Email varchar(200),
Product_code varchar(50),
purchase_code varchar(50),
amount numeric(30),
time_of_purchase date,
primary key (Email, Product_code),
foreign key (Email) references Customer(Email),
foreign key (Product_code) references Product(Product_code));
insert into purchase ( Email, Product_code, purchase_code, amount, time_of_purchase)
values ('John123@gmail.com', 'SDAG987', 'ABC567', 5,'2022-06-05'),
		('Iris456@gmail.com', 'SDAG987', 'DEF789', 2, '2023-05-03'),
        ('AnnaSmith@gmai.com', 'HJKI789','IGH456', 45, '2023-06-04'),
        ('TomJerry@gmail.com', 'UJLV784', 'LMN123',17, '2022-08-07'),
        ('Billhandsome@gmail.com','YHDJ278','JkP378', 18,'2023-08-09'),
        ('Iris456@gmail.com', 'IKUT657','EFH987', 13, '2023-08-10'),
        ('John123@gmail.com', 'UJLV484','XYZ765', 32, '2023-09-01');
create table generate (
Email varchar(200),
Bill_Number numeric(50),
primary key ( Bill_Number,Email),
foreign key (Bill_Number) references Bill(Bill_Number),
foreign key (Email) references Customer(Email));
insert into generate (Bill_Number, Email)
values(7983278327,'John123@gmail.com' ),
		(3678093247,'Iris456@gmail.com'),
		(273948294,'AnnaSmith@gmai.com' ),
		(3648294726, 'TomJerry@gmail.com'),
		(9878902346,'Billhandsome@gmail.com' ),
		(7643897854, 'Iris456@gmail.com'),
		(3648284726,'John123@gmail.com');
create table link (
Bank_account_Number numeric(50),
UserID numeric(30),
primary key (Bank_account_Number, UserID),
foreign key (Bank_account_Number) references Bank_account(Bank_account_Number),
foreign key (UserID) references UserAccount(UserID));
insert into link ( Bank_account_Number,UserID)
values (79803421,567348),
		(54320789, 456348),
        (98879076,789364),
        (54678798,728472),
        (54792398,476234);
SELECT Product_name, Price
FROM Product
WHERE Price = (SELECT MIN(Price) FROM Product);
SELECT Product_name, Price
FROM Product
WHERE Price = (SELECT MAX(Price) FROM Product);
SELECT
    p.purchase_code,
    p.time_of_purchase,
    P.Product_code,
    p.amount,
    P.Price,
    (p.amount * P.Price) AS total_price
FROM
    purchase p
JOIN
    Product P ON p.purchase_code = P.Product_code
WHERE
    p.purchase_code = 'DEF789';
UPDATE Product P
JOIN purchase p ON P.Product_code = p.purchase_code
SET P.Quantity = P.Quantity - p.amount
WHERE p.purchase_code = 'DEF789';
SELECT Supplier_phone_number, Supplier_name, Supplier_email, Supplier_address, SupplierID
FROM Supplier;
        
    
    
		
            
    
    
    
	
    
	
            
            
            
        
		
		
        
        
    
    
		
            
    
    
    
	
    
	
            
            
            
        
		
		