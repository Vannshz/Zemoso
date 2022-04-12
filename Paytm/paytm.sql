create database paytm;
use paytm;

CREATE TABLE `Accounts`
(
 `AccountNumber` integer(10) NOT NULL ,
 `AccountType`   integer(10) NOT NULL ,
 `BranchID`      integer(10) NOT NULL ,
 `Balance`       integer NOT NULL ,

PRIMARY KEY (`AccountNumber`),
KEY `FK_43` (`BranchID`),
CONSTRAINT `FK_41` FOREIGN KEY `FK_43` (`BranchID`) REFERENCES `Branches` (`BranchID`)
);


CREATE TABLE `Branches`
(
 `BranchID`         integer(10) NOT NULL ,
 `Name`             varchar(255) NOT NULL ,
 `NumberOfAccounts` integer(10) NOT NULL ,
 `BranchCode`       integer(20) NOT NULL ,
 `Address`          varchar(300) NOT NULL ,

PRIMARY KEY (`BranchID`)
);


CREATE TABLE `Customers`
(
 `CustID`    integer(10) NOT NULL ,
 `FirstName` varchar(200) NOT NULL ,
 `LastName`  varchar(200) NULL ,
 `Mobile`    integer(10) NOT NULL ,
 `DOB`       date NOT NULL ,

PRIMARY KEY (`CustID`)
);


CREATE TABLE `CustAccounts`
(
 `CustID`        integer(10) NOT NULL ,
 `AccountNumber` integer(10) NOT NULL ,

KEY `FK_40` (`AccountNumber`),
CONSTRAINT `FK_38` FOREIGN KEY `FK_40` (`AccountNumber`) REFERENCES `Accounts` (`AccountNumber`),
KEY `FK_46` (`CustID`),
CONSTRAINT `FK_44` FOREIGN KEY `FK_46` (`CustID`) REFERENCES `Customers` (`CustID`)
);





