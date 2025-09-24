-- Create Database
create database Xeta_Squad_Ltd;

GO
use Xeta_Squad_Ltd;
GO

-- Create Departments Table
create table Departments(
	d_id varchar(10) primary key,
	d_name varchar(20) not null,
	d_email varchar(50) not null unique,
	d_location varchar(100),
	manager_id varchar(10),
	created_at DATETIME2 DEFAULT SYSDATETIME() NOT NULL,
    updated_at DATETIME2 DEFAULT SYSDATETIME() NOT NULL
);

-- Create an Employees Table
Create table Employees(
	e_id varchar(10) primary key,
	e_name varchar(100),
	e_dob date,
	e_age int,
	e_phone varchar(15),
	e_email varchar(200),
	e_address varchar(200),
	e_city varchar(50),
	e_state varchar(50),
	e_postal_code VARCHAR(10),
	e_d_id varchar(10),
	e_doj date,
	e_experience int,
	e_salary int,
	created_at DATETIME2 DEFAULT SYSDATETIME() NOT NULL,
    updated_at DATETIME2 DEFAULT SYSDATETIME() NOT NULL,
	CONSTRAINT FK_Employee_Department FOREIGN KEY (d_id) REFERENCES Departments (d_id)
    ON DELETE SET NULL -- Optional: Defines action on parent record deletion
    ON UPDATE CASCADE  -- Optional: Defines action on parent key update
);

-- Create Products Table
create table Products(
	p_id varchar(10) primary key,
	p_name varchar(100) not null,
	p_category varchar(100) not null,
	p_subcategory varchar(100),
	quantity int,
	unit_price decimal(8,2),
	discount decimal(8,2),
	price decimal(8,2),
	created_at DATETIME2 DEFAULT SYSDATETIME() NOT NULL,
    updated_at DATETIME2 DEFAULT SYSDATETIME() NOT NULL
);

-- Create Customers Table
create table Customers(
	c_id varchar(10) primary key,
	c_name varchar(50) not null,
	c_email varchar(100),
	c_phone varchar(15) not null,
	c_address varchar(100) Not null,
	c_city varchar(50) Not null,
	c_state varchar(50) Not null,
	c_postal_code VARCHAR(10),
	purchase_amount decimal(8,2),
	created_at DATETIME2 DEFAULT SYSDATETIME() NOT NULL,
    updated_at DATETIME2 DEFAULT SYSDATETIME() NOT NULL
);

-- Create Sales Table
create table Sales(
	s_id varchar(10) primary key,
	p_id varchar(10) not null,
	c_id varchar(10) not null,
	s_date date,
	quantity int,
	unit_price decimal(8,2),
	discount decimal(8,2),
	price decimal(8,2),
	created_at DATETIME2 DEFAULT SYSDATETIME() NOT NULL,
    updated_at DATETIME2 DEFAULT SYSDATETIME() NOT NULL,
	CONSTRAINT FK_Sales_Customers FOREIGN KEY (c_id) REFERENCES Customers (c_id) ON DELETE SET NULL ON UPDATE CASCADE,
	CONSTRAINT FK_Sales_Products FOREIGN KEY (p_id) REFERENCES Products (p_id) ON DELETE SET NULL ON UPDATE CASCADE
);