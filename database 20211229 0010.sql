-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.67-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema sampol
--

CREATE DATABASE IF NOT EXISTS sampol;
USE sampol;

--
-- Definition of table `tblaccesscodes`
--

DROP TABLE IF EXISTS `tblaccesscodes`;
CREATE TABLE `tblaccesscodes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `EmpAcc` varchar(10) default NULL,
  `EmpPosAcc` varchar(10) default NULL,
  `ProdAcc` varchar(10) default NULL,
  `SaleAcc` varchar(10) default NULL,
  `SupplierAcc` varchar(10) default NULL,
  `UserAcc` varchar(10) default NULL,
  `CatAccess` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccesscodes`
--

/*!40000 ALTER TABLE `tblaccesscodes` DISABLE KEYS */;
INSERT INTO `tblaccesscodes` (`id`,`EmpAcc`,`EmpPosAcc`,`ProdAcc`,`SaleAcc`,`SupplierAcc`,`UserAcc`,`CatAccess`) VALUES 
 (1,'12524','12453','253AC','AB124','CAS32','DC321','857AA');
/*!40000 ALTER TABLE `tblaccesscodes` ENABLE KEYS */;


--
-- Definition of table `tbladdedproducts`
--

DROP TABLE IF EXISTS `tbladdedproducts`;
CREATE TABLE `tbladdedproducts` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `salesID` int(10) unsigned NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `amnt` double NOT NULL,
  `pdate` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `unq_sid` (`salesID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladdedproducts`
--

/*!40000 ALTER TABLE `tbladdedproducts` DISABLE KEYS */;
INSERT INTO `tbladdedproducts` (`id`,`salesID`,`pName`,`price`,`qty`,`amnt`,`pdate`) VALUES 
 (21,3,'Paint brush thick',150,5,750,'2021-12-27 00:00:00'),
 (22,3,'Drilling machine',15000,1,15000,'2021-12-20 00:00:00'),
 (24,4,'Nails',50,2,100,'2021-12-21 00:00:00'),
 (25,4,'Electrical Tape',50,1,50,'2021-12-21 00:00:00'),
 (27,3,'Paint brush thick',150,5,750,'2021-12-22 00:00:00'),
 (29,4,'Nails',50,5,750,'2021-12-22 00:00:00'),
 (30,4,'Drilling machine',15000,2,30000,'2021-12-22 00:00:00'),
 (31,3,'Electrical Tape',50,10,500,'2021-12-22 00:00:00'),
 (39,3,'Paint brush thick',150,5,750,'2021-12-27 00:00:00'),
 (40,5,'Nails',50,3,150,'2021-12-27 00:00:00');
/*!40000 ALTER TABLE `tbladdedproducts` ENABLE KEYS */;


--
-- Definition of table `tblcategories`
--

DROP TABLE IF EXISTS `tblcategories`;
CREATE TABLE `tblcategories` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `categoryID` int(10) unsigned NOT NULL,
  `categoryName` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unq_categoryname` (`categoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategories`
--

/*!40000 ALTER TABLE `tblcategories` DISABLE KEYS */;
INSERT INTO `tblcategories` (`id`,`categoryID`,`categoryName`,`description`) VALUES 
 (1,1,'Electrical','Products are related to electrical'),
 (2,2,'Roofing','Products are related to house building escpecially roof.'),
 (3,3,'Power tools','Tools or devices use for construction'),
 (4,4,'Paint','Products here are relevent to painting');
/*!40000 ALTER TABLE `tblcategories` ENABLE KEYS */;


--
-- Definition of table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
CREATE TABLE `tblcustomer` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `custID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unq_custID` (`custID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

/*!40000 ALTER TABLE `tblcustomer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomer` ENABLE KEYS */;


--
-- Definition of table `tblemployee`
--

DROP TABLE IF EXISTS `tblemployee`;
CREATE TABLE `tblemployee` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `employeeID` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `age` int(10) unsigned NOT NULL,
  `bdate` datetime NOT NULL,
  `gender` varchar(45) NOT NULL,
  `address` varchar(200) NOT NULL,
  `emailAdd` varchar(45) NOT NULL,
  `hiredDate` datetime NOT NULL,
  `jobID` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unique_empID` (`employeeID`),
  KEY `FK_jobID` (`jobID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployee`
--

/*!40000 ALTER TABLE `tblemployee` DISABLE KEYS */;
INSERT INTO `tblemployee` (`id`,`employeeID`,`firstname`,`lastname`,`age`,`bdate`,`gender`,`address`,`emailAdd`,`hiredDate`,`jobID`) VALUES 
 (1,'1234','Johnny','Bravo',21,'2000-09-06 00:00:00','MALE','Tagum City','bravo@gmail.com','2021-12-11 00:00:00','1'),
 (4,'122','Joshua','Garcia',22,'1998-08-01 00:00:00','MALE','Marikina City','garcia.j@gmail.com','2020-06-13 00:00:00','2'),
 (5,'1223','Jane','De Leon',19,'2001-09-05 00:00:00','FEMALE','Quezon City','deleon@gmail.com','2020-09-10 00:00:00','1'),
 (6,'1221','Maribeth','Gonzales',18,'2002-10-09 00:00:00','FEMALE','Davao City','gonzales@gmail.com','2021-09-15 00:00:00','3'),
 (7,'1220','Jenny','Brave',20,'2001-10-16 00:00:00','FEMALE','Tagum City','bravo.jenny@gmail.com','2021-09-08 00:00:00','Manager'),
 (8,'1022','James','Bond',20,'2001-10-10 00:00:00','MALE','Cebu City','bond@gmail.com','2021-08-03 00:00:00','Cashier'),
 (9,'1001','Jenny','De Leon',22,'1999-09-08 00:00:00','FEMALE','Dipolog City','jen.deleon@gmail.com','2021-08-17 00:00:00','3'),
 (10,'1112','adfa','sdfa',22,'2021-06-09 00:00:00','MALE','sdfasd','sdfasd','2021-11-16 00:00:00','Cashier');
/*!40000 ALTER TABLE `tblemployee` ENABLE KEYS */;


--
-- Definition of table `tblemployeepositions`
--

DROP TABLE IF EXISTS `tblemployeepositions`;
CREATE TABLE `tblemployeepositions` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `position` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `salary` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unq_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployeepositions`
--

/*!40000 ALTER TABLE `tblemployeepositions` DISABLE KEYS */;
INSERT INTO `tblemployeepositions` (`id`,`position`,`description`,`salary`) VALUES 
 (1,'Manager','Manages the business',20000),
 (2,'Cashier','Handles customer service',13000);
/*!40000 ALTER TABLE `tblemployeepositions` ENABLE KEYS */;


--
-- Definition of table `tblprintdata`
--

DROP TABLE IF EXISTS `tblprintdata`;
CREATE TABLE `tblprintdata` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tempData1` varchar(300) default NULL,
  `tempData2` varchar(300) default NULL,
  `tempData3` varchar(300) default NULL,
  `tempData4` varchar(300) default NULL,
  `tempData5` varchar(300) default NULL,
  `tempData6` varchar(300) default NULL,
  `tempData7` varchar(300) default NULL,
  `tempData8` varchar(300) default NULL,
  `tempData9` varchar(300) default NULL,
  `tempData10` varchar(300) default NULL,
  `tempData11` varchar(300) default NULL,
  `tempData12` varchar(300) default NULL,
  `tempData13` varchar(300) default NULL,
  `tempData14` varchar(300) default NULL,
  `tempData15` varchar(300) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprintdata`
--

/*!40000 ALTER TABLE `tblprintdata` DISABLE KEYS */;
INSERT INTO `tblprintdata` (`id`,`tempData1`,`tempData2`,`tempData3`,`tempData4`,`tempData5`,`tempData6`,`tempData7`,`tempData8`,`tempData9`,`tempData10`,`tempData11`,`tempData12`,`tempData13`,`tempData14`,`tempData15`) VALUES 
 (382,'Nails','50','3','150',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (383,NULL,NULL,NULL,NULL,'5','5','200','150','50',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblprintdata` ENABLE KEYS */;


--
-- Definition of table `tblproducts`
--

DROP TABLE IF EXISTS `tblproducts`;
CREATE TABLE `tblproducts` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `productID` varchar(5) NOT NULL,
  `productName` varchar(45) NOT NULL,
  `description` varchar(100) NOT NULL,
  `categoryName` varchar(100) NOT NULL,
  `ttlQuantity` int(10) unsigned NOT NULL,
  `supplierName` varchar(100) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `AvailSupply` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unq_prodID` (`productID`),
  UNIQUE KEY `unq_prodName` (`productName`),
  KEY `FK_supplierName` (`supplierName`),
  CONSTRAINT `FK_supplierName` FOREIGN KEY (`supplierName`) REFERENCES `tblsupplier` (`supplierName`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

/*!40000 ALTER TABLE `tblproducts` DISABLE KEYS */;
INSERT INTO `tblproducts` (`id`,`productID`,`productName`,`description`,`categoryName`,`ttlQuantity`,`supplierName`,`price`,`AvailSupply`) VALUES 
 (2,'00001','Plain Roof x8 meter','asdaD','Roofing',50,'Davao Roofing',600,50),
 (3,'00002','Electrical Tape','Use for wounded electrical wire','Electrical',100,'Citi Hardware',50,100),
 (4,'00003','Plain Roof x12 meters','12m long','Roofing',50,'Davao Roofing',800,50),
 (6,'00005','Drilling machine','Use for drilling road','Power tools',20,'Citi Hardware',15000,20),
 (7,'00007','Nails','nails','Electrical',200,'Davao Roofing',50,197),
 (8,'6','Hammer','hammer','Power tools',20,'Citi Hardware',450,20);
/*!40000 ALTER TABLE `tblproducts` ENABLE KEYS */;


--
-- Definition of table `tblsales`
--

DROP TABLE IF EXISTS `tblsales`;
CREATE TABLE `tblsales` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `salesID` varchar(10) NOT NULL,
  `customerID` int(10) unsigned NOT NULL,
  `pdate` datetime NOT NULL,
  `ttlamount` double NOT NULL,
  `pchange` double NOT NULL,
  `amntTender` double NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unq_salesid` (`salesID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsales`
--

/*!40000 ALTER TABLE `tblsales` DISABLE KEYS */;
INSERT INTO `tblsales` (`id`,`salesID`,`customerID`,`pdate`,`ttlamount`,`pchange`,`amntTender`) VALUES 
 (3,'3',3,'2021-12-27 00:00:00',17750,32250,50000),
 (4,'4',4,'2021-12-27 00:00:00',30900,9100,40000),
 (5,'5',5,'2021-12-27 00:00:00',150,50,200);
/*!40000 ALTER TABLE `tblsales` ENABLE KEYS */;


--
-- Definition of table `tblsupplier`
--

DROP TABLE IF EXISTS `tblsupplier`;
CREATE TABLE `tblsupplier` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `supplierID` int(10) unsigned NOT NULL,
  `supplierName` varchar(45) NOT NULL,
  `contactPerson` varchar(45) NOT NULL,
  `contactNo` varchar(13) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unq_SuppID` (`supplierID`),
  UNIQUE KEY `unq_supName` (`supplierName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsupplier`
--

/*!40000 ALTER TABLE `tblsupplier` DISABLE KEYS */;
INSERT INTO `tblsupplier` (`id`,`supplierID`,`supplierName`,`contactPerson`,`contactNo`,`gender`,`address`) VALUES 
 (1,1,'Citi Hardware','Jacob Batumbacal','09301825956','MALE','Tagum City'),
 (3,3,'Davao Roofing','Marie Santuryo','09321585623','FEMALE','Davao City');
/*!40000 ALTER TABLE `tblsupplier` ENABLE KEYS */;


--
-- Definition of table `tblsystemusers`
--

DROP TABLE IF EXISTS `tblsystemusers`;
CREATE TABLE `tblsystemusers` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `userID` varchar(45) NOT NULL,
  `empID` int(10) unsigned NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unq_userID` (`userID`),
  UNIQUE KEY `unq_empid` (`empID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsystemusers`
--

/*!40000 ALTER TABLE `tblsystemusers` DISABLE KEYS */;
INSERT INTO `tblsystemusers` (`id`,`userID`,`empID`,`username`,`password`) VALUES 
 (1,'1',1022,'Admin','Admin'),
 (2,'2',1223,'james','bond123'),
 (3,'3',1221,'jhone25','12345'),
 (4,'4',1112,'admin','admin123');
/*!40000 ALTER TABLE `tblsystemusers` ENABLE KEYS */;


--
-- Definition of procedure `prcAccess`
--

DROP PROCEDURE IF EXISTS `prcAccess`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAccess`(v_username varchar(45), v_password varchar(45))
BEGIN
  select * from tblsystemusers where username =v_username and password=v_password  and id=1;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcAccessCategories`
--

DROP PROCEDURE IF EXISTS `prcAccessCategories`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAccessCategories`( v_access varchar(10))
BEGIN
         select * from tblaccesscodes where CatAccess=v_access;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcAccessEmployee`
--

DROP PROCEDURE IF EXISTS `prcAccessEmployee`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAccessEmployee`( v_access varchar(10))
BEGIN
         select * from tblaccesscodes where EmpAcc=v_access;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcAccessEmpPos`
--

DROP PROCEDURE IF EXISTS `prcAccessEmpPos`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAccessEmpPos`( v_access varchar(10))
BEGIN
         select * from tblaccesscodes where EmpPosAcc=v_access;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcAccessProduct`
--

DROP PROCEDURE IF EXISTS `prcAccessProduct`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAccessProduct`( v_access varchar(10))
BEGIN
         select * from tblaccesscodes where ProdAcc=v_access;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcAccessSales`
--

DROP PROCEDURE IF EXISTS `prcAccessSales`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAccessSales`( v_access varchar(10))
BEGIN
         select * from tblaccesscodes where SaleAcc=v_access;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcAccessSupplier`
--

DROP PROCEDURE IF EXISTS `prcAccessSupplier`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAccessSupplier`( v_access varchar(10))
BEGIN
         select * from tblaccesscodes where SupplierAcc=v_access;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcAccessUsers`
--

DROP PROCEDURE IF EXISTS `prcAccessUsers`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAccessUsers`( v_access varchar(10))
BEGIN
         select * from tblaccesscodes where UserAcc=v_access;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDeleteAddedProdByID`
--

DROP PROCEDURE IF EXISTS `prcDeleteAddedProdByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteAddedProdByID`(v_id integer)
BEGIN
     Delete from tbladdedproducts where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDeleteCatByID`
--

DROP PROCEDURE IF EXISTS `prcDeleteCatByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteCatByID`(v_id integer)
BEGIN
     Delete from tblcategories where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDeleteEmployeeByID`
--

DROP PROCEDURE IF EXISTS `prcDeleteEmployeeByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteEmployeeByID`(v_id integer)
BEGIN
     Delete from tblemployee where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDeletePosByID`
--

DROP PROCEDURE IF EXISTS `prcDeletePosByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeletePosByID`(v_id integer)
BEGIN
     Delete from tblemployeepositions where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDeleteProductByID`
--

DROP PROCEDURE IF EXISTS `prcDeleteProductByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteProductByID`(v_id integer)
BEGIN
     Delete from tblproducts where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDeleteSaleByID`
--

DROP PROCEDURE IF EXISTS `prcDeleteSaleByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteSaleByID`(v_id integer)
BEGIN
     Delete from tblsales where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDeleteSupplierByID`
--

DROP PROCEDURE IF EXISTS `prcDeleteSupplierByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteSupplierByID`(v_id integer)
BEGIN
     Delete from tblsupplier where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDeleteUsersByID`
--

DROP PROCEDURE IF EXISTS `prcDeleteUsersByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteUsersByID`(v_id integer)
BEGIN
     Delete from tblsystemusers where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayAddedProduct`
--

DROP PROCEDURE IF EXISTS `prcDisplayAddedProduct`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayAddedProduct`()
BEGIN
    Select * from tbladdedproducts order by salesID asc;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayAddedProductByAutoComplete`
--

DROP PROCEDURE IF EXISTS `prcDisplayAddedProductByAutoComplete`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayAddedProductByAutoComplete`( v_search varchar(150))
BEGIN
   select * from tbladdedproducts where salesID like concat(v_search,'%');
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayAllAddedProducts`
--

DROP PROCEDURE IF EXISTS `prcDisplayAllAddedProducts`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayAllAddedProducts`( v_search varchar(150))
BEGIN
    select * from tbladdedproducts where salesID like concat(v_search,'%');
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayBillNo`
--

DROP PROCEDURE IF EXISTS `prcDisplayBillNo`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayBillNo`()
BEGIN
   select * from tbladdedproducts order by salesID;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayByAutoCompleteUsers`
--

DROP PROCEDURE IF EXISTS `prcDisplayByAutoCompleteUsers`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayByAutoCompleteUsers`( v_search varchar(150))
BEGIN
        select * from tblsystemusers where empID like concat(v_search,'%');
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayCatByAutoComplete`
--

DROP PROCEDURE IF EXISTS `prcDisplayCatByAutoComplete`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayCatByAutoComplete`( v_search varchar(150))
BEGIN
        select * from tblcategories where categoryName like concat(v_search,'%');
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayCatByCat`
--

DROP PROCEDURE IF EXISTS `prcDisplayCatByCat`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayCatByCat`( v_search varchar(150))
BEGIN
         select * from tblcategories where categoryName=v_search;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayCategory`
--

DROP PROCEDURE IF EXISTS `prcDisplayCategory`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayCategory`()
BEGIN
   Select * from tblcategories order by categoryName asc;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayCategoryByCategoryName`
--

DROP PROCEDURE IF EXISTS `prcDisplayCategoryByCategoryName`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayCategoryByCategoryName`()
BEGIN
      select * from tblcategories order by categoryName;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayCodes`
--

DROP PROCEDURE IF EXISTS `prcDisplayCodes`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayCodes`()
BEGIN
   Select * from tblaccesscodes order by id asc;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayEmployee`
--

DROP PROCEDURE IF EXISTS `prcDisplayEmployee`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayEmployee`()
BEGIN
  select * from tblemployee order by employeeID;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayEmployeeByAutoComplete`
--

DROP PROCEDURE IF EXISTS `prcDisplayEmployeeByAutoComplete`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayEmployeeByAutoComplete`( v_search varchar(150))
BEGIN
        select * from tblemployee where lastname like concat(v_search,'%');
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayEmployeeByEmployeeID`
--

DROP PROCEDURE IF EXISTS `prcDisplayEmployeeByEmployeeID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayEmployeeByEmployeeID`()
BEGIN
      select * from tblemployee order by id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayEmployeeByFullname`
--

DROP PROCEDURE IF EXISTS `prcDisplayEmployeeByFullname`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayEmployeeByFullname`( v_search varchar(150))
BEGIN
         select * from tblemployee where lastname=v_search;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayEmployeeByLastname`
--

DROP PROCEDURE IF EXISTS `prcDisplayEmployeeByLastname`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayEmployeeByLastname`()
BEGIN
  Select * from tblemployee order by lastname asc;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayEmpPosByPosition`
--

DROP PROCEDURE IF EXISTS `prcDisplayEmpPosByPosition`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayEmpPosByPosition`()
BEGIN
      select * from tblemployeepositions order by position;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayEmpPositions`
--

DROP PROCEDURE IF EXISTS `prcDisplayEmpPositions`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayEmpPositions`()
BEGIN
   Select * from tblemployeepositions order by position asc;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayPosByAutoComplete`
--

DROP PROCEDURE IF EXISTS `prcDisplayPosByAutoComplete`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayPosByAutoComplete`( v_search varchar(150))
BEGIN
        select * from tblemployeepositions where position like concat(v_search,'%');
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayProduct`
--

DROP PROCEDURE IF EXISTS `prcDisplayProduct`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayProduct`()
BEGIN
  Select * from tblproducts order by categoryName asc;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayProductByAutoComplete`
--

DROP PROCEDURE IF EXISTS `prcDisplayProductByAutoComplete`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayProductByAutoComplete`( v_search varchar(150))
BEGIN
   select * from tblproducts where productName like concat(v_search,'%');
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayProductByCategoryName`
--

DROP PROCEDURE IF EXISTS `prcDisplayProductByCategoryName`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayProductByCategoryName`( v_search varchar(150))
BEGIN
    select * from tblproducts where productName=v_search;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplaySales`
--

DROP PROCEDURE IF EXISTS `prcDisplaySales`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplaySales`()
BEGIN
  Select * from tblsales order by salesID asc;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplaySalesByAutoComplete`
--

DROP PROCEDURE IF EXISTS `prcDisplaySalesByAutoComplete`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplaySalesByAutoComplete`( v_search varchar(150))
BEGIN
        select * from tblsales where salesID like concat(v_search,'%');
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplaySearchPos`
--

DROP PROCEDURE IF EXISTS `prcDisplaySearchPos`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplaySearchPos`( v_search varchar(150))
BEGIN
         select * from tblemployeepositions where position=v_search;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplaySupplier`
--

DROP PROCEDURE IF EXISTS `prcDisplaySupplier`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplaySupplier`()
BEGIN
  Select * from tblsupplier order by supplierName asc;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplaySupplierByAutoComplete`
--

DROP PROCEDURE IF EXISTS `prcDisplaySupplierByAutoComplete`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplaySupplierByAutoComplete`( v_search varchar(150))
BEGIN
        select * from tblsupplier where supplierName like concat(v_search,'%');
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplaySupplierBysupName`
--

DROP PROCEDURE IF EXISTS `prcDisplaySupplierBysupName`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplaySupplierBysupName`( v_search varchar(150))
BEGIN
         select * from tblsupplier where supplierName=v_search;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplaySupplierBySupplierName`
--

DROP PROCEDURE IF EXISTS `prcDisplaySupplierBySupplierName`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplaySupplierBySupplierName`()
BEGIN
      select * from tblsupplier order by supplierName;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayUsername`
--

DROP PROCEDURE IF EXISTS `prcDisplayUsername`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayUsername`(v_user varchar(45))
BEGIN
    Select * from tblsystemusers where username=v_user;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayUsers`
--

DROP PROCEDURE IF EXISTS `prcDisplayUsers`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayUsers`()
BEGIN
     Select * from tblsystemusers order by userID asc;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayUsersByUserID`
--

DROP PROCEDURE IF EXISTS `prcDisplayUsersByUserID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayUsersByUserID`( v_search varchar(150))
BEGIN
         select * from tblsystemusers where userID=v_search;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcInsertAccessCodes`
--

DROP PROCEDURE IF EXISTS `prcInsertAccessCodes`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertAccessCodes`(v_empPos varchar(10),
                                                 v_emp varchar(10),
                                                 v_prod varchar(10),
                                                 v_sales varchar(10),
                                                 v_supplier varchar(10),
                                                 v_user varchar(10),
                                                 v_Cat varchar(10) )
BEGIN
   insert into tblaccesscodes(EmpPosAcc,EmpAcc,ProdAcc,SaleAcc,SupplierAcc,UserAcc,CatAccess)
   values(v_empPos,v_emp,v_prod,v_sales,v_supplier,v_user,v_Cat);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcInsertAddedProduct`
--

DROP PROCEDURE IF EXISTS `prcInsertAddedProduct`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertAddedProduct`(v_salesID integer,
                                                v_pname varchar(100),
                                                v_price double,
                                                v_qty integer,
                                                v_amnt double,
                                                v_date datetime
                                               )
BEGIN
   insert into tbladdedproducts(salesID,pName,price,qty,amnt,pdate)
                       values(v_salesID,v_pname,v_price,v_qty,v_amnt,v_date);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcInsertCategory`
--

DROP PROCEDURE IF EXISTS `prcInsertCategory`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertCategory`(v_categoryID INTEGER,
                                                                v_categoryName varchar(45),
                                                                 v_desc varchar(100)
                                                                       )
BEGIN
   insert into tblcategories(categoryID,categoryName,description)
   values(v_categoryID,v_categoryName,v_desc);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcInsertEmployee`
--

DROP PROCEDURE IF EXISTS `prcInsertEmployee`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertEmployee`(v_employeeID varchar(45),
                                                v_firstname varchar(45),
                                                v_lastname varchar(45),
                                                v_age integer,
                                                v_bdate datetime,
                                                v_gender varchar(45),
                                                v_address varchar(200),
                                                v_emailAdd  varchar(45),
                                                v_hiredDate datetime,
                                                v_jobID varchar(45)
                                               )
BEGIN
   insert into tblemployee(employeeID,firstname,lastname,age,bdate,gender,address,emailAdd,hiredDate,jobID)
   values(v_employeeID,v_firstname,v_lastname,v_age,v_bdate,v_gender,v_address,v_emailAdd,v_hiredDate,v_jobID);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcInsertPositions`
--

DROP PROCEDURE IF EXISTS `prcInsertPositions`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertPositions`(v_position varchar(50),
                                                v_desc varchar(200),
                                                v_salary integer

                                               )
BEGIN
   insert into tblemployeepositions(position,description,salary)
   values(v_position,v_desc,v_salary);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcInsertProduct`
--

DROP PROCEDURE IF EXISTS `prcInsertProduct`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertProduct`(v_pid integer,
                                                v_prodName varchar(45),
                                                v_price integer,
                                                v_desc varchar(100),
                                                v_prodCat varchar(100),
                                                v_ttlSupply integer,
                                                v_AvailSupply integer,
                                                v_supName varchar(100)
                                               )
BEGIN
   insert into tblproducts(productID,productName,price,description,categoryName,ttlQuantity,supplierName,AvailSupply)
   values(v_pid,v_prodName,v_price,v_desc,v_prodCat,v_ttlSupply,v_supName,v_AvailSupply);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcInsertSale`
--

DROP PROCEDURE IF EXISTS `prcInsertSale`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertSale`(v_saleID varchar(10),
                                                v_custID integer,
                                                v_date  datetime,
                                                v_ttlamnt double,
                                                v_change double,
                                                v_amntTender double
                                               )
BEGIN
   INSERT INTO tblsales(salesID,customerID,pdate,ttlamount,pchange,amntTender)
           values(v_saleID,v_custID,v_date,v_ttlamnt,v_change,v_amntTender);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcInsertSupplier`
--

DROP PROCEDURE IF EXISTS `prcInsertSupplier`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertSupplier`(v_supID integer,
                                                v_supName varchar(45),
                                                v_contactPerson varchar(45),
                                                v_contactNo varchar(13),
                                                v_gender varchar(45),
                                                v_address varchar(100)
                                               )
BEGIN
   insert into tblsupplier(supplierID,supplierName,contactPerson,contactNo,gender,address)
   values(v_supID,v_supName,v_contactPerson,v_contactNo,v_gender,v_address);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcInsertUsers`
--

DROP PROCEDURE IF EXISTS `prcInsertUsers`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertUsers`(v_userID integer,
                                                v_employeeID integer,
                                                v_username varchar(45),
                                                v_password varchar(45)
                                               )
BEGIN
   insert into tblsystemusers(userID,empID,username,password)
   values(v_userID,v_employeeID,v_username,v_password);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcReturnTotalSum`
--

DROP PROCEDURE IF EXISTS `prcReturnTotalSum`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcReturnTotalSum`()
BEGIN
  SELECT sum(ttlamount) FROM tblsales;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcSearchUserAndPass`
--

DROP PROCEDURE IF EXISTS `prcSearchUserAndPass`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSearchUserAndPass`(v_username varchar(45), v_password varchar(45))
BEGIN
  select * from tblsystemusers where username =v_username and password=v_password;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcUpdateAccessCOde`
--

DROP PROCEDURE IF EXISTS `prcUpdateAccessCOde`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateAccessCOde`(v_id integer,
                                                 v_emp varchar(10),
                                                v_empPos varchar(10),
                                                v_prod varchar(10),
                                                v_sales varchar(10),
                                                v_supplier varchar(10),
                                                v_user varchar(10),
                                                v_Cat varchar(10)
                                               )
BEGIN
    update tblaccesscodes set  EmpAcc=v_emp,
                            EmpPosAcc= v_empPos,
                           ProdAcc = v_prod,
                           SaleAcc =  v_sales,
                           SupplierAcc =  v_supplier,
                           UserAcc =  v_user,
                           CatAccess =  v_Cat
                               where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcUpdateAddedProd`
--

DROP PROCEDURE IF EXISTS `prcUpdateAddedProd`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateAddedProd`(v_id integer,
                                                v_saleID integer,
                                                v_pname varchar(100),
                                                v_price double,
                                                v_qty integer,
                                                v_amount double,
                                                v_date  datetime
                                               )
BEGIN
    update tbladdedproducts set salesID= v_saleID,
                           pName =v_pname,
                           price=v_price,
                           qty= v_qty,
                           amnt=v_amount,
                           pdate=v_date
                           where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcUpdateCatByID`
--

DROP PROCEDURE IF EXISTS `prcUpdateCatByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateCatByID`(v_id integer,
                                                v_catID integer,
                                                v_catName varchar(45),
                                                v_desc varchar(100)
                                                )
BEGIN
    update tblcategories set  categoryID=v_catID,
                            categoryName= v_catName,
                           description = v_desc
                               where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcUpdateEmployeebyID`
--

DROP PROCEDURE IF EXISTS `prcUpdateEmployeebyID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateEmployeebyID`(v_id integer,
                                                v_employeeID varchar(45),
                                                v_firstname varchar(45),
                                                v_lastname varchar(45),
                                                v_age integer,
                                                v_bdate datetime,
                                                v_gender varchar(45),
                                                v_address varchar(200),
                                                v_emailAdd  varchar(45),
                                                v_hiredDate datetime,
                                                v_jobID varchar(45)
                                               )
BEGIN
    update tblemployee set employeeID= v_employeeID,
                           firstname = v_firstname,
                           lastname =  v_lastname,
                           age =   v_age,
                           bdate =  v_bdate,
                           gender = v_gender,
                           address =v_address,
                           emailAdd = v_emailAdd,
                           hiredDate =  v_hiredDate,
                           jobID   = v_jobID
                               where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcUpdatePosByID`
--

DROP PROCEDURE IF EXISTS `prcUpdatePosByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdatePosByID`(v_id integer,
                                                v_position varchar(50),
                                                v_desc varchar(200),
                                                v_salary integer
                                                )
BEGIN
    update tblemployeepositions set  position=v_position,
                            description= v_desc,
                           salary = v_salary
                               where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcUpdateProductAvailSupply`
--

DROP PROCEDURE IF EXISTS `prcUpdateProductAvailSupply`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateProductAvailSupply`(v_id integer,v_avail integer)
BEGIN
    update tblproducts set AvailSupply=v_avail
                            where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcUpdateProductByID`
--

DROP PROCEDURE IF EXISTS `prcUpdateProductByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateProductByID`(v_id integer,
                                                v_pid varchar(5),
                                                v_prodName varchar(45),
                                                v_price integer,
                                                v_desc varchar(100),
                                                v_prodCat varchar(100),
                                                v_ttlSupply integer,
                                                v_AvailSupply  integer,
                                                v_supName varchar(100)
                                               )
BEGIN
    update tblproducts set productID= v_pid,
                           productName = v_prodName,
                           description =  v_desc,
                           categoryName =   v_prodCat,
                           ttlQuantity = v_ttlSupply,
                           supplierName =v_supName,
                           price=v_price,
                           AvailSupply=v_AvailSupply
                               where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcUpdateSaleByID`
--

DROP PROCEDURE IF EXISTS `prcUpdateSaleByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateSaleByID`(v_id integer,
                                                v_saleID varchar(10),
                                                v_custID integer,
                                                v_change double,
                                                v_ttlamnt double,
                                                v_amountTendered integer,
                                                v_date  datetime
                                               )
BEGIN
    update tblsales set salesID= v_saleID,
                           customerID =v_custID,
                           ttlamount=v_ttlamnt,
                           pchange= v_change,
                           amntTender=v_amountTendered,
                           pdate=v_date
                           where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcUpdateSupplierByID`
--

DROP PROCEDURE IF EXISTS `prcUpdateSupplierByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateSupplierByID`(v_id integer,
                                                v_supID integer,
                                                v_supName varchar(45),
                                                v_contactPerson varchar(45),
                                                v_contactNo varchar(13),
                                                v_gender varchar(45),
                                                v_address varchar(100)
                                               )
BEGIN
    update tblsupplier set supplierID= v_supID,
                           supplierName = v_supName,
                           contactPerson =  v_contactPerson,
                           contactNo =   v_contactNo,
                           gender = v_gender,
                           address =v_address
                               where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcUpdateUsers`
--

DROP PROCEDURE IF EXISTS `prcUpdateUsers`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateUsers`(v_id integer,
                                                v_userID varchar(45),
                                                v_employeeID varchar(45),
                                                v_username varchar(45),
                                                v_password varchar(45)
                                               )
BEGIN
    update tblsystemusers set  userID=v_userID,
                            empID= v_employeeID,
                           username = v_username,
                           password =  v_password
                               where id=v_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
