create database SCD_DDS
go

use SCD_DDS
go

create table DimCustomer (
	CustomerKey int IDENTITY(1,1),
	CustomerID int,
	CustomerName varchar(50),
	CustomerSex varchar(50),
	CustomerEmail varchar(50),
	CustomerCity varchar(50),
	CustomerJob varchar(50),
	ValidFrom Date,
	ValidTo Date,
	[CustomerCompanyName] varchar(50),
	[CustomerCorporateDepartment] varchar(50),
	[CustomerRetailDepartment] varchar(50),
	[CustomerJobSkill] varchar(50),
	[CustomerStockSector] varchar(50),
	[CustomerDateofBirth] Date,
	[CustomerUniversityName] varchar(50),
	[CustomerSchoolSubjects] varchar(50),
	[CustomerEducationalinstitution] varchar(50),
	[CustomerFavoriteMovieGenre] varchar(50),
	[CustomerFavoriteMovie] varchar(50),
	[CustomerFavoriteBookAuthors] varchar(50),
	[CustomerfavoriteBook] varchar(50),
	[CustomerfavoriteMusicGenre] varchar(50),
	[CustomerfavoriteSong] varchar(50),
	[CustomerCreditCardType] varchar(50),
	[CustomerCreditCardNumber] varchar(50),
	[CustomerCurrency] varchar(50),
	[CustomerCountry] varchar(50),
	[CustomerUSState] varchar(50),
	[CustomerStreetAddress] varchar(200),
	[CustomerShippingAddress] varchar(500),
	[CustomerBussinessAddress] varchar(200),
	[CustomerLanguage] varchar(50),
	[CustomerStreet] varchar(50),
	[CustomerClothesSize] varchar(50),
	[CustomerCar] varchar(50),
	[CustomerPersonalIdentificationNumber] varchar(50),
	[CustomerPhoneNumber] varchar(50),
	[CustomerIPv4] varchar(50),
	[CustomerMaritalStatus] varchar(50),
	[CustomerDriverLicense] varchar(50),
	[CustomerNote] varchar(50)
	primary key (CustomerKey)
)
go
CREATE INDEX CustomerID_index
ON DimCustomer (CustomerID);
go
Alter Table [dbo].[DimCustomer]
ADD 
[Hash_SCD1] AS CONVERT(CHAR(100),HASHBYTES('SHA2_256',CONCAT([CustomerName],[CustomerEmail],[CustomerDriverLicense],[CustomerNote],CustomerSex,[CustomerCar],[CustomerMaritalStatus],[CustomerIPv4],[CustomerPersonalIdentificationNumber],[CustomerPhoneNumber],[CustomerStockSector],[CustomerStreet],[CustomerLanguage],[CustomerFavoriteMovie],[CustomerfavoriteBook],[CustomerfavoriteSong],[CustomerCreditCardType],[CustomerClothesSize],[CustomerCreditCardNumber],[CustomerCurrency])),1),
[Hash_SCD2] AS CONVERT(CHAR(100),HASHBYTES('SHA2_256',CONCAT(CustomerCity,[CustomerJob],[CustomerBussinessAddress],[CustomerCompanyName],[CustomerStreetAddress],[CustomerCorporateDepartment],[CustomerRetailDepartment],[CustomerJobSkill],[CustomerUniversityName],[CustomerSchoolSubjects],[CustomerEducationalInstitution],[CustomerFavoriteMovieGenre],[CustomerFavoriteBookAuthors],[CustomerfavoriteMusicGenre],[CustomerUSState],[CustomerCountry])),1);