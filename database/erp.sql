-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2020 at 06:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_coa`
--

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
('502040001', '1-SumanMazumder', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', '2', '2020-09-06 20:44:04', '', '0000-00-00 00:00:00'),
('102030000001', '1-Walking Customer', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 1, NULL, '0.00', '1', '2019-11-16 08:44:42', '', '0000-00-00 00:00:00'),
('502000001', '2-Test Supplier', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 2, '0.00', '2', '2020-09-05 08:12:19', '', '0000-00-00 00:00:00'),
('102030000002', '2-Touhid', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 2, NULL, '0.00', '2', '2020-09-16 11:24:01', '', '0000-00-00 00:00:00'),
('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, '0.00', 'admin', '2015-10-15 19:50:43', '', '2019-09-05 00:00:00'),
('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2013-09-18 15:29:35'),
('1', 'Assets', 'COA', 0, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-06-25 13:47:29', 'admin', '2015-10-15 15:57:55'),
('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-03-18 06:08:18', 'admin', '2015-10-15 15:32:42'),
('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-26 07:38:48', 'admin', '2016-05-23 12:05:43'),
('102', 'Current Asset', 'Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2018-07-07 11:23:00'),
('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-24 12:10:05', 'admin', '2018-07-07 12:31:42'),
('50204', 'Employee Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, '0.00', '1', '2019-04-08 10:36:32', '', '2019-09-05 00:00:00'),
('403', 'Employee Salary', 'Expence', 1, 1, 1, 0, 'E', 0, 1, NULL, NULL, '1.00', '1', '2019-06-17 11:44:52', '', '2019-09-05 00:00:00'),
('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('4', 'Expence', 'COA', 0, 1, 0, 0, 'E', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('10102', 'Furniture', 'Non Current Assets', 2, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', '2', '2020-09-08 07:26:32', '', '0000-00-00 00:00:00'),
('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('40101', 'Internet Bill', 'Operating Expenses', 2, 1, 1, 0, 'E', 0, 0, NULL, NULL, '0.00', '2', '2020-09-05 08:01:07', '', '0000-00-00 00:00:00'),
('10107', 'Inventory', 'Non Current Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '2', '2018-07-07 15:21:58', '', '2019-09-05 00:00:00'),
('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54'),
('1020302', 'Loan Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-26 07:37:20', '', '2019-09-05 00:00:00'),
('101', 'Non Current Assets', 'Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2015-10-15 15:29:11'),
('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('40102', 'Office Rent', 'Operating Expenses', 2, 1, 1, 0, 'E', 0, 0, NULL, NULL, '0.00', '2', '2020-09-05 08:01:32', '', '0000-00-00 00:00:00'),
('401', 'Operating Expenses', 'Expence', 1, 1, 1, 0, 'E', 0, 1, NULL, NULL, '1.00', '2', '2020-09-05 08:00:43', '', '0000-00-00 00:00:00'),
('402', 'Product Purchase', 'Expence', 1, 1, 0, 0, 'E', 0, 0, NULL, NULL, '0.00', '2', '2018-07-07 14:00:16', 'admin', '2015-10-15 18:37:42'),
('303', 'Product Sale', 'Income', 1, 1, 1, 0, 'I', 0, 0, NULL, NULL, '0.00', '1', '2019-06-17 08:22:42', '', '2019-09-05 00:00:00'),
('304', 'Service Income', 'Income', 1, 1, 1, 0, 'I', 0, 0, NULL, NULL, '0.00', '1', '2019-06-17 11:31:11', '', '2019-09-05 00:00:00'),
('30401', 'Service Revenue', 'Service Income', 2, 1, 1, 0, 'I', 0, 0, NULL, NULL, '0.00', '2', '2020-10-26 16:03:41', '', '0000-00-00 00:00:00'),
('102010201', 'Trust Bank Ltd.', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', '2', '2020-09-05 10:05:01', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_transaction`
--

INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES
(1, 'DV-1', 'DV', '2020-09-05', '40101', '', '1000.00', '0.00', '1', NULL, '2020-09-05 08:23:38', NULL, NULL, '0'),
(2, 'DV-1', 'DV', '2020-09-05', '1020101', 'Debit voucher from Cash In Hand', '0.00', '1000.00', '1', NULL, '2020-09-05 08:23:38', NULL, NULL, '0'),
(3, 'Journal-1', 'JV', '2020-09-05', '1020101', '', '50000.00', '0.00', '1', NULL, '2020-09-05 08:24:37', NULL, NULL, '0'),
(4, 'Journal-1', 'JV', '2020-09-05', '304', '', '0.00', '50000.00', '1', NULL, '2020-09-05 08:24:37', NULL, NULL, '0'),
(5, 'SUS74OAWC5', 'Advance', '2020-09-05', '502000001', 'supplier Advance For Test Supplier', '50000.00', '0.00', '1', '2', '2020-09-05 09:09:32', NULL, NULL, '1'),
(6, 'SUS74OAWC5', 'Advance', '2020-09-05', '1020101', 'Cash in Hand  For Test Supplier Advance', '50000.00', '0.00', '1', '2', '2020-09-05 09:09:32', NULL, NULL, '1'),
(7, '20200905094826', 'Purchase', '2020-09-05', '10107', 'Inventory Debit For Supplier Test Supplier', '38980.00', '0.00', '1', '2', '2020-09-05 09:48:26', NULL, NULL, '1'),
(8, '20200905094826', 'Purchase', '2020-09-05', '502000001', 'Supplier .Test Supplier', '0.00', '38980.00', '1', '2', '2020-09-05 00:00:00', NULL, NULL, '1'),
(9, '20200905094826', 'Purchase', '2020-09-05', '402', 'Company Credit For  Test Supplier', '38980.00', '0.00', '1', '2', '2020-09-05 09:48:26', NULL, NULL, '1'),
(10, '20200905094826', 'Purchase', '2020-09-05', '1020101', 'Cash in Hand For Supplier Test Supplier', '0.00', '20000.00', '1', '2', '2020-09-05 09:48:26', NULL, NULL, '1'),
(11, '20200905094826', 'Purchase', '2020-09-05', '502000001', 'Supplier .Test Supplier', '20000.00', '0.00', '1', '2', '2020-09-05 00:00:00', NULL, NULL, '1'),
(12, '9891822122', 'INV', '2020-09-05', '10107', 'Inventory credit For Invoice No1000', '0.00', '780.00', '1', '2', '2020-09-05 09:54:15', NULL, NULL, '1'),
(13, '9891822122', 'INV', '2020-09-05', '102030000001', 'Customer debit For Invoice No -  1000 Customer Walking Customer', '760.00', '0.00', '1', '2', '2020-09-05 09:54:15', NULL, NULL, '1'),
(14, '9891822122', 'INVOICE', '2020-09-05', '303', 'Sale Income For Invoice NO - 1000 Customer Walking Customer', '0.00', '760.00', '1', '2', '2020-09-05 09:54:15', NULL, NULL, '1'),
(15, '9891822122', 'INV', '2020-09-05', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1000 Customer- Walking Customer', '0.00', '500.00', '1', '2', '2020-09-05 09:54:15', NULL, NULL, '1'),
(16, '9891822122', 'INV', '2020-09-05', '1020101', 'Cash in Hand in Sale for Invoice No - 1000 customer- Walking Customer', '500.00', '0.00', '1', '2', '2020-09-05 09:54:15', NULL, NULL, '1'),
(17, '9891822122', 'Return', '2020-09-05', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-09-05 09:57:04', NULL, NULL, '1'),
(18, '20200905094826', 'Return', '2020-09-05', '502000001', 'Supplier Return to .Test Supplier', '7800.00', '0.00', '1', '2', '2020-09-05 00:00:00', NULL, NULL, '1'),
(19, '20200905100942', 'Purchase', '2020-09-05', '10107', 'Inventory Debit For Supplier Test Supplier', '45000.00', '0.00', '1', '2', '2020-09-05 10:09:42', NULL, NULL, '1'),
(20, '20200905100942', 'Purchase', '2020-09-05', '502000001', 'Supplier .Test Supplier', '0.00', '45000.00', '1', '2', '2020-09-05 00:00:00', NULL, NULL, '1'),
(21, '20200905100942', 'Purchase', '2020-09-05', '402', 'Company Credit For  Test Supplier', '45000.00', '0.00', '1', '2', '2020-09-05 10:09:42', NULL, NULL, '1'),
(22, 'PM-1', 'PM', '2020-09-05', '502000001', '', '10000.00', '0.00', '1', '2', '2020-09-05 10:13:32', NULL, NULL, '1'),
(23, 'PM-1', 'PM', '2020-09-05', '102010201', 'Supplier Payment To Test Supplier', '0.00', '10000.00', '1', '2', '2020-09-05 10:13:32', NULL, NULL, '1'),
(24, 'Contra-1', 'Contra', '2020-09-05', '1020101', '', '0.00', '500000.00', '1', NULL, '2020-09-05 10:20:35', NULL, NULL, '0'),
(25, 'Contra-1', 'Contra', '2020-09-05', '102010201', '', '500000.00', '0.00', '1', NULL, '2020-09-05 10:20:35', NULL, NULL, '0'),
(26, 'DV-2', 'DV', '2020-09-05', '40101', '', '1000.00', '0.00', '1', NULL, '2020-09-05 10:21:27', NULL, NULL, '0'),
(27, 'DV-2', 'DV', '2020-09-05', '1020101', 'Debit voucher from Cash In Hand', '0.00', '1000.00', '1', NULL, '2020-09-05 10:21:27', NULL, NULL, '0'),
(28, 'September 2020', 'Salary', '2020-09-06', '502040001', 'Employee Salary Generate Month of September 2020', '0.00', '150000.00', '1', '2', '2020-09-06 21:07:18', NULL, NULL, '1'),
(29, '1', 'Salary', '2020-09-06', '1020101', 'Cash in hand Credit For Employee Salary for-  Suman Mazumder', '0.00', '150000.00', '1', 'Suman Mazumder', '2020-09-06 21:07:45', NULL, NULL, '1'),
(30, '1', 'Salary', '2020-09-06', '403', 'Salary paid For- Suman Mazumder', '150000.00', '0.00', '1', 'Suman Mazumder', '2020-09-06 21:07:45', NULL, NULL, '1'),
(31, '1', 'Salary', '2020-09-06', '502040001', 'Salary paid For- Suman Mazumder', '150000.00', '0.00', '1', 'Suman Mazumder', '2020-09-06 21:07:45', NULL, NULL, '1'),
(32, 'serv-20200906092122', 'SERVICE', '2020-09-06', '304', 'Service Income For SERVICE No serv-20200906092122', '0.00', '4500.00', '1', '2', '2020-09-06 21:21:22', NULL, NULL, '1'),
(33, 'serv-20200906092122', 'SERVICE', '2020-09-06', '1020101', 'Cash in Hand For SERVICE No serv-20200906092122', '4500.00', '0.00', '1', '2', '2020-09-06 21:21:22', NULL, NULL, '1'),
(34, '2248277544', 'INV', '2020-09-08', '10107', 'Inventory credit For Invoice No1001', '0.00', '450.00', '1', '2', '2020-09-08 07:20:15', NULL, NULL, '1'),
(35, '2248277544', 'INV', '2020-09-08', '102030000001', 'Customer debit For Invoice No -  1001 Customer Walking Customer', '500.00', '0.00', '1', '2', '2020-09-08 07:20:15', NULL, NULL, '1'),
(36, '2248277544', 'INVOICE', '2020-09-08', '303', 'Sale Income For Invoice NO - 1001 Customer Walking Customer', '0.00', '500.00', '1', '2', '2020-09-08 07:20:15', NULL, NULL, '1'),
(37, 'BSHPGXLPEC', 'PR Balance', '2020-09-16', '102030000002', 'Customer debit For Touhid', '9000.00', '0.00', '1', '2', '2020-09-16 11:24:01', NULL, NULL, '1'),
(38, 'BSHPGXLPEC', 'PR Balance', '2020-09-16', '10107', 'Inventory credit For Old sale ForTouhid', '0.00', '9000.00', '1', '2', '2020-09-16 11:24:01', NULL, NULL, '1'),
(39, '3814847537', 'INV', '2020-09-22', '10107', 'Inventory credit For Invoice No1000', '0.00', '450.00', '1', '2', '2020-09-22 16:10:35', NULL, NULL, '1'),
(40, '3814847537', 'INV', '2020-09-22', '102030000001', 'Customer debit For Invoice No -  1000 Customer Walking Customer', '450.00', '0.00', '1', '2', '2020-09-22 16:10:35', NULL, NULL, '1'),
(41, '3814847537', 'INVOICE', '2020-09-22', '303', 'Sale Income For Invoice NO - 1000 Customer Walking Customer', '0.00', '450.00', '1', '2', '2020-09-22 16:10:35', NULL, NULL, '1'),
(42, '3814847537', 'INV', '2020-09-22', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1000 Customer- Walking Customer', '0.00', '300.00', '1', '2', '2020-09-22 16:10:35', NULL, NULL, '1'),
(43, '3814847537', 'INVOICE', '2020-09-22', '102010201', 'Paid amount for customer  Invoice No - 1000 customer -Walking Customer', '300.00', '0.00', '1', '2', '2020-09-22 16:10:35', NULL, NULL, '1'),
(44, 'GY7H9YY69N', 'Advance', '2020-09-22', '102030000002', 'Customer Advance For  Touhid', '0.00', '3000.00', '1', '2', '2020-09-22 16:22:33', NULL, NULL, '1'),
(45, 'GY7H9YY69N', 'Advance', '2020-09-22', '1020101', 'Cash in Hand  For Touhid Advance', '0.00', '3000.00', '1', '2', '2020-09-22 16:22:33', NULL, NULL, '1'),
(46, '20201012070652', 'Purchase', '2020-10-12', '10107', 'Inventory Debit For Supplier Test Supplier', '25900.00', '0.00', '1', '2', '2020-10-12 07:06:52', NULL, NULL, '1'),
(47, '20201012070652', 'Purchase', '2020-10-12', '502000001', 'Supplier .Test Supplier', '0.00', '25900.00', '1', '2', '2020-10-12 00:00:00', NULL, NULL, '1'),
(48, '20201012070652', 'Purchase', '2020-10-12', '402', 'Company Credit For  Test Supplier', '25900.00', '0.00', '1', '2', '2020-10-12 07:06:52', NULL, NULL, '1'),
(49, '20201012071229', 'Purchase', '2020-10-12', '10107', 'Inventory Debit For Supplier Test Supplier', '1350.00', '0.00', '1', '2', '2020-10-12 07:12:29', NULL, NULL, '1'),
(50, '20201012071229', 'Purchase', '2020-10-12', '502000001', 'Supplier .Test Supplier', '0.00', '1350.00', '1', '2', '2020-10-12 00:00:00', NULL, NULL, '1'),
(51, '20201012071229', 'Purchase', '2020-10-12', '402', 'Company Credit For  Test Supplier', '1350.00', '0.00', '1', '2', '2020-10-12 07:12:29', NULL, NULL, '1'),
(52, '20201012071543', 'Purchase', '2020-10-12', '10107', 'Inventory Debit For Supplier Test Supplier', '5400.00', '0.00', '1', '2', '2020-10-12 07:15:43', NULL, NULL, '1'),
(53, '20201012071543', 'Purchase', '2020-10-12', '502000001', 'Supplier .Test Supplier', '0.00', '5400.00', '1', '2', '2020-10-12 00:00:00', NULL, NULL, '1'),
(54, '20201012071543', 'Purchase', '2020-10-12', '402', 'Company Credit For  Test Supplier', '5400.00', '0.00', '1', '2', '2020-10-12 07:15:43', NULL, NULL, '1'),
(55, '20201012073332', 'Purchase', '2020-10-12', '10107', 'Inventory Debit For Supplier Test Supplier', '2520.00', '0.00', '1', '2', '2020-10-12 07:33:32', NULL, NULL, '1'),
(56, '20201012073332', 'Purchase', '2020-10-12', '502000001', 'Supplier .Test Supplier', '0.00', '2520.00', '1', '2', '2020-10-12 00:00:00', NULL, NULL, '1'),
(57, '20201012073332', 'Purchase', '2020-10-12', '402', 'Company Credit For  Test Supplier', '2520.00', '0.00', '1', '2', '2020-10-12 07:33:32', NULL, NULL, '1'),
(58, '6595645594', 'INV', '2020-10-12', '10107', 'Inventory credit For Invoice No1001', '0.00', '1230.00', '1', '2', '2020-10-12 08:16:59', NULL, NULL, '1'),
(59, '6595645594', 'INV', '2020-10-12', '102030000001', 'Customer debit For Invoice No -  1001 Customer Walking Customer', '1400.00', '0.00', '1', '2', '2020-10-12 08:16:59', NULL, NULL, '1'),
(60, '6595645594', 'INVOICE', '2020-10-12', '303', 'Sale Income For Invoice NO - 1001 Customer Walking Customer', '0.00', '1400.00', '1', '2', '2020-10-12 08:16:59', NULL, NULL, '1'),
(61, '1892196676', 'INV', '2020-10-12', '10107', 'Inventory credit For Invoice No1002', '0.00', '1800.00', '1', '2', '2020-10-12 08:18:36', NULL, NULL, '1'),
(62, '1892196676', 'INV', '2020-10-12', '102030000001', 'Customer debit For Invoice No -  1002 Customer Walking Customer', '2000.00', '0.00', '1', '2', '2020-10-12 08:18:36', NULL, NULL, '1'),
(63, '1892196676', 'INVOICE', '2020-10-12', '303', 'Sale Income For Invoice NO - 1002 Customer Walking Customer', '0.00', '2000.00', '1', '2', '2020-10-12 08:18:36', NULL, NULL, '1'),
(64, '2944371262', 'INV', '2020-10-12', '10107', 'Inventory credit For Invoice No1003', '0.00', '12900.00', '1', '2', '2020-10-12 08:33:13', NULL, NULL, '1'),
(65, '2944371262', 'INV', '2020-10-12', '102030000001', 'Customer debit For Invoice No -  1003 Customer Walking Customer', '13000.00', '0.00', '1', '2', '2020-10-12 08:33:13', NULL, NULL, '1'),
(66, '2944371262', 'INVOICE', '2020-10-12', '303', 'Sale Income For Invoice NO - 1003 Customer Walking Customer', '0.00', '13000.00', '1', '2', '2020-10-12 08:33:13', NULL, NULL, '1'),
(67, '8525297768', 'INV', '2020-10-12', '10107', 'Inventory credit For Invoice No1004', '0.00', '4440.00', '1', '2', '2020-10-12 09:34:25', NULL, NULL, '1'),
(68, '8525297768', 'INV', '2020-10-12', '102030000001', 'Customer debit For Invoice No -  1004 Customer Walking Customer', '4024.00', '0.00', '1', '2', '2020-10-12 09:34:25', NULL, NULL, '1'),
(69, '8525297768', 'INVOICE', '2020-10-12', '303', 'Sale Income For Invoice NO - 1004 Customer Walking Customer', '0.00', '4024.00', '1', '2', '2020-10-12 09:34:25', NULL, NULL, '1'),
(70, '7529493893', 'INV', '2020-10-12', '10107', 'Inventory credit For Invoice No1005', '0.00', '840.00', '1', '2', '2020-10-12 09:48:28', NULL, NULL, '1'),
(71, '7529493893', 'INV', '2020-10-12', '102030000001', 'Customer debit For Invoice No -  1005 Customer Walking Customer', '900.00', '0.00', '1', '2', '2020-10-12 09:48:28', NULL, NULL, '1'),
(72, '7529493893', 'INVOICE', '2020-10-12', '303', 'Sale Income For Invoice NO - 1005 Customer Walking Customer', '0.00', '900.00', '1', '2', '2020-10-12 09:48:28', NULL, NULL, '1'),
(73, '6536474572', 'INV', '2020-10-12', '10107', 'Inventory credit For Invoice No1006', '0.00', '4500.00', '1', '2', '2020-10-12 11:12:05', NULL, NULL, '1'),
(74, '6536474572', 'INV', '2020-10-12', '102030000001', 'Customer debit For Invoice No -  1006 Customer Walking Customer', '5000.00', '0.00', '1', '2', '2020-10-12 11:12:05', NULL, NULL, '1'),
(75, '6536474572', 'INVOICE', '2020-10-12', '303', 'Sale Income For Invoice NO - 1006 Customer Walking Customer', '0.00', '5000.00', '1', '2', '2020-10-12 11:12:05', NULL, NULL, '1'),
(76, '2184135564', 'INV', '2020-10-12', '10107', 'Inventory credit For Invoice No1007', '0.00', '2340.00', '1', '2', '2020-10-12 12:49:15', NULL, NULL, '1'),
(77, '2184135564', 'INV', '2020-10-12', '102030000001', 'Customer debit For Invoice No -  1007 Customer Walking Customer', '2400.00', '0.00', '1', '2', '2020-10-12 12:49:15', NULL, NULL, '1'),
(78, '2184135564', 'INVOICE', '2020-10-12', '303', 'Sale Income For Invoice NO - 1007 Customer Walking Customer', '0.00', '2400.00', '1', '2', '2020-10-12 12:49:15', NULL, NULL, '1'),
(79, '9319946586', 'INV', '2020-10-12', '10107', 'Inventory credit For Invoice No1008', '0.00', '450.00', '1', '2', '2020-10-12 13:44:22', NULL, NULL, '1'),
(80, '9319946586', 'INV', '2020-10-12', '102030000001', 'Customer debit For Invoice No -  1008 Customer Walking Customer', '0.00', '0.00', '1', '2', '2020-10-12 13:44:22', NULL, NULL, '1'),
(81, '9319946586', 'INVOICE', '2020-10-12', '303', 'Sale Income For Invoice NO - 1008 Customer Walking Customer', '0.00', '0.00', '1', '2', '2020-10-12 13:44:22', NULL, NULL, '1'),
(82, '4356889924', 'INV', '2020-10-13', '10107', 'Inventory credit For Invoice No1009', '0.00', '450.00', '1', '2', '2020-10-13 13:51:12', NULL, NULL, '1'),
(83, '4356889924', 'INV', '2020-10-13', '102030000001', 'Customer debit For Invoice No -  1009 Customer Walking Customer', '500.00', '0.00', '1', '2', '2020-10-13 13:51:12', NULL, NULL, '1'),
(84, '4356889924', 'INVOICE', '2020-10-13', '303', 'Sale Income For Invoice NO - 1009 Customer Walking Customer', '0.00', '500.00', '1', '2', '2020-10-13 13:51:12', NULL, NULL, '1'),
(85, '6198778562', 'INV', '2020-10-17', '10107', 'Inventory credit For Invoice No1010', '0.00', '450.00', '1', '2', '2020-10-17 10:27:41', NULL, NULL, '1'),
(86, '6198778562', 'INV', '2020-10-17', '102030000001', 'Customer debit For Invoice No -  1010 Customer Walking Customer', '0.00', '0.00', '1', '2', '2020-10-17 10:27:41', NULL, NULL, '1'),
(87, '6198778562', 'INVOICE', '2020-10-17', '303', 'Sale Income For Invoice NO - 1010 Customer Walking Customer', '0.00', '0.00', '1', '2', '2020-10-17 10:27:41', NULL, NULL, '1'),
(88, '20201019070203', 'Purchase', '2020-10-19', '10107', 'Inventory Debit For Supplier Test Supplier', '1350.00', '0.00', '1', '2', '2020-10-19 07:02:03', NULL, NULL, '1'),
(89, '20201019070203', 'Purchase', '2020-10-19', '502000001', 'Supplier .Test Supplier', '0.00', '1350.00', '1', '2', '2020-10-19 00:00:00', NULL, NULL, '1'),
(90, '20201019070203', 'Purchase', '2020-10-19', '402', 'Company Credit For  Test Supplier', '1350.00', '0.00', '1', '2', '2020-10-19 07:02:03', NULL, NULL, '1'),
(91, '7198272854', 'INV', '2020-10-19', '10107', 'Inventory credit For Invoice No1011', '0.00', '450.00', '1', '2', '2020-10-19 10:46:46', NULL, NULL, '1'),
(92, '7198272854', 'INV', '2020-10-19', '102030000001', 'Customer debit For Invoice No -  1011 Customer Walking Customer', '500.00', '0.00', '1', '2', '2020-10-19 10:46:46', NULL, NULL, '1'),
(93, '7198272854', 'INVOICE', '2020-10-19', '303', 'Sale Income For Invoice NO - 1011 Customer Walking Customer', '0.00', '500.00', '1', '2', '2020-10-19 10:46:46', NULL, NULL, '1'),
(94, '1475927865', 'INV', '2020-10-20', '10107', 'Inventory credit For Invoice No1012', '0.00', '1560.00', '1', '2', '2020-10-20 06:56:47', NULL, NULL, '1'),
(95, '1475927865', 'INV', '2020-10-20', '102030000001', 'Customer debit For Invoice No -  1012 Customer Walking Customer', '1600.00', '0.00', '1', '2', '2020-10-20 06:56:47', NULL, NULL, '1'),
(96, '1475927865', 'INVOICE', '2020-10-20', '303', 'Sale Income For Invoice NO - 1012 Customer Walking Customer', '0.00', '1600.00', '1', '2', '2020-10-20 06:56:47', NULL, NULL, '1'),
(97, '20201020065902', 'Purchase', '2020-10-20', '10107', 'Inventory Debit For Supplier Test Supplier', '1800.00', '0.00', '1', '2', '2020-10-20 06:59:02', NULL, NULL, '1'),
(98, '20201020065902', 'Purchase', '2020-10-20', '502000001', 'Supplier .Test Supplier', '0.00', '1800.00', '1', '2', '2020-10-20 00:00:00', NULL, NULL, '1'),
(99, '20201020065902', 'Purchase', '2020-10-20', '402', 'Company Credit For  Test Supplier', '1800.00', '0.00', '1', '2', '2020-10-20 06:59:02', NULL, NULL, '1'),
(100, '20201020092144', 'Purchase', '2020-10-20', '10107', 'Inventory Debit For Supplier Test Supplier', '1350.00', '0.00', '1', '2', '2020-10-20 09:21:44', NULL, NULL, '1'),
(101, '20201020092144', 'Purchase', '2020-10-20', '502000001', 'Supplier .Test Supplier', '0.00', '1350.00', '1', '2', '2020-10-20 00:00:00', NULL, NULL, '1'),
(102, '20201020092144', 'Purchase', '2020-10-20', '402', 'Company Credit For  Test Supplier', '1350.00', '0.00', '1', '2', '2020-10-20 09:21:44', NULL, NULL, '1'),
(103, '1892196676', 'Return', '2020-10-21', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '485.00', '1', '2', '2020-10-21 06:48:12', NULL, NULL, '1'),
(104, '7529493893', 'Return', '2020-10-21', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '0.00', '1', '2', '2020-10-21 10:30:24', NULL, NULL, '1'),
(105, '7529493893', 'Return', '2020-10-21', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '0.00', '1', '2', '2020-10-21 10:30:29', NULL, NULL, '1'),
(106, '7529493893', 'Return', '2020-10-21', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-21 10:59:02', NULL, NULL, '1'),
(107, '8525297768', 'Return', '2020-10-21', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-21 11:23:16', NULL, NULL, '1'),
(108, '8525297768', 'Return', '2020-10-21', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-21 12:34:01', NULL, NULL, '1'),
(109, '8525297768', 'Return', '2020-10-21', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '800.00', '1', '2', '2020-10-21 13:21:23', NULL, NULL, '1'),
(110, '8525297768', 'Return', '2020-10-21', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '800.00', '1', '2', '2020-10-21 13:23:00', NULL, NULL, '1'),
(111, '8525297768', 'Return', '2020-10-21', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-21 13:39:43', NULL, NULL, '1'),
(112, '8525297768', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 06:40:46', NULL, NULL, '1'),
(113, '8525297768', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 06:45:20', NULL, NULL, '1'),
(114, '8525297768', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 06:46:04', NULL, NULL, '1'),
(115, '8525297768', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 06:47:12', NULL, NULL, '1'),
(116, '8525297768', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 06:59:57', NULL, NULL, '1'),
(117, '8525297768', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 07:38:44', NULL, NULL, '1'),
(118, '8525297768', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 08:31:24', NULL, NULL, '1'),
(119, '8525297768', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 09:30:44', NULL, NULL, '1'),
(120, '8525297768', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 09:32:05', NULL, NULL, '1'),
(121, '2944371262', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 09:42:39', NULL, NULL, '1'),
(122, '2944371262', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '0.00', '1', '2', '2020-10-22 09:54:25', NULL, NULL, '1'),
(123, '2944371262', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '100.00', '1', '2', '2020-10-22 10:08:20', NULL, NULL, '1'),
(124, '2944371262', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 10:16:03', NULL, NULL, '1'),
(125, '2944371262', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 10:56:28', NULL, NULL, '1'),
(126, '2944371262', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 10:57:58', NULL, NULL, '1'),
(127, '2944371262', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '0.00', '1', '2', '2020-10-22 11:29:55', NULL, NULL, '1'),
(128, '2944371262', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '0.00', '1', '2', '2020-10-22 11:37:16', NULL, NULL, '1'),
(129, '2944371262', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-22 11:47:17', NULL, NULL, '1'),
(130, '1892196676', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-22 11:48:52', NULL, NULL, '1'),
(131, '1892196676', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-22 11:48:58', NULL, NULL, '1'),
(132, '6595645594', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '0.00', '1', '2', '2020-10-22 12:11:06', NULL, NULL, '1'),
(133, '6595645594', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-22 12:19:24', NULL, NULL, '1'),
(134, '6595645594', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '0.00', '1', '2', '2020-10-22 12:24:45', NULL, NULL, '1'),
(135, '6595645594', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '0.00', '1', '2', '2020-10-22 13:12:44', NULL, NULL, '1'),
(136, '6595645594', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-22 13:16:34', NULL, NULL, '1'),
(137, '6595645594', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-22 13:19:14', NULL, NULL, '1'),
(138, '2944371262', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '900.00', '1', '2', '2020-10-22 13:21:27', NULL, NULL, '1'),
(139, '2944371262', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-22 13:23:15', NULL, NULL, '1'),
(140, '2944371262', 'Return', '2020-10-22', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-22 13:24:35', NULL, NULL, '1'),
(141, '1892196676', 'Return', '2020-10-23', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-23 16:58:57', NULL, NULL, '1'),
(142, '6595645594', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-24 07:58:56', NULL, NULL, '1'),
(143, '1892196676', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-24 08:08:29', NULL, NULL, '1'),
(144, '1892196676', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '2', '2', '2020-10-24 08:11:35', NULL, NULL, '2'),
(145, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '2', '2', '2020-10-24 08:18:04', NULL, NULL, '1'),
(146, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '2', '2', '2020-10-24 08:27:15', NULL, NULL, '1'),
(147, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 08:34:30', NULL, NULL, '1'),
(148, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 08:58:52', NULL, NULL, '1'),
(149, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 09:00:36', NULL, NULL, '1'),
(150, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 09:07:10', NULL, NULL, '1'),
(151, '3814847537', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-24 09:14:32', NULL, NULL, '1'),
(152, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 09:20:14', NULL, NULL, '1'),
(153, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '0.00', '1', '2', '2020-10-24 10:00:31', NULL, NULL, '1'),
(154, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '0.00', '1', '2', '2020-10-24 10:08:41', NULL, NULL, '1'),
(155, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 10:20:23', NULL, NULL, '1'),
(156, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 10:27:10', NULL, NULL, '1'),
(157, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 10:30:14', NULL, NULL, '1'),
(158, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 10:48:50', NULL, NULL, '1'),
(159, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 10:56:41', NULL, NULL, '1'),
(160, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '0.00', '1', '2', '2020-10-24 11:05:35', NULL, NULL, '1'),
(161, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 11:08:16', NULL, NULL, '1'),
(162, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 11:22:35', NULL, NULL, '1'),
(163, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 11:31:38', NULL, NULL, '1'),
(164, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '396.00', '1', '2', '2020-10-24 11:52:28', NULL, NULL, '1'),
(165, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 12:18:21', NULL, NULL, '1'),
(166, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 12:27:11', NULL, NULL, '1'),
(167, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 12:33:19', NULL, NULL, '1'),
(168, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-24 12:50:56', NULL, NULL, '1'),
(169, '2944371262', 'Return', '2020-10-24', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-24 13:19:22', NULL, NULL, '1'),
(170, '8525297768', 'Return', '2020-10-25', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-25 06:14:45', NULL, NULL, '1'),
(171, '8525297768', 'Return', '2020-10-25', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-25 06:16:02', NULL, NULL, '1'),
(172, '6595645594', 'Return', '2020-10-25', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-25 06:31:45', NULL, NULL, '1'),
(173, '6595645594', 'Return', '2020-10-25', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-25 06:37:05', NULL, NULL, '1'),
(174, '2944371262', 'Return', '2020-10-25', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-25 06:40:23', NULL, NULL, '1'),
(175, '2944371262', 'Return', '2020-10-25', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-25 06:41:19', NULL, NULL, '1'),
(176, '2944371262', 'Return', '2020-10-25', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-25 06:42:33', NULL, NULL, '1'),
(177, '2944371262', 'Return', '2020-10-25', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-25 06:48:46', NULL, NULL, '1'),
(178, '2944371262', 'Return', '2020-10-25', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-25 06:49:38', NULL, NULL, '1'),
(179, '2944371262', 'Return', '2020-10-25', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-25 06:54:31', NULL, NULL, '1'),
(180, '2944371262', 'Return', '2020-10-25', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '0.00', '1', '2', '2020-10-25 07:37:13', NULL, NULL, '1'),
(181, 'Journal-2', 'JV', '2020-10-25', '40101', '', '1000.00', '0.00', '1', NULL, '2020-10-25 08:28:34', NULL, NULL, '0'),
(182, 'Journal-2', 'JV', '2020-10-25', '1020101', '', '0.00', '1000.00', '1', NULL, '2020-10-25 08:28:34', NULL, NULL, '0'),
(183, '2944371262', 'Return', '2020-10-25', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-25 17:02:39', NULL, NULL, '1'),
(184, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 07:16:20', NULL, NULL, '1'),
(185, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 07:18:00', NULL, NULL, '1'),
(186, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 07:55:36', NULL, NULL, '1'),
(187, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 08:11:46', NULL, NULL, '1'),
(188, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 08:21:22', NULL, NULL, '1'),
(189, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '200.00', '1', '2', '2020-10-26 08:42:11', NULL, NULL, '1'),
(190, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '200.00', '1', '2', '2020-10-26 08:44:01', NULL, NULL, '1'),
(191, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 08:49:26', NULL, NULL, '1'),
(192, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 08:50:18', NULL, NULL, '1'),
(193, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 08:51:01', NULL, NULL, '1'),
(194, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 09:10:20', NULL, NULL, '1'),
(195, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 14:06:54', NULL, NULL, '1'),
(196, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 14:11:40', NULL, NULL, '1'),
(197, 'Journal-3', 'JV', '2020-10-26', '102030000001', '', '0.00', '0.00', '1', NULL, '2020-10-26 14:34:02', NULL, NULL, '0'),
(198, 'Journal-3', 'JV', '2020-10-26', '', '', '0.00', '0.00', '1', NULL, '2020-10-26 14:34:02', NULL, NULL, '0'),
(199, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 14:42:09', NULL, NULL, '1'),
(200, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 14:47:37', NULL, NULL, '1'),
(201, '6595645594', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-26 15:25:22', NULL, NULL, '1'),
(202, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1000.00', '1', '2', '2020-10-26 15:35:25', NULL, NULL, '1'),
(203, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 15:43:05', NULL, NULL, '1'),
(204, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 15:55:09', NULL, NULL, '1'),
(205, '2944371262', 'Return', '2020-10-26', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-26 17:13:06', NULL, NULL, '1'),
(206, '2944371262', 'Return', '2020-10-27', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-27 05:42:08', NULL, NULL, '1'),
(207, '2944371262', 'Return', '2020-10-27', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-27 05:48:40', NULL, NULL, '1'),
(208, '2944371262', 'Return', '2020-10-27', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-27 06:29:04', NULL, NULL, '1'),
(209, '2944371262', 'Return', '2020-10-27', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-27 06:32:37', NULL, NULL, '1'),
(210, '2944371262', 'Return', '2020-10-27', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-27 06:44:23', NULL, NULL, '1'),
(211, '2944371262', 'Return', '2020-10-27', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-27 07:07:38', NULL, NULL, '1'),
(212, '6366994931', 'INV', '2020-10-27', '10107', 'Inventory credit For Invoice No1013', '0.00', '390.00', '1', '2', '2020-10-27 07:24:12', NULL, NULL, '1'),
(213, '6366994931', 'INV', '2020-10-27', '102030000001', 'Customer debit For Invoice No -  1013 Customer Walking Customer', '400.00', '0.00', '1', '2', '2020-10-27 07:24:12', NULL, NULL, '1'),
(214, '6366994931', 'INVOICE', '2020-10-27', '303', 'Sale Income For Invoice NO - 1013 Customer Walking Customer', '0.00', '400.00', '1', '2', '2020-10-27 07:24:12', NULL, NULL, '1'),
(215, '9239324787', 'INV', '2020-10-27', '10107', 'Inventory credit For Invoice No1014', '0.00', '3900.00', '1', '2', '2020-10-27 07:25:00', NULL, NULL, '1'),
(216, '9239324787', 'INV', '2020-10-27', '102030000001', 'Customer debit For Invoice No -  1014 Customer Walking Customer', '4000.00', '0.00', '1', '2', '2020-10-27 07:25:00', NULL, NULL, '1'),
(217, '9239324787', 'INVOICE', '2020-10-27', '303', 'Sale Income For Invoice NO - 1014 Customer Walking Customer', '0.00', '4000.00', '1', '2', '2020-10-27 07:25:00', NULL, NULL, '1'),
(218, '2944371262', 'Return', '2020-10-27', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-27 10:20:45', NULL, NULL, '1'),
(219, '2944371262', 'Return', '2020-10-27', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-27 10:47:36', NULL, NULL, '1'),
(220, '2944371262', 'Return', '2020-10-27', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1000.00', '1', '2', '2020-10-27 11:01:33', NULL, NULL, '1'),
(221, '2944371262', 'Return', '2020-10-27', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-27 11:18:30', NULL, NULL, '1'),
(222, '2944371262', 'Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1500.00', '1', '2', '2020-10-28 05:30:01', NULL, NULL, '1'),
(223, '2944371262', 'Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '2000.00', '1', '2', '2020-10-28 05:36:24', NULL, NULL, '1'),
(224, '2944371262', 'Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1000.00', '1', '2', '2020-10-28 05:48:28', NULL, NULL, '1'),
(225, '2944371262', 'Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-28 05:50:46', NULL, NULL, '1'),
(226, '2944371262', 'Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1000.00', '1', '2', '2020-10-28 05:52:24', NULL, NULL, '1'),
(227, '2944371262', 'Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-28 05:56:20', NULL, NULL, '1'),
(228, '2944371262', 'Warrenty Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-28 06:01:52', NULL, NULL, '1'),
(229, '2944371262', 'Warrenty Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-28 06:05:23', NULL, NULL, '1'),
(230, '2944371262', 'Warrenty Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-28 06:14:17', NULL, NULL, '1'),
(231, '2944371262', 'Warrenty Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-28 06:27:14', NULL, NULL, '1'),
(232, '2944371262', 'Warrenty Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-28 07:22:21', NULL, NULL, '1'),
(233, '2944371262', 'Warrenty Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-28 07:27:44', NULL, NULL, '1'),
(234, '2944371262', 'Warrenty Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '2000.00', '1', '2', '2020-10-28 07:29:49', NULL, NULL, '1'),
(235, '2944371262', 'Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1000.00', '1', '2', '2020-10-28 07:34:03', NULL, NULL, '1'),
(236, '2944371262', 'Warrenty Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1000.00', '1', '2', '2020-10-28 09:29:33', NULL, NULL, '1'),
(237, '2944371262', 'Warrenty Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-28 09:33:06', NULL, NULL, '1'),
(238, '2944371262', 'Warrenty Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-28 12:46:41', NULL, NULL, '1'),
(239, '2944371262', 'Warrenty Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '2500.00', '1', '2', '2020-10-28 17:06:11', NULL, NULL, '1'),
(240, '2944371262', 'Warrenty Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '2500.00', '1', '2', '2020-10-28 17:08:50', NULL, NULL, '1'),
(241, '2944371262', 'Warrenty Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '2500.00', '1', '2', '2020-10-28 17:12:05', NULL, NULL, '1'),
(242, '2944371262', 'Return', '2020-10-28', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-28 18:06:41', NULL, NULL, '1'),
(243, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '2500.00', '1', '2', '2020-10-29 05:36:32', NULL, NULL, '1'),
(244, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1500.00', '1', '2', '2020-10-29 05:42:02', NULL, NULL, '1'),
(245, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '2500.00', '1', '2', '2020-10-29 05:58:22', NULL, NULL, '1'),
(246, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1500.00', '1', '2', '2020-10-29 06:04:16', NULL, NULL, '1'),
(247, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-29 06:06:14', NULL, NULL, '1'),
(248, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-29 06:09:50', NULL, NULL, '1'),
(249, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1200.00', '1', '2', '2020-10-29 06:11:36', NULL, NULL, '1'),
(250, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '800.00', '1', '2', '2020-10-29 06:16:43', NULL, NULL, '1'),
(251, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1200.00', '1', '2', '2020-10-29 06:18:07', NULL, NULL, '1'),
(252, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-29 06:32:45', NULL, NULL, '1'),
(253, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-29 06:34:52', NULL, NULL, '1'),
(254, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-29 06:43:52', NULL, NULL, '1'),
(255, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-29 07:04:15', NULL, NULL, '1'),
(256, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1000.00', '1', '2', '2020-10-29 07:08:35', NULL, NULL, '1'),
(257, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '800.00', '1', '2', '2020-10-29 07:10:10', NULL, NULL, '1'),
(258, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-29 07:14:55', NULL, NULL, '1'),
(259, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-29 07:25:48', NULL, NULL, '1'),
(260, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '900.00', '1', '2', '2020-10-29 07:28:56', NULL, NULL, '1'),
(261, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-29 10:30:23', NULL, NULL, '1'),
(262, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '500.00', '1', '2', '2020-10-29 10:56:15', NULL, NULL, '1'),
(263, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '800.00', '1', '2', '2020-10-29 10:58:40', NULL, NULL, '1'),
(264, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '800.00', '1', '2', '2020-10-29 11:06:32', NULL, NULL, '1'),
(265, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '400.00', '1', '2', '2020-10-29 11:17:53', NULL, NULL, '1'),
(266, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '800.00', '1', '2', '2020-10-29 11:29:37', NULL, NULL, '1'),
(267, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '800.00', '1', '2', '2020-10-29 11:30:35', NULL, NULL, '1'),
(268, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '800.00', '1', '2', '2020-10-29 11:34:12', NULL, NULL, '1'),
(269, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '800.00', '1', '2', '2020-10-29 12:37:52', NULL, NULL, '1'),
(270, '2944371262', 'Warrenty Return', '2020-10-29', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '800.00', '1', '2', '2020-10-29 12:45:11', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `app_setting`
--

CREATE TABLE `app_setting` (
  `id` int(11) NOT NULL,
  `localhserver` varchar(250) DEFAULT NULL,
  `onlineserver` varchar(250) DEFAULT NULL,
  `hotspot` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_setting`
--

INSERT INTO `app_setting` (`id`, `localhserver`, `onlineserver`, `hotspot`) VALUES
(1, 'https://www.devenport.co/erp', 'https://www.devenport.co/erp', 'https://192.168.1.167/saleserp');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `att_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sign_in` varchar(30) NOT NULL,
  `sign_out` varchar(30) NOT NULL,
  `staytime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`att_id`, `employee_id`, `date`, `sign_in`, `sign_out`, `staytime`) VALUES
(1, 1, '2020-09-06', '02:49 AM', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bank_add`
--

CREATE TABLE `bank_add` (
  `id` int(11) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_add`
--

INSERT INTO `bank_add` (`id`, `bank_id`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`, `status`) VALUES
(1, '7Q4HFPTW7D', 'Trust Bank Ltd.', 'Devenport', '70191182829394', 'GEC', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_information`
--

CREATE TABLE `company_information` (
  `company_id` varchar(250) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_information`
--

INSERT INTO `company_information` (`company_id`, `company_name`, `email`, `address`, `mobile`, `website`, `status`) VALUES
('1', 'Devenport', 'sonicictbd@gmail.com', '808 Mehedibag Road', '01822911624', 'https://www.devenport.co', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_tbl`
--

CREATE TABLE `currency_tbl` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_tbl`
--

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES
(1, 'Dollar', '$'),
(2, 'BDT', '৳');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `customer_id` bigint(20) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) NOT NULL,
  `address2` text NOT NULL,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL COMMENT '1=paid,2=credit',
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `create_by` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `status`, `create_date`, `create_by`) VALUES
(1, 'Walking Customer', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-03-02 17:23:10', NULL),
(2, 'Touhid', 'chittagong', 'chittagong', '01999999999', 'touhid@southern.edu.bd', 'touhid@southern.edu.bd', '01999999999', '01999999999', '01999999999', 'chittagong', 'chittagong', '4000', 'bangaldesh', 2, '2020-09-16 09:24:01', '2');

-- --------------------------------------------------------

--
-- Table structure for table `daily_banking_add`
--

CREATE TABLE `daily_banking_add` (
  `banking_id` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `bank_id` varchar(100) DEFAULT NULL,
  `deposit_type` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `daily_closing`
--

CREATE TABLE `daily_closing` (
  `closing_id` varchar(255) NOT NULL,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` varchar(250) NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daily_closing`
--

INSERT INTO `daily_closing` (`closing_id`, `last_day_closing`, `cash_in`, `cash_out`, `date`, `amount`, `adjustment`, `status`) VALUES
('bHyxGoilpNvdiEt', 0, 100500, 21000, '2020-09-05', 79500, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `designation`, `details`) VALUES
(1, 'CEO', '');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL,
  `isinvoice` tinyint(4) NOT NULL,
  `isservice` tinyint(4) NOT NULL,
  `isquotation` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`, `isinvoice`, `isservice`, `isquotation`) VALUES
(1, 'ssmtp', 'ssl://ssmtp.gmail.com', '25', 'demo@gmail.com', 'demo123456', 'html', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `rate_type` int(11) NOT NULL,
  `hrate` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `image` text DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_history`
--

INSERT INTO `employee_history` (`id`, `first_name`, `last_name`, `designation`, `phone`, `rate_type`, `hrate`, `email`, `blood_group`, `address_line_1`, `address_line_2`, `image`, `country`, `city`, `zip`) VALUES
(1, 'Suman', 'Mazumder', '1', '01817270456', 2, 100000, 'sumanjuly@live.com', '', '739/A Mehedibag Road', '', 'http://devenport.co/erp/my-assets/image/employee/0aabe887435e0f34cefe44f18a5c28b8.png', 'Bangladesh', 'Chittagong', '4000');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL,
  `generate_id` int(11) NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `salary_month` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_salary_payment`
--

INSERT INTO `employee_salary_payment` (`emp_sal_pay_id`, `generate_id`, `employee_id`, `total_salary`, `total_working_minutes`, `working_period`, `payment_due`, `payment_date`, `paid_by`, `salary_month`) VALUES
(1, 2, '1', '150000.00', '0', '1', 'paid', '2020-09-06', 'Suman Mazumder', 'September 2020');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_setup`
--

CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_salary_setup`
--

INSERT INTO `employee_salary_setup` (`e_s_s_id`, `employee_id`, `sal_type`, `salary_type_id`, `amount`, `create_date`, `update_date`, `update_id`, `gross_salary`) VALUES
(1, '1', '2', '1', '50.00', '2020-09-06', NULL, '', 150000),
(2, '1', '2', '2', '20.00', '2020-09-06', NULL, '', 150000),
(3, '1', '2', '3', '10.00', '2020-09-06', NULL, '', 150000),
(4, '1', '2', '4', '10.00', '2020-09-06', NULL, '', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense_item`
--

CREATE TABLE `expense_item` (
  `id` int(11) NOT NULL,
  `expense_item_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(30) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `total_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `prevous_due` decimal(20,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `invoice` bigint(20) NOT NULL,
  `invoice_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'invoice discount',
  `total_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'total invoice discount',
  `total_tax` decimal(10,2) DEFAULT 0.00,
  `sales_by` varchar(50) NOT NULL,
  `invoice_details` text NOT NULL,
  `status` int(2) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `invoice_discount`, `total_discount`, `total_tax`, `sales_by`, `invoice_details`, `status`, `bank_id`, `payment_type`) VALUES
(3, 3814847537, 1, '2020-09-22', '450.00', '300.00', '150.00', '0.00', '0.00', 1000, '0.00', '50.00', '0.00', '2', 'Thank you for shopping with us', 1, '7Q4HFPTW7D', 2),
(4, 6595645594, 1, '2020-10-12', '1400.00', '0.00', '1400.00', '0.00', '0.00', 1001, '0.00', '0.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1),
(5, 1892196676, 1, '2020-10-30', '2000.00', '0.00', '2000.00', '0.00', '0.00', 1002, '0.00', '0.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1),
(6, 2944371262, 1, '2020-10-28', '13000.00', '0.00', '13000.00', '0.00', '0.00', 1003, '0.00', '0.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1),
(7, 8525297768, 1, '2020-10-30', '4024.00', '0.00', '4024.00', '0.00', '0.00', 1004, '0.00', '76.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1),
(8, 7529493893, 1, '2020-10-12', '900.00', '0.00', '900.00', '0.00', '0.00', 1005, '0.00', '0.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1),
(9, 6536474572, 1, '2020-10-12', '5000.00', '0.00', '5000.00', '0.00', '0.00', 1006, '0.00', '0.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1),
(10, 2184135564, 1, '2020-10-12', '2400.00', '0.00', '2400.00', '0.00', '0.00', 1007, '0.00', '0.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1),
(11, 9319946586, 1, '2020-10-12', '0.00', '0.00', '0.00', '0.00', '0.00', 1008, '0.00', '0.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1),
(12, 4356889924, 1, '2020-10-13', '500.00', '0.00', '500.00', '0.00', '0.00', 1009, '0.00', '0.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1),
(13, 6198778562, 1, '2020-10-17', '0.00', '0.00', '0.00', '0.00', '0.00', 1010, '0.00', '0.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1),
(14, 7198272854, 1, '2020-10-19', '500.00', '0.00', '500.00', '0.00', '0.00', 1011, '0.00', '0.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1),
(15, 1475927865, 1, '2020-10-20', '1600.00', '0.00', '1600.00', '0.00', '0.00', 1012, '0.00', '0.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1),
(16, 6366994931, 1, '2020-10-27', '400.00', '0.00', '400.00', '0.00', '0.00', 1013, '0.00', '0.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1),
(17, 9239324787, 1, '2020-10-27', '4000.00', '0.00', '4000.00', '0.00', '0.00', 1014, '0.00', '0.00', '0.00', '2', 'Thank you for shopping with us', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_details_id` varchar(100) NOT NULL,
  `invoice_id` varchar(100) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `warrenty_date` varchar(50) NOT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(12,0) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `warrenty_date`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES
(4, '558711439414321', '3814847537', '1234567', NULL, '', '1.00', '', '500.00', 450, '450.00', '0.01', '10', NULL, '300', '150.00', 1),
(5, '524591823258718', '6595645594', '1234567', '1', '32', '2.00', '', '500.00', 450, '1000.00', '0.00', '', NULL, '0', '1400.00', 1),
(6, '292932661765594', '6595645594', '0909', '0909', 'fdd', '1.00', '', '400.00', 390, '400.00', '0.00', '', NULL, '0', '1400.00', 1),
(7, '876243285347997', '1892196676', '1234567', '1', 'ttf', '4.00', '', '500.00', 450, '2000.00', '0.00', '', NULL, '0', '2000.00', 1),
(8, '969936832378977', '2944371262', '1234567', '1', 'arman', '70.00', '', '500.00', 450, '5000.00', '0.00', '', NULL, '0', '13000.00', 1),
(9, '444656252497925', '2944371262', '0909', NULL, 'ullah', '40.00', '', '400.00', 390, '8000.00', '0.00', '', NULL, '0', '13000.00', 1),
(10, '994148245176148', '8525297768', '1234567', '1', 'Rimon', '1.00', '2020-10-12', '500.00', 450, '460.00', '0.01', '8', NULL, '0', '4024.00', 1),
(11, '943126883134899', '8525297768', '0909', '0909', 'Shil', '9.00', '2020-10-12', '400.00', 390, '3564.00', '0.01', '1', NULL, '0', '4024.00', 1),
(12, '588122938784554', '7529493893', '1234567', '1', 'Oni', '1.00', '2021-02-26', '500.00', 450, '500.00', '0.00', '', NULL, '0', '900.00', 1),
(13, '846651529493949', '7529493893', '0909', '0909', 'Shil', '1.00', '2022-10-30', '400.00', 390, '400.00', '0.00', '', NULL, '0', '900.00', 1),
(14, '163675565183455', '7198272854', '1234567', '1', '', '1.00', '2020-10-19', '500.00', 450, '500.00', '0.00', '', NULL, '0', '500.00', 1),
(15, '519488255683998', '1475927865', '0909', '0909', '', '4.00', '2020-10-20', '400.00', 390, '1600.00', '0.00', '', NULL, '0', '1600.00', 1),
(16, '858362737628293', '7529493893', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '0.00', '-1.00', NULL, '0.00', '0', NULL, 1),
(17, '829986222994586', '7529493893', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '0.00', '-1.00', NULL, '0.00', '0', NULL, 1),
(18, '445544774321984', '7529493893', '1234567', NULL, NULL, '-1.00', '', '400.00', 450, '0.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(19, '774742189424384', '8525297768', '1234567', NULL, NULL, '-1.00', '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(20, '568264943791448', '8525297768', '0909', NULL, NULL, '-2.00', '', '400.00', 390, '-800.00', '0.00', NULL, '0.00', '-800', NULL, 1),
(21, '795763381214436', '8525297768', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(22, '654445155188523', '8525297768', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(23, '151677532167417', '8525297768', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(24, '125234334115161', '8525297768', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(25, '751525792966879', '8525297768', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(26, '659986912118285', '6595645594', '1234567', NULL, NULL, '-1.00', '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(27, '346292593848878', '2944371262', '1234567', NULL, NULL, '-1.00', '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(28, '295655599164612', '1892196676', '1234567', NULL, NULL, '-1.00', '', '500.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(29, '977198244517571', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(30, '794119255989318', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(31, '326871956723692', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(32, '342112342986939', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(33, '311382851664622', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(34, '679465582333771', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(35, '497159824563684', '3814847537', '1234567', NULL, NULL, '-1.00', '', '500.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(36, '477155673863389', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(37, '927184783112433', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '0.00', '0.00', NULL, '0.00', '0', NULL, 1),
(38, '622892733966593', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '0.00', '0.00', NULL, '0.00', '0', NULL, 1),
(39, '197654387965212', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(40, '429112995648448', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(41, '329945893325652', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '0.00', '0.00', NULL, '0.00', '0', NULL, 1),
(42, '524519396496939', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(43, '343359382753937', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(44, '363163198932313', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(45, '161297938296352', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-396.00', '-1.00', NULL, '0.00', '-396', NULL, 1),
(46, '595433624622588', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(47, '951493518573443', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(48, '171515946994723', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(49, '932931796593591', '2944371262', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(50, '823489141279258', '2944371262', '1234567', NULL, NULL, '-1.00', '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(51, '319193162967535', '8525297768', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(52, '896812168934144', '8525297768', '0909', NULL, NULL, '-1.00', '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(53, '164695577714846', '6595645594', '0909', NULL, NULL, NULL, '', '400.00', 390, '0.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(54, '144241791741565', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(55, '743714762877466', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(56, '414852742533735', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(57, '334275679748743', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(58, '631337426943288', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '0.00', '0.00', NULL, '0.00', '0', NULL, 1),
(59, '128861561511449', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(60, '279148548386288', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(61, '599212437721573', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(62, '596179142943761', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(63, '247337278559198', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(64, '337313114123775', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(65, '822466218372554', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '0.00', '0.00', NULL, '0.00', '-200', NULL, 1),
(66, '144269712934387', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-200.00', '0.00', NULL, '0.00', '-200', NULL, 1),
(67, '186998321674267', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(68, '439751957614826', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(69, '319336985748986', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(70, '793531391987116', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(71, '467649436754759', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(72, '562316598929735', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(73, '634686276743119', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(74, '495156722171635', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(75, '752315841429593', '6595645594', '0909', NULL, NULL, NULL, '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(76, '535543163832372', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-1000.00', '0.00', NULL, '0.00', '-1000', NULL, 1),
(77, '426336397971725', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(78, '873285254758911', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(79, '871451428573329', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(80, '431616621412592', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(81, '727669914274946', '6366994931', '0909', NULL, '', '1.00', '2020-10-27', '400.00', 390, '400.00', '0.00', '', NULL, '0', '400.00', 1),
(82, '331648595364884', '9239324787', '0909', NULL, '', '10.00', '2020-10-27', '400.00', 390, '4000.00', '0.00', '', NULL, '0', '4000.00', 1),
(83, '596941777994114', '2944371262', '1234567', NULL, NULL, '-1.00', '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(84, '242611662888911', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(85, '816486611821186', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(86, '185872787481356', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(87, '338364455673898', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(88, '917998122478168', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(89, '676739277252286', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(90, '923353117532529', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-2000.00', '0.00', NULL, '0.00', '-2000', NULL, 1),
(91, '825993891412543', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-1000.00', '0.00', NULL, '0.00', '-1000', NULL, 1),
(92, '854935254714559', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-500.00', '0.00', NULL, '0.00', '-500', NULL, 1),
(93, '485462759533545', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-2500.00', '0.00', NULL, '0.00', '-2500', NULL, 1),
(94, '938334488663976', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-2500.00', '0.00', NULL, '0.00', '-2500', NULL, 1),
(95, '969453812365995', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-2500.00', '0.00', NULL, '0.00', '-2500', NULL, 1),
(96, '633294616426412', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-2500.00', '0.00', NULL, '0.00', '-2500', NULL, 1),
(97, '466959786135386', '2944371262', '0909', NULL, NULL, NULL, '', '400.00', 390, '-1200.00', '0.00', NULL, '0.00', '-1200', NULL, 1),
(98, '318976382924272', '2944371262', '0909', NULL, NULL, NULL, '', '400.00', 390, '-800.00', '0.00', NULL, '0.00', '-800', NULL, 1),
(99, '821987185284932', '2944371262', '0909', NULL, NULL, NULL, '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(100, '433635923235745', '2944371262', '0909', NULL, NULL, NULL, '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(101, '594185521831443', '2944371262', '0909', NULL, NULL, NULL, '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(102, '638713731879248', '2944371262', '1234567', NULL, NULL, NULL, '', '400.00', 450, '-1000.00', '0.00', NULL, '0.00', '-1000', NULL, 1),
(103, '432339697978323', '2944371262', '0909', NULL, NULL, NULL, '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-400', NULL, 1),
(104, '252251945734946', '2944371262', '0909', NULL, NULL, NULL, '', '400.00', 390, '-400.00', '0.00', NULL, '0.00', '-900', NULL, 1),
(105, '318195597117381', '2944371262', '1234567', NULL, NULL, NULL, '', '500.00', 450, '-500.00', '0.00', NULL, '0.00', '-900', NULL, 1),
(106, '598942838647914', '2944371262', '0909', NULL, NULL, NULL, '', '400.00', 390, '-800.00', '0.00', NULL, '0.00', '-800', NULL, 1),
(107, '635793424997958', '2944371262', '0909', NULL, NULL, NULL, '', '400.00', 390, '-800.00', '0.00', NULL, '0.00', '-800', NULL, 1),
(108, '231564934544693', '2944371262', '0909', NULL, NULL, '-2.00', '', '400.00', 390, '-800.00', '0.00', NULL, '0.00', '-800', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text DEFAULT NULL,
  `bangla` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES
(1, 'user_profile', 'User Profile', NULL),
(2, 'setting', 'Setting', NULL),
(3, 'language', 'Language', NULL),
(4, 'manage_users', 'Manage Users', NULL),
(5, 'add_user', 'Add User', NULL),
(6, 'manage_company', 'Manage Company', NULL),
(7, 'web_settings', 'Software Settings', NULL),
(8, 'manage_accounts', 'Manage Accounts', NULL),
(9, 'create_accounts', 'Create Account', NULL),
(10, 'manage_bank', 'Manage Bank', NULL),
(11, 'add_new_bank', 'Add New Bank', NULL),
(12, 'settings', 'Settings', NULL),
(13, 'closing_report', 'Closing Report', NULL),
(14, 'closing', 'Closing', NULL),
(15, 'cheque_manager', 'Cheque Manager', NULL),
(16, 'accounts_summary', 'Accounts Summary', NULL),
(17, 'expense', 'Expense', NULL),
(18, 'income', 'Income', NULL),
(19, 'accounts', 'Accounts', NULL),
(20, 'stock_report', 'Stock Report', NULL),
(21, 'stock', 'Stock', NULL),
(22, 'pos_invoice', 'POS Sale', NULL),
(23, 'manage_invoice', 'Manage Sale', NULL),
(24, 'new_invoice', 'New Sale', NULL),
(25, 'invoice', 'Sale', NULL),
(26, 'manage_purchase', 'Manage Purchase', NULL),
(27, 'add_purchase', 'Add Purchase', NULL),
(28, 'purchase', 'Purchase', NULL),
(29, 'paid_customer', 'Paid Customer', NULL),
(30, 'manage_customer', 'Manage Customer', NULL),
(31, 'add_customer', 'Add Customer', NULL),
(32, 'customer', 'Customer', NULL),
(33, 'supplier_payment_actual', 'Supplier Payment Ledger', NULL),
(34, 'supplier_sales_summary', 'Supplier Sales Summary', NULL),
(35, 'supplier_sales_details', 'Supplier Sales Details', NULL),
(36, 'supplier_ledger', 'Supplier Ledger', NULL),
(37, 'manage_supplier', 'Manage Supplier', NULL),
(38, 'add_supplier', 'Add Supplier', NULL),
(39, 'supplier', 'Supplier', NULL),
(40, 'product_statement', 'Product Statement', NULL),
(41, 'manage_product', 'Manage Product', NULL),
(42, 'add_product', 'Add Product', NULL),
(43, 'product', 'Product', NULL),
(44, 'manage_category', 'Manage Category', NULL),
(45, 'add_category', 'Add Category', NULL),
(46, 'category', 'Category', NULL),
(47, 'sales_report_product_wise', 'Sales Report (Product Wise)', NULL),
(48, 'purchase_report', 'Purchase Report', NULL),
(49, 'sales_report', 'Sales Report', NULL),
(50, 'todays_report', 'Todays Report', NULL),
(51, 'report', 'Report', NULL),
(52, 'dashboard', 'Dashboard', NULL),
(53, 'online', 'Online', NULL),
(54, 'logout', 'Logout', NULL),
(55, 'change_password', 'Change Password', NULL),
(56, 'total_purchase', 'Total Purchase', NULL),
(57, 'total_amount', 'Total Amount', NULL),
(58, 'supplier_name', 'Supplier Name', NULL),
(59, 'invoice_no', 'Invoice No', NULL),
(60, 'purchase_date', 'Purchase Date', NULL),
(61, 'todays_purchase_report', 'Todays Purchase Report', NULL),
(62, 'total_sales', 'Total Sales', NULL),
(63, 'customer_name', 'Customer Name', NULL),
(64, 'sales_date', 'Sales Date', NULL),
(65, 'todays_sales_report', 'Todays Sales Report', NULL),
(66, 'home', 'Home', NULL),
(67, 'todays_sales_and_purchase_report', 'Todays sales and purchase report', NULL),
(68, 'total_ammount', 'Total Amount', NULL),
(69, 'rate', 'Rate', NULL),
(70, 'product_model', 'Product Model', NULL),
(71, 'product_name', 'Product Name', NULL),
(72, 'search', 'Search', NULL),
(73, 'end_date', 'End Date', NULL),
(74, 'start_date', 'Start Date', NULL),
(75, 'total_purchase_report', 'Total Purchase Report', NULL),
(76, 'total_sales_report', 'Total Sales Report', NULL),
(77, 'total_seles', 'Total Sales', NULL),
(78, 'all_stock_report', 'All Stock Report', NULL),
(79, 'search_by_product', 'Search By Product', NULL),
(80, 'date', 'Date', NULL),
(81, 'print', 'Print', NULL),
(82, 'stock_date', 'Stock Date', NULL),
(83, 'print_date', 'Print Date', NULL),
(84, 'sales', 'Sales', NULL),
(85, 'price', 'Price', NULL),
(86, 'sl', 'SL.', NULL),
(87, 'add_new_category', 'Add new category', NULL),
(88, 'category_name', 'Category Name', NULL),
(89, 'save', 'Save', NULL),
(90, 'delete', 'Delete', NULL),
(91, 'update', 'Update', NULL),
(92, 'action', 'Action', NULL),
(93, 'manage_your_category', 'Manage your category ', NULL),
(94, 'category_edit', 'Category Edit', NULL),
(95, 'status', 'Status', NULL),
(96, 'active', 'Active', NULL),
(97, 'inactive', 'Inactive', NULL),
(98, 'save_changes', 'Save Changes', NULL),
(99, 'save_and_add_another', 'Save And Add Another', NULL),
(100, 'model', 'Model', NULL),
(101, 'supplier_price', 'Supplier Price', NULL),
(102, 'sell_price', 'Sale Price', NULL),
(103, 'image', 'Image', NULL),
(104, 'select_one', 'Select One', NULL),
(105, 'details', 'Details', NULL),
(106, 'new_product', 'New Product', NULL),
(107, 'add_new_product', 'Add new product', NULL),
(108, 'barcode', 'Barcode', NULL),
(109, 'qr_code', 'Qr-Code', NULL),
(110, 'product_details', 'Product Details', NULL),
(111, 'manage_your_product', 'Manage your product', NULL),
(112, 'product_edit', 'Product Edit', NULL),
(113, 'edit_your_product', 'Edit your product', NULL),
(114, 'cancel', 'Cancel', NULL),
(115, 'incl_vat', 'Incl. Vat', NULL),
(116, 'money', 'TK', NULL),
(117, 'grand_total', 'Grand Total', NULL),
(118, 'quantity', 'Qnty', NULL),
(119, 'product_report', 'Product Report', NULL),
(120, 'product_sales_and_purchase_report', 'Product sales and purchase report', NULL),
(121, 'previous_stock', 'Previous Stock', NULL),
(122, 'out', 'Out', NULL),
(123, 'in', 'In', NULL),
(124, 'to', 'To', NULL),
(125, 'previous_balance', 'Previous Credit Balance', NULL),
(126, 'customer_address', 'Customer Address', NULL),
(127, 'customer_mobile', 'Customer Mobile', NULL),
(128, 'customer_email', 'Customer Email', NULL),
(129, 'add_new_customer', 'Add new customer', NULL),
(130, 'balance', 'Balance', NULL),
(131, 'mobile', 'Mobile', NULL),
(132, 'address', 'Address', NULL),
(133, 'manage_your_customer', 'Manage your customer', NULL),
(134, 'customer_edit', 'Customer Edit', NULL),
(135, 'paid_customer_list', 'Paid Customer List', NULL),
(136, 'ammount', 'Amount', NULL),
(137, 'customer_ledger', 'Customer Ledger', NULL),
(138, 'manage_customer_ledger', 'Manage Customer Ledger', NULL),
(139, 'customer_information', 'Customer Information', NULL),
(140, 'debit_ammount', 'Debit Amount', NULL),
(141, 'credit_ammount', 'Credit Amount', NULL),
(142, 'balance_ammount', 'Balance Amount', NULL),
(143, 'receipt_no', 'Receipt NO', NULL),
(144, 'description', 'Description', NULL),
(145, 'debit', 'Debit', NULL),
(146, 'credit', 'Credit', NULL),
(147, 'item_information', 'Item Information', NULL),
(148, 'total', 'Total', NULL),
(149, 'please_select_supplier', 'Please Select Supplier', NULL),
(150, 'submit', 'Submit', NULL),
(151, 'submit_and_add_another', 'Submit And Add Another One', NULL),
(152, 'add_new_item', 'Add New Item', NULL),
(153, 'manage_your_purchase', 'Manage your purchase', NULL),
(154, 'purchase_edit', 'Purchase Edit', NULL),
(155, 'purchase_ledger', 'Purchase Ledger', NULL),
(156, 'invoice_information', 'Sale Information', NULL),
(157, 'paid_ammount', 'Paid Amount', NULL),
(158, 'discount', 'Dis./Pcs.', NULL),
(159, 'save_and_paid', 'Save And Paid', NULL),
(160, 'payee_name', 'Payee Name', NULL),
(161, 'manage_your_invoice', 'Manage your Sale', NULL),
(162, 'invoice_edit', 'Sale Edit', NULL),
(163, 'new_pos_invoice', 'New POS Sale', NULL),
(164, 'add_new_pos_invoice', 'Add new pos Sale', NULL),
(165, 'product_id', 'Product ID', NULL),
(166, 'paid_amount', 'Paid Amount', NULL),
(167, 'authorised_by', 'Authorised By', NULL),
(168, 'checked_by', 'Checked By', NULL),
(169, 'received_by', 'Received By', NULL),
(170, 'prepared_by', 'Prepared By', NULL),
(171, 'memo_no', 'Memo No', NULL),
(172, 'website', 'Website', NULL),
(173, 'email', 'Email', NULL),
(174, 'invoice_details', 'Sale Details', NULL),
(175, 'reset', 'Reset', NULL),
(176, 'payment_account', 'Payment Account', NULL),
(177, 'bank_name', 'Bank Name', NULL),
(178, 'cheque_or_pay_order_no', 'Cheque/Pay Order No', NULL),
(179, 'payment_type', 'Payment Type', NULL),
(180, 'payment_from', 'Payment From', NULL),
(181, 'payment_date', 'Payment Date', NULL),
(182, 'add_income', 'Add Income', NULL),
(183, 'cash', 'Cash', NULL),
(184, 'cheque', 'Cheque', NULL),
(185, 'pay_order', 'Pay Order', NULL),
(186, 'payment_to', 'Payment To', NULL),
(187, 'total_outflow_ammount', 'Total Expense Amount', NULL),
(188, 'transections', 'Transections', NULL),
(189, 'accounts_name', 'Accounts Name', NULL),
(190, 'outflow_report', 'Expense Report', NULL),
(191, 'inflow_report', 'Income Report', NULL),
(192, 'all', 'All', NULL),
(193, 'account', 'Account', NULL),
(194, 'from', 'From', NULL),
(195, 'account_summary_report', 'Account Summary Report', NULL),
(196, 'search_by_date', 'Search By Date', NULL),
(197, 'cheque_no', 'Cheque No', NULL),
(198, 'name', 'Name', NULL),
(199, 'closing_account', 'Closing Account', NULL),
(200, 'close_your_account', 'Close your account', NULL),
(201, 'last_day_closing', 'Last Day Closing', NULL),
(202, 'cash_in', 'Cash In', NULL),
(203, 'cash_out', 'Cash Out', NULL),
(204, 'cash_in_hand', 'Cash In Hand', NULL),
(205, 'add_new_bank', 'Add New Bank', NULL),
(206, 'day_closing', 'Day Closing', NULL),
(207, 'account_closing_report', 'Account Closing Report', NULL),
(208, 'last_day_ammount', 'Last Day Amount', NULL),
(209, 'adjustment', 'Adjustment', NULL),
(210, 'pay_type', 'Pay Type', NULL),
(211, 'customer_or_supplier', 'Customer,Supplier Or Others', NULL),
(212, 'transection_id', 'Transections ID', NULL),
(213, 'accounts_summary_report', 'Accounts Summary Report', NULL),
(214, 'bank_list', 'Bank List', NULL),
(215, 'bank_edit', 'Bank Edit', NULL),
(216, 'debit_plus', 'Debit (+)', NULL),
(217, 'credit_minus', 'Credit (-)', NULL),
(218, 'account_name', 'Account Name', NULL),
(219, 'account_type', 'Account Type', NULL),
(220, 'account_real_name', 'Account Real Name', NULL),
(221, 'manage_account', 'Manage Account', NULL),
(222, 'company_name', 'Niha International', NULL),
(223, 'edit_your_company_information', 'Edit your company information', NULL),
(224, 'company_edit', 'Company Edit', NULL),
(225, 'admin', 'Admin', NULL),
(226, 'user', 'User', NULL),
(227, 'password', 'Password', NULL),
(228, 'last_name', 'Last Name', NULL),
(229, 'first_name', 'First Name', NULL),
(230, 'add_new_user_information', 'Add new user information', NULL),
(231, 'user_type', 'User Type', NULL),
(232, 'user_edit', 'User Edit', NULL),
(233, 'rtr', 'RTR', NULL),
(234, 'ltr', 'LTR', NULL),
(235, 'ltr_or_rtr', 'LTR/RTR', NULL),
(236, 'footer_text', 'Footer Text', NULL),
(237, 'favicon', 'Favicon', NULL),
(238, 'logo', 'Logo', NULL),
(239, 'update_setting', 'Update Setting', NULL),
(240, 'update_your_web_setting', 'Update your web setting', NULL),
(241, 'login', 'Login', NULL),
(242, 'your_strong_password', 'Your strong password', NULL),
(243, 'your_unique_email', 'Your unique email', NULL),
(244, 'please_enter_your_login_information', 'Please enter your login information.', NULL),
(245, 'update_profile', 'Update Profile', NULL),
(246, 'your_profile', 'Your Profile', NULL),
(247, 're_type_password', 'Re-Type Password', NULL),
(248, 'new_password', 'New Password', NULL),
(249, 'old_password', 'Old Password', NULL),
(250, 'new_information', 'New Information', NULL),
(251, 'old_information', 'Old Information', NULL),
(252, 'change_your_information', 'Change your information', NULL),
(253, 'change_your_profile', 'Change your profile', NULL),
(254, 'profile', 'Profile', NULL),
(255, 'wrong_username_or_password', 'Wrong User Name Or Password !', NULL),
(256, 'successfully_updated', 'Successfully Updated.', NULL),
(257, 'blank_field_does_not_accept', 'Blank Field Does Not Accept !', NULL),
(258, 'successfully_changed_password', 'Successfully changed password.', NULL),
(259, 'you_are_not_authorised_person', 'You are not authorised person !', NULL),
(260, 'password_and_repassword_does_not_match', 'Passwor and re-password does not match !', NULL),
(261, 'new_password_at_least_six_character', 'New Password At Least 6 Character.', NULL),
(262, 'you_put_wrong_email_address', 'You put wrong email address !', NULL),
(263, 'cheque_ammount_asjusted', 'Cheque amount adjusted.', NULL),
(264, 'successfully_payment_paid', 'Successfully Payment Paid.', NULL),
(265, 'successfully_added', 'Successfully Added.', NULL),
(266, 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Amount Not Changeable.', NULL),
(267, 'successfully_payment_received', 'Successfully Payment Received.', NULL),
(268, 'already_inserted', 'Already Inserted !', NULL),
(269, 'successfully_delete', 'Successfully Delete.', NULL),
(270, 'successfully_created', 'Successfully Created.', NULL),
(271, 'logo_not_uploaded', 'Logo not uploaded !', NULL),
(272, 'favicon_not_uploaded', 'Favicon not uploaded !', NULL),
(273, 'supplier_mobile', 'Supplier Mobile', NULL),
(274, 'supplier_address', 'Supplier Address', NULL),
(275, 'supplier_details', 'Supplier Details', NULL),
(276, 'add_new_supplier', 'Add New Supplier', NULL),
(277, 'manage_suppiler', 'Manage Supplier', NULL),
(278, 'manage_your_supplier', 'Manage your supplier', NULL),
(279, 'manage_supplier_ledger', 'Manage supplier ledger', NULL),
(280, 'invoice_id', 'Invoice ID', NULL),
(281, 'deposite_id', 'Deposite ID', NULL),
(282, 'supplier_actual_ledger', 'Supplier Payment Ledger', NULL),
(283, 'supplier_information', 'Supplier Information', NULL),
(284, 'event', 'Event', NULL),
(285, 'add_new_income', 'Add New Income', NULL),
(286, 'add_expese', 'Add Expense', NULL),
(287, 'add_new_expense', 'Add New Expense', NULL),
(288, 'total_inflow_ammount', 'Total Income Amount', NULL),
(289, 'create_new_invoice', 'Create New Sale', NULL),
(290, 'create_pos_invoice', 'Create POS Sale', NULL),
(291, 'total_profit', 'Total Profit', NULL),
(292, 'monthly_progress_report', 'Monthly Progress Report', NULL),
(293, 'total_invoice', 'Total Sale', NULL),
(294, 'account_summary', 'Account Summary', NULL),
(295, 'total_supplier', 'Total Supplier', NULL),
(296, 'total_product', 'Total Product', NULL),
(297, 'total_customer', 'Total Customer', NULL),
(298, 'supplier_edit', 'Supplier Edit', NULL),
(299, 'add_new_invoice', 'Add New Sale', NULL),
(300, 'add_new_purchase', 'Add new purchase', NULL),
(301, 'currency', 'Currency', NULL),
(302, 'currency_position', 'Currency Position', NULL),
(303, 'left', 'Left', NULL),
(304, 'right', 'Right', NULL),
(305, 'add_tax', 'Add Tax', NULL),
(306, 'manage_tax', 'Manage Tax', NULL),
(307, 'add_new_tax', 'Add new tax', NULL),
(308, 'enter_tax', 'Enter Tax', NULL),
(309, 'already_exists', 'Already Exists !', NULL),
(310, 'successfully_inserted', 'Successfully Inserted.', NULL),
(311, 'tax', 'Tax', NULL),
(312, 'tax_edit', 'Tax Edit', NULL),
(313, 'product_not_added', 'Product not added !', NULL),
(314, 'total_tax', 'Total Tax', NULL),
(315, 'manage_your_supplier_details', 'Manage your supplier details.', NULL),
(316, 'invoice_description', 'Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', NULL),
(317, 'thank_you_for_choosing_us', 'Thank you very much for choosing us.', NULL),
(318, 'billing_date', 'Billing Date', NULL),
(319, 'billing_to', 'Billing To', NULL),
(320, 'billing_from', 'Billing From', NULL),
(321, 'you_cant_delete_this_product', 'Sorry !!  You can\'t delete this product.This product already used in calculation system!', NULL),
(322, 'old_customer', 'Old Customer', NULL),
(323, 'new_customer', 'New Customer', NULL),
(324, 'new_supplier', 'New Supplier', NULL),
(325, 'old_supplier', 'Old Supplier', NULL),
(326, 'credit_customer', 'Credit Customer', NULL),
(327, 'account_already_exists', 'This Account Already Exists !', NULL),
(328, 'edit_income', 'Edit Income', NULL),
(329, 'you_are_not_access_this_part', 'You are not authorised person !', NULL),
(330, 'account_edit', 'Account Edit', NULL),
(331, 'due', 'Due', NULL),
(332, 'expense_edit', 'Expense Edit', NULL),
(333, 'please_select_customer', 'Please select customer !', NULL),
(334, 'profit_report', 'Profit Report (Sale Wise)', NULL),
(335, 'total_profit_report', 'Total profit report', NULL),
(336, 'please_enter_valid_captcha', 'Please enter valid captcha.', NULL),
(337, 'category_not_selected', 'Category not selected.', NULL),
(338, 'supplier_not_selected', 'Supplier not selected.', NULL),
(339, 'please_select_product', 'Please select product.', NULL),
(340, 'product_model_already_exist', 'Product model already exist !', NULL),
(341, 'invoice_logo', 'Sale Logo', NULL),
(342, 'available_qnty', 'Av. Qnty.', NULL),
(343, 'you_can_not_buy_greater_than_available_cartoon', 'You can not select grater than available cartoon !', NULL),
(344, 'customer_details', 'Customer details', NULL),
(345, 'manage_customer_details', 'Manage customer details.', NULL),
(346, 'site_key', 'Captcha Site Key', NULL),
(347, 'secret_key', 'Captcha Secret Key', NULL),
(348, 'captcha', 'Captcha', NULL),
(349, 'cartoon_quantity', 'Cartoon Quantity', NULL),
(350, 'total_cartoon', 'Total Cartoon', NULL),
(351, 'cartoon', 'Cartoon', NULL),
(352, 'item_cartoon', 'Item/Cartoon', NULL),
(353, 'product_and_supplier_did_not_match', 'Product and supplier did not match !', NULL),
(354, 'if_you_update_purchase_first_select_supplier_then_product_and_then_quantity', 'If you update purchase,first select supplier then product and then update qnty.', NULL),
(355, 'item', 'Item', NULL),
(356, 'manage_your_credit_customer', 'Manage your credit customer', NULL),
(357, 'total_quantity', 'Total Quantity', NULL),
(358, 'quantity_per_cartoon', 'Quantity per cartoon', NULL),
(359, 'barcode_qrcode_scan_here', 'Barcode or QR-code scan here', NULL),
(360, 'synchronizer_setting', 'Synchronizer Setting', NULL),
(361, 'data_synchronizer', 'Data Synchronizer', NULL),
(362, 'hostname', 'Host name', NULL),
(363, 'username', 'User Name', NULL),
(364, 'ftp_port', 'FTP Port', NULL),
(365, 'ftp_debug', 'FTP Debug', NULL),
(366, 'project_root', 'Project Root', NULL),
(367, 'please_try_again', 'Please try again', NULL),
(368, 'save_successfully', 'Save successfully', NULL),
(369, 'synchronize', 'Synchronize', NULL),
(370, 'internet_connection', 'Internet Connection', NULL),
(371, 'outgoing_file', 'Outgoing File', NULL),
(372, 'incoming_file', 'Incoming File', NULL),
(373, 'ok', 'Ok', NULL),
(374, 'not_available', 'Not Available', NULL),
(375, 'available', 'Available', NULL),
(376, 'download_data_from_server', 'Download data from server', NULL),
(377, 'data_import_to_database', 'Data import to database', NULL),
(378, 'data_upload_to_server', 'Data uplod to server', NULL),
(379, 'please_wait', 'Please Wait', NULL),
(380, 'ooops_something_went_wrong', 'Oooops Something went wrong !', NULL),
(381, 'upload_successfully', 'Upload successfully', NULL),
(382, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file please check configuration', NULL),
(383, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', NULL),
(384, 'download_successfully', 'Download successfully', NULL),
(385, 'unable_to_download_file_please_check_configuration', 'Unable to download file please check configuration', NULL),
(386, 'data_import_first', 'Data import past', NULL),
(387, 'data_import_successfully', 'Data import successfully', NULL),
(388, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data please check config or sql file', NULL),
(389, 'total_sale_ctn', 'Total Sale Ctn', NULL),
(390, 'in_qnty', 'In Qnty.', NULL),
(391, 'out_qnty', 'Out Qnty.', NULL),
(392, 'stock_report_supplier_wise', 'Stock Report (Supplier Wise)', NULL),
(393, 'all_stock_report_supplier_wise', 'Stock Report (Suppler Wise)', NULL),
(394, 'select_supplier', 'Select Supplier', NULL),
(395, 'stock_report_product_wise', 'Stock Report (Product Wise)', NULL),
(396, 'phone', 'Phone', NULL),
(397, 'select_product', 'Select Product', NULL),
(398, 'in_quantity', 'In Qnty.', NULL),
(399, 'out_quantity', 'Out Qnty.', NULL),
(400, 'in_taka', 'In TK.', NULL),
(401, 'out_taka', 'Out TK.', NULL),
(402, 'commission', 'Commission', NULL),
(403, 'generate_commission', 'Generate Commssion', NULL),
(404, 'commission_rate', 'Commission Rate', NULL),
(405, 'total_ctn', 'Total Ctn.', NULL),
(406, 'per_pcs_commission', 'Per PCS Commission', NULL),
(407, 'total_commission', 'Total Commission', NULL),
(408, 'enter', 'Enter', NULL),
(409, 'please_add_walking_customer_for_default_customer', 'Please add \'Walking Customer\' for default customer.', NULL),
(410, 'supplier_ammount', 'Supplier Amount', NULL),
(411, 'my_sale_ammount', 'My Sale Amount', NULL),
(412, 'signature_pic', 'Signature Picture', NULL),
(413, 'branch', 'Branch', NULL),
(414, 'ac_no', 'A/C Number', NULL),
(415, 'ac_name', 'A/C Name', NULL),
(416, 'bank_transaction', 'Bank Transaction', NULL),
(417, 'bank', 'Bank', NULL),
(418, 'withdraw_deposite_id', 'Withdraw / Deposite ID', NULL),
(419, 'bank_ledger', 'Bank Ledger', NULL),
(420, 'note_name', 'Note Name', NULL),
(421, 'pcs', 'Pcs.', NULL),
(422, '1', '1', NULL),
(423, '2', '2', NULL),
(424, '5', '5', NULL),
(425, '10', '10', NULL),
(426, '20', '20', NULL),
(427, '50', '50', NULL),
(428, '100', '100', NULL),
(429, '500', '500', NULL),
(430, '1000', '1000', NULL),
(431, 'total_discount', 'Total Discount', NULL),
(432, 'product_not_found', 'Product not found !', NULL),
(433, 'this_is_not_credit_customer', 'This is not credit customer !', NULL),
(434, 'personal_loan', 'Personal Loan', NULL),
(435, 'add_person', 'Add Person', NULL),
(436, 'add_loan', 'Add Loan', NULL),
(437, 'add_payment', 'Add Payment', NULL),
(438, 'manage_person', 'Manage Person', NULL),
(439, 'personal_edit', 'Person Edit', NULL),
(440, 'person_ledger', 'Person Ledger', NULL),
(441, 'backup_restore', 'Backup ', NULL),
(442, 'database_backup', 'Database backup', NULL),
(443, 'file_information', 'File information', NULL),
(444, 'filename', 'Filename', NULL),
(445, 'size', 'Size', NULL),
(446, 'backup_date', 'Backup date', NULL),
(447, 'backup_now', 'Backup now', NULL),
(448, 'restore_now', 'Restore now', NULL),
(449, 'are_you_sure', 'Are you sure ?', NULL),
(450, 'download', 'Download', NULL),
(451, 'backup_and_restore', 'Backup', NULL),
(452, 'backup_successfully', 'Backup successfully', NULL),
(453, 'delete_successfully', 'Delete successfully', NULL),
(454, 'stock_ctn', 'Stock/Qnt', NULL),
(455, 'unit', 'Unit', NULL),
(456, 'meter_m', 'Meter (M)', NULL),
(457, 'piece_pc', 'Piece (Pc)', NULL),
(458, 'kilogram_kg', 'Kilogram (Kg)', NULL),
(459, 'stock_cartoon', 'Stock Cartoon', NULL),
(460, 'add_product_csv', 'Add Product (CSV)', NULL),
(461, 'import_product_csv', 'Import product (CSV)', NULL),
(462, 'close', 'Close', NULL),
(463, 'download_example_file', 'Download example file.', NULL),
(464, 'upload_csv_file', 'Upload CSV File', NULL),
(465, 'csv_file_informaion', 'CSV File Information', NULL),
(466, 'out_of_stock', 'Out Of Stock', NULL),
(467, 'others', 'Others', NULL),
(468, 'full_paid', 'Full Paid', NULL),
(469, 'successfully_saved', 'Your Data Successfully Saved', NULL),
(470, 'manage_loan', 'Manage Loan', NULL),
(471, 'receipt', 'Receipt', NULL),
(472, 'payment', 'Payment', NULL),
(473, 'cashflow', 'Daily Cash Flow', NULL),
(474, 'signature', 'Signature', NULL),
(475, 'supplier_reports', 'Supplier Reports', NULL),
(476, 'generate', 'Generate', NULL),
(477, 'todays_overview', 'Todays Overview', NULL),
(478, 'last_sales', 'Last Sales', NULL),
(479, 'manage_transaction', 'Manage Transaction', NULL),
(480, 'daily_summary', 'Daily Summary', NULL),
(481, 'daily_cash_flow', 'Daily Cash Flow', NULL),
(482, 'custom_report', 'Custom Report', NULL),
(483, 'transaction', 'Transaction', NULL),
(484, 'receipt_amount', 'Receipt Amount', NULL),
(485, 'transaction_details_datewise', 'Transaction Details Datewise', NULL),
(486, 'cash_closing', 'Cash Closing', NULL),
(487, 'you_can_not_buy_greater_than_available_qnty', 'You can not buy greater than available qnty.', NULL),
(488, 'supplier_id', 'Supplier ID', NULL),
(489, 'category_id', 'Category ID', NULL),
(490, 'select_report', 'Select Report', NULL),
(491, 'supplier_summary', 'Supplier summary', NULL),
(492, 'sales_payment_actual', 'Sales payment actual', NULL),
(493, 'today_already_closed', 'Today already closed.', NULL),
(494, 'root_account', 'Root Account', NULL),
(495, 'office', 'Office', NULL),
(496, 'loan', 'Loan', NULL),
(497, 'transaction_mood', 'Transaction Mood', NULL),
(498, 'select_account', 'Select Account', NULL),
(499, 'add_receipt', 'Add Receipt', NULL),
(500, 'update_transaction', 'Update Transaction', NULL),
(501, 'no_stock_found', 'No Stock Found !', NULL),
(502, 'admin_login_area', 'Admin Login Area', NULL),
(503, 'print_qr_code', 'Print QR Code', NULL),
(504, 'discount_type', 'Discount Type', NULL),
(505, 'discount_percentage', 'Discount', NULL),
(506, 'fixed_dis', 'Fixed Dis.', NULL),
(507, 'return', 'Return', NULL),
(508, 'stock_return_list', 'Stock Return List', NULL),
(509, 'wastage_return_list', 'Wastage Return List', NULL),
(510, 'return_invoice', 'Sale Return', NULL),
(511, 'sold_qty', 'Sold Qty', NULL),
(512, 'ret_quantity', 'Return Qty', NULL),
(513, 'deduction', 'Deduction', NULL),
(514, 'check_return', 'Check Return', NULL),
(515, 'reason', 'Reason', NULL),
(516, 'usablilties', 'Usability', NULL),
(517, 'adjs_with_stck', 'Adjust With Stock', NULL),
(518, 'return_to_supplier', 'Return To Supplier', NULL),
(519, 'wastage', 'Wastage', NULL),
(520, 'to_deduction', 'Total Deduction ', NULL),
(521, 'nt_return', 'Net Return Amount', NULL),
(522, 'return_list', 'Return List', NULL),
(523, 'add_return', 'Add Return', NULL),
(524, 'per_qty', 'Purchase Qty', NULL),
(525, 'return_supplier', 'Supplier Return', NULL),
(526, 'stock_purchase', 'Stock Purchase Price', NULL),
(527, 'stock_sale', 'Stock Sale Price', NULL),
(528, 'supplier_return', 'Supplier Return', NULL),
(529, 'purchase_id', 'Purchase ID', NULL),
(530, 'return_id', 'Return ID', NULL),
(531, 'supplier_return_list', 'Supplier Return List', NULL),
(532, 'c_r_slist', 'Stock Return Stock', NULL),
(533, 'wastage_list', 'Wastage List', NULL),
(534, 'please_input_correct_invoice_id', 'Please Input a Correct Sale ID', NULL),
(535, 'please_input_correct_purchase_id', 'Please Input Your Correct  Purchase ID', NULL),
(536, 'add_more', 'Add More', NULL),
(537, 'prouct_details', 'Product Details', NULL),
(538, 'prouct_detail', 'Product Details', NULL),
(539, 'stock_return', 'Stock Return', NULL),
(540, 'choose_transaction', 'Select Transaction', NULL),
(541, 'transection_category', 'Select  Category', NULL),
(542, 'transaction_categry', 'Select Category', NULL),
(543, 'search_supplier', 'Search Supplier', NULL),
(544, 'customer_id', 'Customer ID', NULL),
(545, 'search_customer', 'Search Customer Invoice', NULL),
(546, 'serial_no', 'SN', NULL),
(547, 'item_discount', 'Item Discount', NULL),
(548, 'invoice_discount', 'Sale Discount', NULL),
(549, 'add_unit', 'Add Unit', NULL),
(550, 'manage_unit', 'Manage Unit', NULL),
(551, 'add_new_unit', 'Add New Unit', NULL),
(552, 'unit_name', 'Unit Name', NULL),
(553, 'payment_amount', 'Payment Amount', NULL),
(554, 'manage_your_unit', 'Manage Your Unit', NULL),
(555, 'unit_id', 'Unit ID', NULL),
(556, 'unit_edit', 'Unit Edit', NULL),
(557, 'vat', 'Vat', NULL),
(558, 'sales_report_category_wise', 'Sales Report (Category wise)', NULL),
(559, 'purchase_report_category_wise', 'Purchase Report (Category wise)', NULL),
(560, 'category_wise_purchase_report', 'Category wise purchase report', NULL),
(561, 'category_wise_sales_report', 'Category wise sales report', NULL),
(562, 'best_sale_product', 'Best Sale Product', NULL),
(563, 'all_best_sales_product', 'All Best Sales Products', NULL),
(564, 'todays_customer_receipt', 'Todays Customer Receipt', NULL),
(565, 'not_found', 'Record not found', NULL),
(566, 'collection', 'Collection', NULL),
(567, 'increment', 'Increment', NULL),
(568, 'accounts_tree_view', 'Accounts Tree View', NULL),
(569, 'debit_voucher', 'Debit Voucher', NULL),
(570, 'voucher_no', 'Voucher No', NULL),
(571, 'credit_account_head', 'Credit Account Head', NULL),
(572, 'remark', 'Remark', NULL),
(573, 'code', 'Code', NULL),
(574, 'amount', 'Amount', NULL),
(575, 'approved', 'Approved', NULL),
(576, 'debit_account_head', 'Debit Account Head', NULL),
(577, 'credit_voucher', 'Credit Voucher', NULL),
(578, 'find', 'Find', NULL),
(579, 'transaction_date', 'Transaction Date', NULL),
(580, 'voucher_type', 'Voucher Type', NULL),
(581, 'particulars', 'Particulars', NULL),
(582, 'with_details', 'With Details', NULL),
(583, 'general_ledger', 'General Ledger', NULL),
(584, 'general_ledger_of', 'General ledger of', NULL),
(585, 'pre_balance', 'Pre Balance', NULL),
(586, 'current_balance', 'Current Balance', NULL),
(587, 'to_date', 'To Date', NULL),
(588, 'from_date', 'From Date', NULL),
(589, 'trial_balance', 'Trial Balance', NULL),
(590, 'authorized_signature', 'Authorized Signature', NULL),
(591, 'chairman', 'Chairman', NULL),
(592, 'total_income', 'Total Income', NULL),
(593, 'statement_of_comprehensive_income', 'Statement of Comprehensive Income', NULL),
(594, 'profit_loss', 'Profit Loss', NULL),
(595, 'cash_flow_report', 'Cash Flow Report', NULL),
(596, 'cash_flow_statement', 'Cash Flow Statement', NULL),
(597, 'amount_in_dollar', 'Amount In Dollar', NULL),
(598, 'opening_cash_and_equivalent', 'Opening Cash and Equivalent', NULL),
(599, 'coa_print', 'Coa Print', NULL),
(600, 'cash_flow', 'Cash Flow', NULL),
(601, 'cash_book', 'Cash Book', NULL),
(602, 'bank_book', 'Bank Book', NULL),
(603, 'c_o_a', 'Chart of Account', NULL),
(604, 'journal_voucher', 'Journal Voucher', NULL),
(605, 'contra_voucher', 'Contra Voucher', NULL),
(606, 'voucher_approval', 'Vouchar Approval', NULL),
(607, 'supplier_payment', 'Supplier Payment', NULL),
(608, 'customer_receive', 'Customer Receive', NULL),
(609, 'gl_head', 'General Head', NULL),
(610, 'account_code', 'Account Head', NULL),
(611, 'opening_balance', 'Opening Balance', NULL),
(612, 'head_of_account', 'Head of Account', NULL),
(613, 'inventory_ledger', 'Inventory Ledger', NULL),
(614, 'newpassword', 'New Password', NULL),
(615, 'password_recovery', 'Password Recovery', NULL),
(616, 'forgot_password', 'Forgot Password ??', NULL),
(617, 'send', 'Send', NULL),
(618, 'due_report', 'Due Report', NULL),
(619, 'due_amount', 'Due Amount', NULL),
(620, 'download_sample_file', 'Download Sample File', NULL),
(621, 'customer_csv_upload', 'Customer Csv Upload', NULL),
(622, 'csv_supplier', 'Csv Upload Supplier', NULL),
(623, 'csv_upload_supplier', 'Csv Upload Supplier', NULL),
(624, 'previous', 'Previous', NULL),
(625, 'net_total', 'Net Total', NULL),
(626, 'currency_list', 'Currency List', NULL),
(627, 'currency_name', 'Currency Name', NULL),
(628, 'currency_icon', 'Currency Symbol', NULL),
(629, 'add_currency', 'Add Currency', NULL),
(630, 'role_permission', 'Role Permission', NULL),
(631, 'role_list', 'Role List', NULL),
(632, 'user_assign_role', 'User Assign Role', NULL),
(633, 'permission', 'Permission', NULL),
(634, 'add_role', 'Add Role', NULL),
(635, 'add_module', 'Add Module', NULL),
(636, 'module_name', 'Module Name', NULL),
(637, 'office_loan', 'Office Loan', NULL),
(638, 'add_menu', 'Add Menu', NULL),
(639, 'menu_name', 'Menu Name', NULL),
(640, 'sl_no', 'Sl No', NULL),
(641, 'create', 'Create', NULL),
(642, 'read', 'Read', NULL),
(643, 'role_name', 'Role Name', NULL),
(644, 'qty', 'Quantity', NULL),
(645, 'max_rate', 'Max Rate', NULL),
(646, 'min_rate', 'Min Rate', NULL),
(647, 'avg_rate', 'Average Rate', NULL),
(648, 'role_permission_added_successfully', 'Role Permission Successfully Added', NULL),
(649, 'update_successfully', 'Successfully Updated', NULL),
(650, 'role_permission_updated_successfully', 'Role Permission Successfully Updated ', NULL),
(651, 'shipping_cost', 'Shipping Cost', NULL),
(652, 'in_word', 'In Word ', NULL),
(653, 'shipping_cost_report', 'Shipping Cost Report', NULL),
(654, 'cash_book_report', 'Cash Book Report', NULL),
(655, 'inventory_ledger_report', 'Inventory Ledger Report', NULL),
(656, 'trial_balance_with_opening_as_on', 'Trial Balance With Opening As On', NULL),
(657, 'type', 'Type', NULL),
(658, 'taka_only', 'Taka Only', NULL),
(659, 'item_description', 'Desc', NULL),
(660, 'sold_by', 'Sold By', NULL),
(661, 'user_wise_sales_report', 'User Wise Sales Report', NULL),
(662, 'user_name', 'User Name', NULL),
(663, 'total_sold', 'Total Sold', NULL),
(664, 'user_wise_sale_report', 'User Wise Sales Report', NULL),
(665, 'barcode_or_qrcode', 'Barcode/QR-code', NULL),
(666, 'category_csv_upload', 'Category Csv  Upload', NULL),
(667, 'unit_csv_upload', 'Unit Csv Upload', NULL),
(668, 'invoice_return_list', 'Sales Return list', NULL),
(669, 'invoice_return', 'Sales Return', NULL),
(670, 'tax_report', 'Tax Report', NULL),
(671, 'select_tax', 'Select Tax', NULL),
(672, 'hrm', 'HRM', NULL),
(673, 'employee', 'Employee', NULL),
(674, 'add_employee', 'Add Employee', NULL),
(675, 'manage_employee', 'Manage Employee', NULL),
(676, 'attendance', 'Attendance', NULL),
(677, 'add_attendance', 'Attendance', NULL),
(678, 'manage_attendance', 'Manage Attendance', NULL),
(679, 'payroll', 'Payroll', NULL),
(680, 'add_payroll', 'Payroll', NULL),
(681, 'manage_payroll', 'Manage Payroll', NULL),
(682, 'employee_type', 'Employee Type', NULL),
(683, 'employee_designation', 'Employee Designation', NULL),
(684, 'designation', 'Designation', NULL),
(685, 'add_designation', 'Add Designation', NULL),
(686, 'manage_designation', 'Manage Designation', NULL),
(687, 'designation_update_form', 'Designation Update form', NULL),
(688, 'picture', 'Picture', NULL),
(689, 'country', 'Country', NULL),
(690, 'blood_group', 'Blood Group', NULL),
(691, 'address_line_1', 'Address Line 1', NULL),
(692, 'address_line_2', 'Address Line 2', NULL),
(693, 'zip', 'Zip code', NULL),
(694, 'city', 'City', NULL),
(695, 'hour_rate_or_salary', 'Houre Rate/Salary', NULL),
(696, 'rate_type', 'Rate Type', NULL),
(697, 'hourly', 'Hourly', NULL),
(698, 'salary', 'Salary', NULL),
(699, 'employee_update', 'Employee Update', NULL),
(700, 'checkin', 'Check In', NULL),
(701, 'employee_name', 'Employee Name', NULL),
(702, 'checkout', 'Check Out', NULL),
(703, 'confirm_clock', 'Confirm Clock', NULL),
(704, 'stay', 'Stay Time', NULL),
(705, 'sign_in', 'Sign In', NULL),
(706, 'check_in', 'Check In', NULL),
(707, 'single_checkin', 'Single Check In', NULL),
(708, 'bulk_checkin', 'Bulk Check In', NULL),
(709, 'successfully_checkout', 'Successfully Checkout', NULL),
(710, 'attendance_report', 'Attendance Report', NULL),
(711, 'datewise_report', 'Date Wise Report', NULL),
(712, 'employee_wise_report', 'Employee Wise Report', NULL),
(713, 'date_in_time_report', 'Date In Time Report', NULL),
(714, 'request', 'Request', NULL),
(715, 'sign_out', 'Sign Out', NULL),
(716, 'work_hour', 'Work Hours', NULL),
(717, 's_time', 'Start Time', NULL),
(718, 'e_time', 'In Time', NULL),
(719, 'salary_benefits_type', 'Benefits Type', NULL),
(720, 'salary_benefits', 'Salary Benefits', NULL),
(721, 'beneficial_list', 'Benefit List', NULL),
(722, 'add_beneficial', 'Add Benefits', NULL),
(723, 'add_benefits', 'Add Benefits', NULL),
(724, 'benefits_list', 'Benefit List', NULL),
(725, 'benefit_type', 'Benefit Type', NULL),
(726, 'benefits', 'Benefit', NULL),
(727, 'manage_benefits', 'Manage Benefits', NULL),
(728, 'deduct', 'Deduct', NULL),
(729, 'add', 'Add', NULL),
(730, 'add_salary_setup', 'Add Salary Setup', NULL),
(731, 'manage_salary_setup', 'Manage Salary Setup', NULL),
(732, 'basic', 'Basic', NULL),
(733, 'salary_type', 'Salary Type', NULL),
(734, 'addition', 'Addition', NULL),
(735, 'gross_salary', 'Gross Salary', NULL),
(736, 'set', 'Set', NULL),
(737, 'salary_generate', 'Salary Generate', NULL),
(738, 'manage_salary_generate', 'Manage Salary Generate', NULL),
(739, 'sal_name', 'Salary Name', NULL),
(740, 'gdate', 'Generated Date', NULL),
(741, 'generate_by', 'Generated By', NULL),
(742, 'the_salary_of', 'The Salary of ', NULL),
(743, 'already_generated', ' Already Generated', NULL),
(744, 'salary_month', 'Salary Month', NULL),
(745, 'successfully_generated', 'Successfully Generated', NULL),
(746, 'salary_payment', 'Salary Payment', NULL),
(747, 'employee_salary_payment', 'Employee Salary Payment', NULL),
(748, 'total_salary', 'Total Salary', NULL),
(749, 'total_working_minutes', 'Total Working Hours', NULL),
(750, 'working_period', 'Working Period', NULL),
(751, 'paid_by', 'Paid By', NULL),
(752, 'pay_now', 'Pay Now ', NULL),
(753, 'confirm', 'Confirm', NULL),
(754, 'successfully_paid', 'Successfully Paid', NULL),
(755, 'add_incometax', 'Add Income Tax', NULL),
(756, 'setup_tax', 'Setup Tax', NULL),
(757, 'start_amount', 'Start Amount', NULL),
(758, 'end_amount', 'End Amount', NULL),
(759, 'tax_rate', 'Tax Rate', NULL),
(760, 'setup', 'Setup', NULL),
(761, 'manage_income_tax', 'Manage Income Tax', NULL),
(762, 'income_tax_updateform', 'Income tax Update form', NULL),
(763, 'positional_information', 'Positional Information', NULL),
(764, 'personal_information', 'Personal Information', NULL),
(765, 'timezone', 'Time Zone', NULL),
(766, 'sms', 'SMS', NULL),
(767, 'sms_configure', 'SMS Configure', NULL),
(768, 'url', 'URL', NULL),
(769, 'sender_id', 'Sender ID', NULL),
(770, 'api_key', 'Api Key', NULL),
(771, 'gui_pos', 'GUI POS', NULL),
(772, 'manage_service', 'Manage Service', NULL),
(773, 'service', 'Service', NULL),
(774, 'add_service', 'Add Service', NULL),
(775, 'service_edit', 'Service Edit', NULL),
(776, 'service_csv_upload', 'Service CSV Upload', NULL),
(777, 'service_name', 'Service Name', NULL),
(778, 'charge', 'Charge', NULL),
(779, 'service_invoice', 'Service Invoice', NULL),
(780, 'service_discount', 'Service Discount', NULL),
(781, 'hanging_over', 'ETD', NULL),
(782, 'service_details', 'Service Details', NULL),
(783, 'tax_settings', 'Tax Settings', NULL),
(784, 'default_value', 'Default Value', NULL),
(785, 'number_of_tax', 'Number of Tax', NULL),
(786, 'please_select_employee', 'Please Select Employee', NULL),
(787, 'manage_service_invoice', 'Manage Service Invoice', NULL),
(788, 'update_service_invoice', 'Update Service Invoice', NULL),
(789, 'customer_wise_tax_report', 'Customer Wise  Tax Report', NULL),
(790, 'service_id', 'Service Id', NULL),
(791, 'invoice_wise_tax_report', 'Invoice Wise Tax Report', NULL),
(792, 'reg_no', 'Reg No', NULL),
(793, 'update_now', 'Update Now', NULL),
(794, 'import', 'Import', NULL),
(795, 'add_expense_item', 'Add Expense Item', NULL),
(796, 'manage_expense_item', 'Manage Expense Item', NULL),
(797, 'add_expense', 'Add Expense', NULL),
(798, 'manage_expense', 'Manage Expense', NULL),
(799, 'expense_statement', 'Expense Statement', NULL),
(800, 'expense_type', 'Expense Type', NULL),
(801, 'expense_item_name', 'Expense Item Name', NULL),
(802, 'stock_purchase_price', 'Stock Purchase Price', NULL),
(803, 'purchase_price', 'Purchase Price', NULL),
(804, 'customer_advance', 'Customer Advance', NULL),
(805, 'advance_type', 'Advance Type', NULL),
(806, 'restore', 'Restore', NULL),
(807, 'supplier_advance', 'Supplier Advance', NULL),
(808, 'please_input_correct_invoice_no', 'Please Input Correct Invoice NO', NULL),
(809, 'backup', 'Back Up', NULL),
(810, 'app_setting', 'App Settings', NULL),
(811, 'local_server_url', 'Local Server Url', NULL),
(812, 'online_server_url', 'Online Server Url', NULL),
(813, 'connet_url', 'Connected Hotspot Ip/url', NULL),
(814, 'update_your_app_setting', 'Update Your App Setting', NULL),
(815, 'select_category', 'Select Category', NULL),
(816, 'mini_invoice', 'Mini Invoice', NULL),
(817, 'purchase_details', 'Purchase Details', NULL),
(818, 'disc', 'Dis %', NULL),
(819, 'serial', 'Serial', NULL),
(820, 'transaction_head', 'Transaction Head', NULL),
(821, 'transaction_type', 'Transaction Type', NULL),
(822, 'return_details', 'Return Details', NULL),
(823, 'return_to_customer', 'Return To Customer', NULL),
(824, 'sales_and_purchase_report_summary', 'Sales And Purchase Report Summary', NULL),
(825, 'add_person_officeloan', 'Add Person (Office Loan)', NULL),
(826, 'add_loan_officeloan', 'Add Loan (Office Loan)', NULL),
(827, 'add_payment_officeloan', 'Add Payment (Office Loan)', NULL),
(828, 'manage_loan_officeloan', 'Manage Loan (Office Loan)', NULL),
(829, 'add_person_personalloan', 'Add Person (Personal Loan)', NULL),
(830, 'add_loan_personalloan', 'Add Loan (Personal Loan)', NULL),
(831, 'add_payment_personalloan', 'Add Payment (Personal Loan)', NULL),
(832, 'manage_loan_personalloan', 'Manage Loan (Personal)', NULL),
(833, 'hrm_management', 'Human Resource', NULL),
(834, 'cash_adjustment', 'Cash Adjustment', NULL),
(835, 'adjustment_type', 'Adjustment Type', NULL),
(836, 'change', 'Change', NULL),
(837, 'sale_by', 'Sale By', NULL),
(838, 'salary_date', 'Salary Date', NULL),
(839, 'earnings', 'Earnings', NULL),
(840, 'total_addition', 'Total Addition', NULL),
(841, 'total_deduction', 'Total Deduction', NULL),
(842, 'net_salary', 'Net Salary', NULL),
(843, 'ref_number', 'Reference Number', NULL),
(844, 'name_of_bank', 'Name Of Bank', NULL),
(845, 'salary_slip', 'Salary Slip', NULL),
(846, 'basic_salary', 'Basic Salary', NULL),
(847, 'return_from_customer', 'Return From Customer', NULL),
(848, 'quotation', 'Quotation', NULL),
(849, 'add_quotation', 'Add Quotation', NULL),
(850, 'manage_quotation', 'Manage Quotation', NULL),
(851, 'terms', 'Terms', NULL),
(852, 'send_to_customer', 'Sent To Customer', NULL),
(853, 'quotation_no', 'Quotation No', NULL),
(854, 'quotation_date', 'Quotation Date', NULL),
(855, 'total_service_tax', 'Total Service Tax', NULL),
(856, 'totalservicedicount', 'Total Service Discount', NULL),
(857, 'item_total', 'Item Total', NULL),
(858, 'service_total', 'Service Total', NULL),
(859, 'quot_description', 'Quotation Description', NULL),
(860, 'sub_total', 'Sub Total', NULL),
(861, 'mail_setting', 'Mail Setting', NULL),
(862, 'mail_configuration', 'Mail Configuration', NULL),
(863, 'mail', 'Mail', NULL),
(864, 'protocol', 'Protocol', NULL),
(865, 'smtp_host', 'SMTP Host', NULL),
(866, 'smtp_port', 'SMTP Port', NULL),
(867, 'sender_mail', 'Sender Mail', NULL),
(868, 'mail_type', 'Mail Type', NULL),
(869, 'html', 'HTML', NULL),
(870, 'text', 'TEXT', NULL),
(871, 'expiry_date', 'Expiry Date', NULL),
(872, 'api_secret', 'Api Secret', NULL),
(873, 'please_config_your_mail_setting', NULL, NULL),
(874, 'quotation_successfully_added', 'Quotation Successfully Added', NULL),
(875, 'add_to_invoice', 'Add To Invoice', NULL),
(876, 'added_to_invoice', 'Added To Invoice', NULL),
(877, 'closing_balance', 'Closing Balance', NULL),
(878, 'contact', 'Contact', NULL),
(879, 'fax', 'Fax', NULL),
(880, 'state', 'State', NULL),
(881, 'discounts', 'Discount', NULL),
(882, 'address1', 'Address1', NULL),
(883, 'address2', 'Address2', NULL),
(884, 'receive', 'Receive', NULL),
(885, 'purchase_history', 'Purchase History', NULL),
(886, 'cash_payment', 'Cash Payment', NULL),
(887, 'bank_payment', 'Bank Payment', NULL),
(888, 'do_you_want_to_print', 'Do You Want to Print', NULL),
(889, 'yes', 'Yes', NULL),
(890, 'no', 'No', NULL),
(891, 'todays_sale', 'Today\'s Sales', NULL),
(892, 'or', 'OR', NULL),
(893, 'no_result_found', 'No Result Found', NULL),
(894, 'add_service_quotation', 'Add Service Quotation', NULL),
(895, 'add_to_invoice', 'Add To Invoice', NULL),
(896, 'item_quotation', 'Item Quotation', NULL),
(897, 'service_quotation', 'Service Quotation', NULL),
(898, 'return_from', 'Return Form', NULL),
(899, 'customer_return_list', 'Customer Return List', NULL),
(900, 'pdf', 'Pdf', NULL),
(901, 'note', 'Note', NULL),
(902, 'update_debit_voucher', 'Update Debit Voucher', NULL),
(903, 'update_credit_voucher', 'Update Credit voucher', NULL),
(904, 'on', 'On', NULL),
(905, '', '', NULL),
(906, 'total_expenses', 'Total Expense', NULL),
(907, 'already_exist', 'Already Exist', NULL),
(908, 'checked_out', 'Checked Out', NULL),
(909, 'update_salary_setup', 'Update Salary Setup', NULL),
(910, 'employee_signature', 'Employee Signature', NULL),
(911, 'payslip', 'Payslip', NULL),
(912, 'exsisting_role', 'Existing Role', NULL),
(913, 'filter', 'Filter', NULL),
(914, 'testinput', NULL, NULL),
(915, 'update_quotation', 'Update Quotation', NULL),
(916, 'quotation_successfully_updated', 'Quotation Successfully Updated', NULL),
(917, 'successfully_approved', 'Successfully Approved', NULL),
(918, 'expiry', 'Expiry', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'invoice', NULL, NULL, NULL, 1),
(2, 'customer', NULL, NULL, NULL, 1),
(3, 'product', NULL, NULL, NULL, 1),
(4, 'supplier', NULL, NULL, NULL, 1),
(5, 'purchase', NULL, NULL, NULL, 1),
(6, 'stock', NULL, NULL, NULL, 1),
(7, 'return', NULL, NULL, NULL, 1),
(8, 'report', NULL, NULL, NULL, 1),
(9, 'accounts', NULL, NULL, NULL, 1),
(10, 'bank', NULL, NULL, NULL, 1),
(11, 'tax', NULL, NULL, NULL, 1),
(12, 'hrm_management', NULL, NULL, NULL, 1),
(13, 'service', NULL, NULL, NULL, 1),
(14, 'commission', NULL, NULL, NULL, 1),
(15, 'setting', NULL, NULL, NULL, 1),
(16, 'quotation', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_setup`
--

CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(11) UNSIGNED NOT NULL,
  `start_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `end_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `personal_loan`
--

CREATE TABLE `personal_loan` (
  `per_loan_id` int(11) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `person_id` varchar(30) NOT NULL,
  `debit` decimal(12,2) DEFAULT 0.00,
  `credit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `date` varchar(30) NOT NULL,
  `details` varchar(100) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_information`
--

CREATE TABLE `person_information` (
  `id` int(11) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_ledger`
--

CREATE TABLE `person_ledger` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pesonal_loan_information`
--

CREATE TABLE `pesonal_loan_information` (
  `id` int(11) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_brand`
--

CREATE TABLE `product_brand` (
  `id` int(11) NOT NULL,
  `brand_id` varchar(255) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_brand`
--

INSERT INTO `product_brand` (`id`, `brand_id`, `brand_name`, `status`) VALUES
(1, 'GSGYSGUHS', 'Test Brand A', 1),
(3, 'ELIMJ2P1B7LUP38', 'Test Brand B', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_id`, `category_name`, `status`) VALUES
(1, 'VQ2R94Y2ORLQOG5', 'Fuel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_information`
--

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_id_two` varchar(100) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `brand_id` varchar(255) DEFAULT NULL,
  `ptype_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `tax` float DEFAULT NULL COMMENT 'Tax in %',
  `serial_no` varchar(200) DEFAULT NULL,
  `product_model` varchar(100) DEFAULT NULL,
  `product_details` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_information`
--

INSERT INTO `product_information` (`id`, `product_id`, `product_id_two`, `category_id`, `brand_id`, `ptype_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`) VALUES
(3, '1234567', '', 'VQ2R94Y2ORLQOG5', '', '', 'Test Product', 500, 'Pc', 0, '1', 'Test1', 'product to be tested', 'http://devenport.co/erp/./my-assets/image/product/378303fed59e65b60636205895914f0e.jpg', 1),
(4, '0909', '', 'VQ2R94Y2ORLQOG5', '', '', 'zippo fuel', 400, 'Pc', 0, '0909', 'z1', '', 'http://devenport.co/erp/my-assets/image/product.png', 1),
(5, '97865653435897764', '9867554357', 'VQ2R94Y2ORLQOG5', '0', '0', 'ABX', 600, 'Pc', 0, '1111', 'HS', 'jiji', 'http://localhost/erp/my-assets/image/product.png', 1),
(6, '978656534358', '675544332', 'VQ2R94Y2ORLQOG5', '0', '0', 'ABb', 600, 'kg', 0, 'af', 'AAS', '', 'http://localhost/erp/my-assets/image/product.png', 1),
(7, '79879987', '', 'VQ2R94Y2ORLQOG5', 'ELIMJ2P1B7LUP38', '{category_id}', 'tytf', 700, 'Pc', 0, 'huu', 'iopo', '', 'http://localhost/erp/my-assets/image/product.png', 1),
(8, '657567657', '', 'VQ2R94Y2ORLQOG5', 'ELIMJ2P1B7LUP38', '9N4LUYTUJXGFQFA', 'YRYR', 500, '', 0, '233', 'TYTY', '', 'http://localhost/erp/my-assets/image/product.png', 1),
(9, '7898757', '', 'VQ2R94Y2ORLQOG5', 'GSGYSGUHS', '9N4LUYTUJXGFQFA', 'Arman', 540, 'kg', 0, '123', 'y1', '', 'http://localhost/erp/my-assets/image/product.png', 1),
(10, '56545689', '', 'VQ2R94Y2ORLQOG5', 'GSGYSGUHS', '9N4LUYTUJXGFQFA', 'rimon', 560, 'Pc', 0, 'xyx', 'iopo', '', 'http://localhost/erp/my-assets/image/product.png', 1),
(11, '58672484', '78765654', 'VQ2R94Y2ORLQOG5', 'GSGYSGUHS', '9N4LUYTUJXGFQFA', 'Laptop', 700, 'Pc', 0, '090', 'iopo', '', 'http://localhost/erp/my-assets/image/product.png', 1),
(12, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '1234567', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '1234567', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '7848764387598', NULL, 'VQ2R94Y2ORLQOG5', 'ELIMJ2P1B7LUP38', '9N4LUYTUJXGFQFA', 'ABX', 50000, 'Pc', 0, '12', '', '', 'http://localhost/erp/my-assets/image/product.png', 1),
(16, '898675645234', NULL, 'VQ2R94Y2ORLQOG5', 'GSGYSGUHS', '9N4LUYTUJXGFQFA', 'Mouse', 700, 'Pc', 0, '11166', 'AAS', '', 'http://localhost/erp/my-assets/image/product.png', 1),
(17, '81849262', NULL, 'VQ2R94Y2ORLQOG5', 'GSGYSGUHS', 'HJHIUHJI83YHCN', 'Hp probook', 30000, 'Pc', 0, '123', 'HP', '', 'http://localhost/erp/my-assets/image/product.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase`
--

CREATE TABLE `product_purchase` (
  `id` int(11) NOT NULL,
  `purchase_id` bigint(20) NOT NULL,
  `chalan_no` varchar(100) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `grand_total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) DEFAULT 0.00,
  `due_amount` decimal(10,2) DEFAULT 0.00,
  `total_discount` decimal(10,2) DEFAULT NULL,
  `purchase_date` varchar(50) DEFAULT NULL,
  `purchase_details` text DEFAULT NULL,
  `status` int(2) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase`
--

INSERT INTO `product_purchase` (`id`, `purchase_id`, `chalan_no`, `supplier_id`, `grand_total_amount`, `paid_amount`, `due_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `bank_id`, `payment_type`) VALUES
(1, 20200905094826, '1234', 2, '38980.00', '20000.00', '18980.00', '20.00', '2020-09-05', 'zippo fuel', 1, '', 1),
(2, 20200905100942, '', 2, '45000.00', '0.00', '45000.00', '0.00', '2020-09-05', '', 1, '', 1),
(3, 20201012070652, '2', 2, '25900.00', '0.00', '25900.00', '0.00', '2020-10-12', '', 1, '', 1),
(4, 20201012071229, '2', 2, '1350.00', '0.00', '1350.00', '0.00', '2020-10-12', '', 1, '', 1),
(5, 20201012071543, '2', 2, '5400.00', '0.00', '5400.00', '0.00', '2020-10-12', '', 1, '', 1),
(6, 20201012073332, '2', 2, '2520.00', '0.00', '2520.00', '0.00', '2020-10-12', '', 1, '', 1),
(7, 20201019070203, '2', 2, '1350.00', '0.00', '1350.00', '0.00', '2020-10-19', 'www', 1, '', 1),
(8, 20201020065902, '', 2, '1800.00', '0.00', '1800.00', '0.00', '2020-10-20', '', 1, '', 1),
(9, 20201020092144, '', 2, '1350.00', '0.00', '1350.00', '0.00', '2020-10-20', '', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_details`
--

CREATE TABLE `product_purchase_details` (
  `id` int(11) NOT NULL,
  `purchase_detail_id` varchar(100) DEFAULT NULL,
  `purchase_id` bigint(20) DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `lot_number` bigint(255) NOT NULL,
  `origin` varchar(100) NOT NULL,
  `shelf_number` varchar(255) NOT NULL,
  `warrenty_date` varchar(50) NOT NULL,
  `expired_date` varchar(50) NOT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase_details`
--

INSERT INTO `product_purchase_details` (`id`, `purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `lot_number`, `origin`, `shelf_number`, `warrenty_date`, `expired_date`, `rate`, `total_amount`, `discount`, `status`) VALUES
(1, '9YWSD0BuHPJwzCl', 20200905094826, '0909', '100.00', 0, '', '', '', '', '390.00', '39000.00', 2, 1),
(2, '9YWSD0BuHPJwzCl', 20200905094826, '0909', '-20.00', 0, '', '', '', '', '390.00', '-7800.00', 0, 1),
(3, 'NtyDsqn2f3MOXc3', 20200905100942, '1234567', '100.00', 0, '', '', '', '', '450.00', '45000.00', 0, 1),
(4, 'ttpB3cqOidQsvVu', 20201012070652, '0909', '5.00', 0, '', '', '2020-10-12', '2020-10-12', '390.00', '25000.00', 0, 1),
(5, 'MAulZaxMnsPkhW', 20201012071229, '1234567', '3.00', 0, '', '', '2021-06-11', '2021-11-26', '450.00', '1350.00', 0, 1),
(6, 'ZrGoyTffEWmT6LN', 20201012071543, '1234567', '5.00', 0, '', '', '2020-10-12', '2020-10-12', '450.00', '2250.00', 0, 1),
(7, 'tdoZmQYF2JJToow', 20201012073332, '0909', '3.00', 0, '', '', '2020-10-31', '2021-06-24', '390.00', '1170.00', 0, 1),
(8, 'EK56GpHTloNvEDn', 20201019070203, '1234567', '3.00', 0, '', '', '2020-10-19', '2020-10-19', '450.00', '1350.00', 0, 1),
(9, 'MOIiPUDBkBa1KAv', 20201020065902, '1234567', '4.00', 0, '', '', '2020-12-20', '2021-10-20', '450.00', '1800.00', 0, 1),
(10, '6BTRDk8pkqtGZoV', 20201020092144, '1234567', '3.00', 768867, 'China', '83hr84', '2020-10-31', '2021-10-20', '450.00', '1350.00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_return`
--

CREATE TABLE `product_return` (
  `return_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `invoice_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `purchase_id` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `date_purchase` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date_return` varchar(30) CHARACTER SET latin1 NOT NULL,
  `byy_qty` float NOT NULL,
  `ret_qty` float NOT NULL,
  `customer_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `supplier_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `deduction` float NOT NULL,
  `total_deduct` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_ret_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `net_total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `reason` text CHARACTER SET latin1 NOT NULL,
  `usablity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_return`
--

INSERT INTO `product_return` (`return_id`, `product_id`, `invoice_id`, `purchase_id`, `date_purchase`, `date_return`, `byy_qty`, `ret_qty`, `customer_id`, `supplier_id`, `product_rate`, `deduction`, `total_deduct`, `total_tax`, `total_ret_amount`, `net_total_amount`, `reason`, `usablity`) VALUES
('281155635635648', '0909', '9891822122', NULL, '2020-09-05', '2020-09-05', 2, 1, '1', '', '400.00', 0, '0.00', '0.00', '400.00', '400.00', '', 1),
('714795476658846', '0909', '', '20200905094826', '2020-09-05', '2020-09-05', 100, 20, '', '2', '390.00', 0, '0.00', '0.00', '7800.00', '7800.00', '', 2),
('487974383133866', '1234567', '1892196676', NULL, '2020-10-30', '2020-10-21', 4, 1, '1', '', '500.00', 3, '15.00', '0.00', '485.00', '485.00', '', 3),
('411771136621495', '0909', '8525297768', NULL, '2020-10-30', '2020-10-22', 6, 1, '1', '', '400.00', 0, '0.00', '0.00', '400.00', '400.00', '', 1),
('967434934475499', '0909', '8525297768', NULL, '2020-10-30', '2020-10-22', 3, 1, '1', '', '400.00', 0, '0.00', '0.00', '400.00', '400.00', '', 1),
('598522637186915', '0909', '2944371262', NULL, '2020-10-28', '2020-10-22', 20, 1, '1', '', '400.00', 0, '0.00', '0.00', '400.00', '400.00', '', 3),
('567689961192434', '1234567', '2944371262', NULL, '2020-10-28', '2020-10-28', 0, 2, '1', '', '400.00', 0, '0.00', '0.00', '1000.00', '1000.00', '', 3),
('377818961423443', '1234567', '2944371262', NULL, '2020-10-28', '2020-10-28', 0, 1, '1', '', '400.00', 0, '0.00', '0.00', '500.00', '500.00', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_service`
--

CREATE TABLE `product_service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_service`
--

INSERT INTO `product_service` (`service_id`, `service_name`, `description`, `charge`) VALUES
(1, 'Coloring', '', '5000.00'),
(2, 'Delivery Charges ', 'Delivery Charges', '200.00');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `ptype_id` varchar(255) NOT NULL,
  `ptype_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `ptype_id`, `ptype_name`, `status`) VALUES
(1, 'HJHIUHJI83YHCN', 'Test Product Type 1', 1),
(2, '9N4LUYTUJXGFQFA', 'Test Product Type 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `id` int(20) NOT NULL,
  `quotation_id` varchar(30) NOT NULL,
  `quot_description` text NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `quotdate` date NOT NULL,
  `expire_date` date DEFAULT NULL,
  `item_total_amount` decimal(12,2) NOT NULL,
  `item_total_dicount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `service_total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `service_total_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `service_total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quot_dis_item` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quot_dis_service` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quot_no` varchar(50) NOT NULL,
  `create_by` varchar(30) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `cust_show` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`id`, `quotation_id`, `quot_description`, `customer_id`, `quotdate`, `expire_date`, `item_total_amount`, `item_total_dicount`, `item_total_tax`, `service_total_amount`, `service_total_discount`, `service_total_tax`, `quot_dis_item`, `quot_dis_service`, `quot_no`, `create_by`, `create_date`, `update_by`, `update_date`, `status`, `cust_show`) VALUES
(1, 'DXZQ9O4J3RMKTTZ', '', '1', '2020-09-05', '2020-09-05', '450.00', '50.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1000', '2', '0000-00-00', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotation_service_used`
--

CREATE TABLE `quotation_service_used` (
  `id` int(11) NOT NULL,
  `quot_id` varchar(20) NOT NULL,
  `service_id` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_taxinfo`
--

CREATE TABLE `quotation_taxinfo` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `relation_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quotation_taxinfo`
--

INSERT INTO `quotation_taxinfo` (`id`, `date`, `customer_id`, `relation_id`) VALUES
(1, '2020-09-05', 1, 'item1000'),
(2, '2020-09-05', 1, 'serv1000');

-- --------------------------------------------------------

--
-- Table structure for table `quot_products_used`
--

CREATE TABLE `quot_products_used` (
  `id` int(11) NOT NULL,
  `quot_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `used_qty` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quot_products_used`
--

INSERT INTO `quot_products_used` (`id`, `quot_id`, `product_id`, `serial_no`, `description`, `used_qty`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`) VALUES
(1, 'DXZQ9O4J3RMKTTZ', '1234567', '', '', '1.00', '500.00', 450, '450.00', '50.00', '10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_generate`
--

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `gdate` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary_sheet_generate`
--

INSERT INTO `salary_sheet_generate` (`ssg_id`, `name`, `gdate`, `start_date`, `end_date`, `generate_by`) VALUES
(2, '', 'September 2020', '2020-9-1', '2020-9-30', 'Suman Mazumder');

-- --------------------------------------------------------

--
-- Table structure for table `salary_type`
--

CREATE TABLE `salary_type` (
  `salary_type_id` int(11) NOT NULL,
  `sal_name` varchar(100) NOT NULL,
  `salary_type` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary_type`
--

INSERT INTO `salary_type` (`salary_type_id`, `sal_name`, `salary_type`, `status`) VALUES
(1, 'House Rent', '1', '1'),
(2, 'Medical Allowance', '1', '1'),
(3, 'Provident Fund', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role`
--

CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sec_userrole`
--

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice`
--

CREATE TABLE `service_invoice` (
  `id` int(11) NOT NULL,
  `voucher_no` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `customer_id` varchar(30) NOT NULL,
  `total_amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_discount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `invoice_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `previous` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice_details`
--

CREATE TABLE `service_invoice_details` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_inv_id` varchar(30) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_invoice_details`
--

INSERT INTO `service_invoice_details` (`id`, `service_id`, `service_inv_id`, `qty`, `charge`, `discount`, `discount_amount`, `total`) VALUES
(1, 1, 'serv-20200906092122', '1.00', '4500.00', '0.00', '0.00', '4500.00');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL,
  `api_key` varchar(100) DEFAULT NULL,
  `api_secret` varchar(100) DEFAULT NULL,
  `from` varchar(100) DEFAULT NULL,
  `isinvoice` int(11) NOT NULL DEFAULT 0,
  `isservice` int(11) NOT NULL DEFAULT 0,
  `isreceive` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `api_key`, `api_secret`, `from`, `isinvoice`, `isservice`, `isreceive`) VALUES
(1, '5d6db102011', '456452dfgdf', '8801645452', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_module`
--

CREATE TABLE `sub_module` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `directory` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_module`
--

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 1, 'new_invoice', NULL, NULL, 'new_invoice', 1),
(2, 1, 'manage_invoice', NULL, NULL, 'manage_invoice', 1),
(3, 1, 'pos_invoice', NULL, NULL, 'pos_invoice', 1),
(4, 9, 'c_o_a', NULL, NULL, 'show_tree', 1),
(5, 9, 'supplier_payment', NULL, NULL, 'supplier_payment', 1),
(6, 9, 'customer_receive', NULL, NULL, 'customer_receive', 1),
(7, 9, 'debit_voucher', NULL, NULL, 'debit_voucher', 1),
(8, 9, 'credit_voucher', NULL, NULL, 'credit_voucher', 1),
(9, 9, 'voucher_approval', NULL, NULL, 'aprove_v', 1),
(10, 9, 'contra_voucher', NULL, NULL, 'contra_voucher', 1),
(11, 9, 'journal_voucher', NULL, NULL, 'journal_voucher', 1),
(12, 9, 'report', NULL, NULL, 'ac_report', 1),
(13, 9, 'cash_book', NULL, NULL, 'cash_book', 1),
(14, 9, 'Inventory_ledger', NULL, NULL, 'inventory_ledger', 1),
(15, 9, 'bank_book', NULL, NULL, 'bank_book', 1),
(16, 9, 'general_ledger', NULL, NULL, 'general_ledger', 1),
(17, 9, 'trial_balance', NULL, NULL, 'trial_balance', 1),
(18, 9, 'cash_flow', NULL, NULL, 'cash_flow_report', 1),
(19, 9, 'coa_print', NULL, NULL, 'coa_print', 1),
(21, 3, 'category', NULL, NULL, 'manage_category', 1),
(22, 3, 'add_product', NULL, NULL, 'create_product', 1),
(23, 3, 'import_product_csv', NULL, NULL, 'add_product_csv', 1),
(24, 3, 'manage_product', NULL, NULL, 'manage_product', 1),
(25, 2, 'add_customer', NULL, NULL, 'add_customer', 1),
(26, 2, 'manage_customer', NULL, NULL, 'manage_customer', 1),
(27, 2, 'credit_customer', NULL, NULL, 'credit_customer', 1),
(28, 2, 'paid_customer', NULL, NULL, 'paid_customer', 1),
(30, 3, 'unit', NULL, NULL, 'manage_unit', 1),
(31, 4, 'add_supplier', NULL, NULL, 'add_supplier', 1),
(32, 4, 'manage_supplier', NULL, NULL, 'manage_supplier', 1),
(33, 4, 'supplier_ledger', NULL, NULL, 'supplier_ledger_report', 1),
(35, 5, 'add_purchase', NULL, NULL, 'add_purchase', 1),
(36, 5, 'manage_purchase', NULL, NULL, 'manage_purchase', 1),
(37, 7, 'return', NULL, NULL, 'add_return', 1),
(38, 7, 'stock_return_list', NULL, NULL, 'return_list', 1),
(39, 7, 'supplier_return_list', NULL, NULL, 'supplier_return_list', 1),
(40, 7, 'wastage_return_list', NULL, NULL, 'wastage_return_list', 1),
(41, 11, 'tax_settings', NULL, NULL, 'tax_settings', 1),
(43, 6, 'stock_report', NULL, NULL, 'stock_report', 1),
(46, 8, 'closing', NULL, NULL, 'add_closing', 1),
(47, 8, 'closing_report', NULL, NULL, 'closing_report', 1),
(48, 8, 'todays_report', NULL, NULL, 'all_report', 1),
(49, 8, 'todays_customer_receipt', NULL, NULL, 'todays_customer_receipt', 1),
(50, 8, 'sales_report', NULL, NULL, 'todays_sales_report', 1),
(51, 8, 'due_report', NULL, NULL, 'retrieve_dateWise_DueReports', 1),
(52, 8, 'purchase_report', NULL, NULL, 'todays_purchase_report', 1),
(53, 8, 'purchase_report_category_wise', NULL, NULL, 'purchase_report_category_wise', 1),
(54, 8, 'sales_report_product_wise', NULL, NULL, 'product_sales_reports_date_wise', 1),
(55, 8, 'sales_report_category_wise', NULL, NULL, 'sales_report_category_wise', 1),
(56, 10, 'add_new_bank', NULL, NULL, 'add_bank', 1),
(57, 10, 'bank_transaction', NULL, NULL, 'bank_transaction', 1),
(58, 10, 'manage_bank', NULL, NULL, 'bank_list', 1),
(59, 14, 'generate_commission', NULL, NULL, 'commission', 1),
(60, 12, 'add_designation', NULL, NULL, 'add_designation', 1),
(61, 12, 'manage_designation', NULL, NULL, 'manage_designation', 1),
(62, 12, 'add_employee', NULL, NULL, 'add_employee', 1),
(63, 12, 'manage_employee', NULL, NULL, 'manage_employee', 1),
(64, 12, 'add_attendance', NULL, NULL, 'add_attendance', 1),
(65, 12, 'manage_attendance', NULL, NULL, 'manage_attendance', 1),
(66, 12, 'attendance_report', NULL, NULL, 'attendance_report', 1),
(67, 12, 'add_benefits', NULL, NULL, 'add_benefits', 1),
(68, 12, 'manage_benefits', NULL, NULL, 'manage_benefits', 1),
(69, 12, 'add_salary_setup', NULL, NULL, 'add_salary_setup', 1),
(70, 12, 'manage_salary_setup', NULL, NULL, 'manage_salary_setup', 1),
(71, 12, 'salary_generate', NULL, NULL, 'salary_generate', 1),
(72, 12, 'manage_salary_generate', NULL, NULL, 'manage_salary_generate', 1),
(73, 12, 'salary_payment', NULL, NULL, 'salary_payment', 1),
(74, 12, 'add_expense_item', NULL, NULL, 'add_expense_item', 1),
(75, 12, 'manage_expense_item', NULL, NULL, 'manage_expense_item', 1),
(76, 12, 'add_expense', NULL, NULL, 'add_expense', 1),
(77, 12, 'manage_expense', NULL, NULL, 'manage_expense', 1),
(78, 12, 'expense_statement', NULL, NULL, 'expense_statement', 1),
(79, 12, 'add_person_officeloan', NULL, NULL, 'add1_person', 1),
(80, 12, 'add_loan_officeloan', NULL, NULL, 'add_office_loan', 1),
(81, 12, 'add_payment_officeloan', NULL, NULL, 'add_loan_payment', 1),
(82, 12, 'manage_loan_officeloan', NULL, NULL, 'manage1_person', 1),
(83, 12, 'add_person_personalloan', NULL, NULL, 'add_person', 1),
(84, 12, 'add_loan_personalloan', NULL, NULL, 'add_loan', 1),
(85, 12, 'add_payment_personalloan', NULL, NULL, 'add_payment', 1),
(86, 12, 'manage_loan_personalloan', NULL, NULL, 'manage_person', 1),
(87, 15, 'manage_company', NULL, NULL, 'manage_company', 1),
(88, 15, 'add_user', NULL, NULL, 'add_user', 1),
(89, 15, 'manage_users', NULL, NULL, 'manage_user', 1),
(90, 15, 'language', NULL, NULL, 'add_language', 1),
(91, 15, 'currency', NULL, NULL, 'add_currency', 1),
(92, 15, 'setting', NULL, NULL, 'soft_setting', 1),
(93, 15, 'add_role', NULL, NULL, 'add_role', 1),
(94, 15, 'role_list', NULL, NULL, 'role_list', 1),
(95, 15, 'user_assign_role', NULL, NULL, 'user_assign', 1),
(96, 15, 'Permission', NULL, NULL, NULL, 1),
(97, 8, 'shipping_cost_report', NULL, NULL, 'shipping_cost_report', 1),
(98, 8, 'user_wise_sales_report', NULL, NULL, 'user_wise_sales_report', 1),
(99, 8, 'invoice_return', NULL, NULL, 'invoice_return', 1),
(100, 8, 'supplier_return', NULL, NULL, 'supplier_return', 1),
(101, 8, 'tax_report', NULL, NULL, 'tax_report', 1),
(102, 8, 'profit_report', NULL, NULL, 'profit_report', 1),
(103, 11, 'add_incometax', NULL, NULL, 'add_incometax', 1),
(104, 11, 'manage_income_tax', NULL, NULL, 'manage_income_tax', 1),
(105, 13, 'add_service', NULL, NULL, 'create_service', 1),
(106, 13, 'manage_service', NULL, NULL, 'manage_service', 1),
(107, 13, 'service_invoice', NULL, NULL, 'service_invoice', 1),
(108, 13, 'manage_service_invoice', NULL, NULL, 'manage_service_invoice', 1),
(109, 11, 'tax_report', NULL, NULL, 'tax_report', 1),
(110, 11, 'invoice_wise_tax_report', NULL, NULL, 'invoice_wise_tax_report', 1),
(111, 2, 'customer_advance', NULL, NULL, 'customer_advance', 1),
(112, 4, 'supplier_advance', NULL, NULL, 'supplier_advance', 1),
(113, 2, 'customer_ledger', NULL, NULL, 'customer_ledger', 1),
(114, 1, 'gui_pos', NULL, NULL, 'gui_pos', 1),
(115, 15, 'sms_configure', NULL, NULL, 'sms_configure', 1),
(116, 15, 'backup_restore', NULL, NULL, 'back_up', 1),
(117, 15, 'import', NULL, NULL, 'sql_import', 1),
(118, 15, 'restore', NULL, NULL, 'restore', 1),
(119, 16, 'add_quotation', NULL, NULL, 'add_quotation', 1),
(120, 16, 'manage_quotation', NULL, NULL, 'manage_quotation', 1),
(121, 16, 'add_to_invoice', NULL, NULL, 'add_to_invoice', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_information`
--

CREATE TABLE `supplier_information` (
  `supplier_id` bigint(20) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` text NOT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `emailnumber` varchar(200) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_information`
--

INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `address2`, `mobile`, `emailnumber`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `details`, `status`) VALUES
(2, 'Test Supplier', '808 Mehedibag Road', '', '01817270456', 'sumanjuly@live.com', 'sumanjuly@live.com', '', '', '', 'Chittagong', 'Chittagong', '4000', 'Bangladesh', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product`
--

CREATE TABLE `supplier_product` (
  `supplier_pr_id` int(11) NOT NULL,
  `product_id` varchar(30) CHARACTER SET utf8 NOT NULL,
  `product_id_two` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `products_model` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `supplier_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier_product`
--

INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `product_id_two`, `products_model`, `supplier_id`, `supplier_price`) VALUES
(5, '1234567', '', 'Test1', 2, 450),
(6, '0909', '', 'z1', 2, 390),
(10, '79879987', '', 'iopo', 2, 500),
(11, '657567657', '', 'TYTY', 2, 340),
(12, '7898757', '', 'y1', 2, 500),
(13, '56545689', '', 'iopo', 2, 500),
(17, '58672484', '78765654', NULL, 2, 600),
(18, '978656534358', '675544332', NULL, 2, 500),
(19, '97865653435897764', '9867554357', NULL, 2, 500),
(20, '7848764387598', NULL, '', 2, 30000),
(21, '898675645234', NULL, 'AAS', 2, 650),
(22, '81849262', NULL, 'HP', 2, 28000);

-- --------------------------------------------------------

--
-- Table structure for table `synchronizer_setting`
--

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_collection`
--

CREATE TABLE `tax_collection` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `relation_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_collection`
--

INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`) VALUES
(1, '2020-09-05', '1', '9891822122'),
(2, '2020-09-06', '', 'serv-20200906092122'),
(3, '2020-09-08', '1', '2248277544'),
(4, '2020-09-22', '1', '3814847537'),
(5, '2020-10-12', '1', '6595645594'),
(6, '2020-10-30', '1', '1892196676'),
(7, '2020-10-28', '1', '2944371262'),
(8, '2020-10-30', '1', '8525297768'),
(9, '2020-10-12', '1', '7529493893'),
(10, '2020-10-12', '1', '6536474572'),
(11, '2020-10-12', '1', '2184135564'),
(12, '2020-10-12', '1', '9319946586'),
(13, '2020-10-13', '1', '4356889924'),
(14, '2020-10-17', '1', '6198778562'),
(15, '2020-10-19', '1', '7198272854'),
(16, '2020-10-20', '1', '1475927865'),
(17, '2020-10-27', '1', '6366994931'),
(18, '2020-10-27', '1', '9239324787');

-- --------------------------------------------------------

--
-- Table structure for table `tax_settings`
--

CREATE TABLE `tax_settings` (
  `id` int(11) NOT NULL,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unit_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `unit_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_id`, `unit_name`, `status`) VALUES
(1, 'TA5HPXU348MB698', 'Pc', 1),
(2, '699I71JDJU98Y7T', 'kg', 1),
(3, 'L2VOOH868HXIH6O', 'ltr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` int(2) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES
(1, '2', 'Mazumder', 'Suman', NULL, NULL, NULL, NULL, NULL, 'http://devenport.co/erp/assets/dist/img/profile_picture/647737ea4167a99d63aba33068445ee6.png', 1),
(2, '1', 'User', 'Admin', NULL, NULL, NULL, NULL, NULL, 'http://knight-rider.co/assets/dist/img/profile_picture/profile.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(2) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES
(1, '2', 'sumanjuly1980@gmail.com', 'c42a0ab7d2bc70f8c0a52e6a7e7ec434', 1, NULL, 1),
(2, '1', 'sonicictbd@gmail.com', 'Lopa@#2020', 1, '200904082142', 1),
(3, '1', 'touhid.southern@gmail.com', 'Lopa@#2020', 1, '200904082142', 1),
(4, '2', 'sumanjuly1980@gmail.com', '41d99b369894eb1ec3f461135132d8bb', 1, '200905071406', 1);

-- --------------------------------------------------------

--
-- Table structure for table `warrenty_return`
--

CREATE TABLE `warrenty_return` (
  `return_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `invoice_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `invoice_details_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `purchase_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_purchase` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_return` varchar(30) CHARACTER SET latin1 NOT NULL,
  `byy_qty` float NOT NULL,
  `ret_qty` float NOT NULL,
  `was_qty` float NOT NULL,
  `customer_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `supplier_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_rate` decimal(10,2) DEFAULT NULL,
  `deduction` float DEFAULT NULL,
  `total_deduct` decimal(10,2) DEFAULT NULL,
  `total_tax` decimal(10,2) DEFAULT NULL,
  `service_charge` decimal(10,2) NOT NULL,
  `total_ret_amount` decimal(10,2) DEFAULT NULL,
  `net_total_amount` decimal(10,2) DEFAULT NULL,
  `reason` text CHARACTER SET latin1 NOT NULL,
  `usablity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warrenty_return`
--

INSERT INTO `warrenty_return` (`return_id`, `product_id`, `invoice_id`, `invoice_details_id`, `purchase_id`, `date_purchase`, `date_return`, `byy_qty`, `ret_qty`, `was_qty`, `customer_id`, `supplier_id`, `product_rate`, `deduction`, `total_deduct`, `total_tax`, `service_charge`, `total_ret_amount`, `net_total_amount`, `reason`, `usablity`) VALUES
('169785726914412', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 2, 0, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '800.00', '800.00', '', 2),
('193318379231355', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 0, 2, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '800.00', '800.00', '', 3),
('223885923854389', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 1, 0, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '400.00', '400.00', '', 4),
('236364795516345', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 0, 2, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '800.00', '800.00', '', 3),
('344415564143587', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 0, 1, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '400.00', '900.00', '', 3),
('392355567275216', '1234567', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 1, 0, '1', '', '400.00', 0, '0.00', '0.00', '200.00', '500.00', '500.00', '', 4),
('447156327772556', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 0, -2, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '800.00', '800.00', '', 3),
('454833824193821', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 2, 0, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '800.00', '800.00', '', 2),
('651795456654658', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 2, 0, '1', '', '400.00', 0, '0.00', '0.00', '200.00', '800.00', '800.00', '', 4),
('738766649757729', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 2, 0, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '800.00', '800.00', '', 4),
('776387414412651', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 1, 0, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '400.00', '400.00', '', 4),
('836858874456692', '1234567', '2944371262', '', '', '2020-10-28', '2020-10-29', 201, 0, 1, '1', '', '500.00', 0, '0.00', '0.00', '0.00', '500.00', '900.00', '', 3),
('967872356689966', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 0, 1, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '400.00', '400.00', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `web_setting`
--

CREATE TABLE `web_setting` (
  `setting_id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `invoice_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) DEFAULT 1 COMMENT '0=active,1=inactive',
  `site_key` varchar(250) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_setting`
--

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `timezone`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `site_key`, `secret_key`, `discount_type`) VALUES
(1, 'http://devenport.co/erp/./my-assets/image/logo/e452cd31b79094fbdb336deb50f4726e.png', 'http://devenport.co/erp/./my-assets/image/logo/120eba431e9cfedb515965d8a09ac982.png', 'http://devenport.co/erp/my-assets/image/logo/8a32b303d31a7a04b65481571c889332.png', '৳', 'Asia/Dhaka', '0', 'Copyright© 2020-Devenport', 'english', '0', 1, '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_coa`
--
ALTER TABLE `acc_coa`
  ADD PRIMARY KEY (`HeadName`),
  ADD KEY `HeadCode` (`HeadCode`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `COAID` (`COAID`);

--
-- Indexes for table `app_setting`
--
ALTER TABLE `app_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `bank_add`
--
ALTER TABLE `bank_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_tbl`
--
ALTER TABLE `currency_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_information`
--
ALTER TABLE `customer_information`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_history`
--
ALTER TABLE `employee_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  ADD PRIMARY KEY (`emp_sal_pay_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `generate_id` (`generate_id`);

--
-- Indexes for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  ADD PRIMARY KEY (`e_s_s_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_item`
--
ALTER TABLE `expense_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  ADD PRIMARY KEY (`tax_setup_id`);

--
-- Indexes for table `personal_loan`
--
ALTER TABLE `personal_loan`
  ADD PRIMARY KEY (`per_loan_id`);

--
-- Indexes for table `person_information`
--
ALTER TABLE `person_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_ledger`
--
ALTER TABLE `person_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_information`
--
ALTER TABLE `product_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `brand_id` (`brand_id`) USING BTREE,
  ADD KEY `ptype_ID` (`ptype_id`),
  ADD KEY `product_id_two` (`product_id_two`);

--
-- Indexes for table `product_purchase`
--
ALTER TABLE `product_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_return`
--
ALTER TABLE `product_return`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `product_service`
--
ALTER TABLE `product_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quot_no` (`quot_no`),
  ADD KEY `quotation_id` (`quotation_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `quotation_service_used`
--
ALTER TABLE `quotation_service_used`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quot_id` (`quot_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `quotation_taxinfo`
--
ALTER TABLE `quotation_taxinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `quot_products_used`
--
ALTER TABLE `quot_products_used`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `quot_id` (`quot_id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_module_id` (`fk_module_id`),
  ADD KEY `fk_user_id` (`role_id`);

--
-- Indexes for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  ADD PRIMARY KEY (`ssg_id`);

--
-- Indexes for table `salary_type`
--
ALTER TABLE `salary_type`
  ADD PRIMARY KEY (`salary_type_id`);

--
-- Indexes for table `sec_role`
--
ALTER TABLE `sec_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  ADD UNIQUE KEY `ID` (`id`);

--
-- Indexes for table `service_invoice`
--
ALTER TABLE `service_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_module`
--
ALTER TABLE `sub_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_information`
--
ALTER TABLE `supplier_information`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `supplier_product`
--
ALTER TABLE `supplier_product`
  ADD PRIMARY KEY (`supplier_pr_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `product_id_two` (`product_id_two`);

--
-- Indexes for table `tax_collection`
--
ALTER TABLE `tax_collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tax_settings`
--
ALTER TABLE `tax_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warrenty_return`
--
ALTER TABLE `warrenty_return`
  ADD PRIMARY KEY (`return_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `web_setting`
--
ALTER TABLE `web_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `app_setting`
--
ALTER TABLE `app_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_add`
--
ALTER TABLE `bank_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency_tbl`
--
ALTER TABLE `currency_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_information`
--
ALTER TABLE `customer_information`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_history`
--
ALTER TABLE `employee_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  MODIFY `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  MODIFY `e_s_s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_item`
--
ALTER TABLE `expense_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=919;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  MODIFY `tax_setup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_loan`
--
ALTER TABLE `personal_loan`
  MODIFY `per_loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_information`
--
ALTER TABLE `person_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_ledger`
--
ALTER TABLE `person_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_information`
--
ALTER TABLE `product_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_purchase`
--
ALTER TABLE `product_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_service`
--
ALTER TABLE `product_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quotation_service_used`
--
ALTER TABLE `quotation_service_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_taxinfo`
--
ALTER TABLE `quotation_taxinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quot_products_used`
--
ALTER TABLE `quot_products_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  MODIFY `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salary_type`
--
ALTER TABLE `salary_type`
  MODIFY `salary_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sec_role`
--
ALTER TABLE `sec_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_invoice`
--
ALTER TABLE `service_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_module`
--
ALTER TABLE `sub_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `supplier_information`
--
ALTER TABLE `supplier_information`
  MODIFY `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier_product`
--
ALTER TABLE `supplier_product`
  MODIFY `supplier_pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tax_collection`
--
ALTER TABLE `tax_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tax_settings`
--
ALTER TABLE `tax_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `web_setting`
--
ALTER TABLE `web_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
