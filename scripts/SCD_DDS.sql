create database SCD_DDS
go

use SCD_DDS
go

create table DimCustomer (
	CustomerKey int,
	CustomerID int,
	CustomerName varchar(50),
	CustomerSex varchar(50),
	CustomerEmail varchar(50),
	CustomerCity varchar(50),
	primary key (CustomerKey)
)
go
