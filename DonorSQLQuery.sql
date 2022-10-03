CREATE TABLE Donor
(DonorID int,
FirstName varchar(20),
LastName varchar(40),
SSN varchar(11),
Ethnicity varchar(20),
Birthdate date,
CONSTRAINT pk_donor PRIMARY KEY (DonorID))

INSERT INTO Donor
VALUES ('1','Ronald','Reagan','813-69-1981','Caucasian','02-06-1911'),
('2','George','Bush','802-64-1989','Caucasian','06-12-1924'),
('3','Bill','Clinton','128-46-1993','Caucasian','08-19-1946'),
('4','George','Bush','911-53-2001','Caucasian','07-06-1946')

select * from Donor

CREATE TABLE ZipCodes
(ZipCode varchar(10),
City varchar(40),
StateAbbr varchar(2),
CONSTRAINT pk_zipcodes PRIMARY KEY (ZipCode))

INSERT INTO ZipCodes
VALUES ('90077','Los Angeles','CA'),
('93065','Simi Valley','CA'),
('04046','Kennebunkport','ME'),
('77845','College Station','TX'),
('10154','Chappaqua','NY'),
('72201','Little Rock','AR'),
('75229','Dallas','TX'),
('75205','Dallas','TX')

select * from ZipCodes

CREATE TABLE AddressType
(AddressTypeID int,
AddressTypeName varchar(30),
CONSTRAINT pk_addresstype PRIMARY KEY (AddressTypeID))

INSERT INTO AddressType
VALUES ('1','Home'),
('2','Work')

select * from AddressType

CREATE TABLE Addresses
(AddressID int,
Address varchar(30),
ZipCode varchar(10) not null,
AddressType int not null,
DonorID int not null,
CONSTRAINT pk_addresses PRIMARY KEY (AddressID),
CONSTRAINT fk_zipcode FOREIGN KEY (ZipCode) REFERENCES ZipCodes,
CONSTRAINT fk_addresstype FOREIGN KEY (AddressType) REFERENCES AddressType,
CONSTRAINT fk_donorid1 FOREIGN KEY (DonorID) REFERENCES Donor)

INSERT INTO Addresses
VALUES ('1','668 St. Cloud','90077','1','1'),
('2','40 Presidential Dr','93065','2','1'),
('3','229 Ocean Ave','04046','1','2'),
('4','1000 George Bush Dr W','77845','2','2'),
('5','15 Old House Lane','10154','1','3'),
('6','1200 President Clinton Ave','72201','2','3'),
('7','10141 Daria Pl','75229','1','4'),
('8','2943 SMU Boulevard','75205','2','4')

select * from Addresses

CREATE TABLE PhoneType
(PhoneTypeID int,
PhoneTypeName varchar(30),
CONSTRAINT pk_phonetypeid PRIMARY KEY (PhoneTypeID))

INSERT INTO PhoneType
VALUES ('1','Home'),
('2','Work')

select * from PhoneType

CREATE TABLE Phone
(PhoneID int,
PhoneNumber varchar(14),
PhoneType int not null,
DonorID int not null,
CONSTRAINT pk_phoneid PRIMARY KEY (PhoneID),
CONSTRAINT fk_phonetype FOREIGN KEY (PhoneType) REFERENCES PhoneType,
CONSTRAINT fk_donorid2 FOREIGN KEY (DonorID) REFERENCES Donor)

INSERT INTO Phone
VALUES ('1','(815) 288-5176','1','1'),
('2','(805) 522-2977','2','1'),
('3','(757) 444-5668','1','2'),
('4','(979) 691-4041','2','2'),
('5','(870) 777-4455','1','3'),
('6','(501) 374-4242','2','3'),
('7','(432) 685-1112','1','4'),
('8','(214) 200-4300','2','4')

select * from Phone

CREATE TABLE DonationType
(DonationTypeID int,
DonationTypeName varchar(30),
CONSTRAINT pk_donationtypeid PRIMARY KEY (DonationTypeID))

INSERT INTO DonationType
VALUES ('1','Cash'),
('2','Check'),
('3','Credit Card')

select * from DonationType

CREATE TABLE Donation
(DonationID int,
Amount int,
DonationDate date,
Memo varchar(50),
DonorID int not null,
DonationType int not null,
CONSTRAINT pk_donationid PRIMARY KEY (DonationID),
CONSTRAINT fk_donorid3 FOREIGN KEY (DonorID) REFERENCES Donor,
CONSTRAINT fk_donationtype FOREIGN KEY (DonationType) REFERENCES DonationType)

INSERT INTO Donation
VALUES ('1','200','04-16-2003','For Aiding in Stem Cell Research','1','2'),
('2','1000','09-11-2001','For Funeral Expenses','4','1'),
('3','500','12-25-2010','For Christmas Gifts','2','3')

select * from Donation