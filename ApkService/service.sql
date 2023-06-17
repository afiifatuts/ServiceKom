-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Apr 27, 2018 at 01:35 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `service`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `admin`
-- 

CREATE TABLE `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `admin`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `barangdetail`
-- 

CREATE TABLE `barangdetail` (
  `laptop` varchar(15) NOT NULL,
  `komputer` varchar(15) NOT NULL,
  `tv` varchar(15) NOT NULL,
  `printer` varchar(15) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `kamera` varchar(15) NOT NULL,
  `jml_laptop` varchar(15) NOT NULL,
  `jml_komputer` varchar(15) NOT NULL,
  `jml_tv` varchar(15) NOT NULL,
  `jml_printer` varchar(15) NOT NULL,
  `jml_hp` varchar(15) NOT NULL,
  `jml_kamera` varchar(15) NOT NULL,
  `hardware` varchar(15) NOT NULL,
  `software` varchar(15) NOT NULL,
  `detail` text NOT NULL,
  `waktu` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `barangdetail`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `pesandetail`
-- 

CREATE TABLE `pesandetail` (
  `tanggal` varchar(30) NOT NULL,
  `bulan` varchar(30) NOT NULL,
  `tahun` varchar(30) NOT NULL,
  `jam` text NOT NULL,
  `menit` text NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `pesandetail`
-- 

INSERT INTO `pesandetail` (`tanggal`, `bulan`, `tahun`, `jam`, `menit`, `alamat`) VALUES 
('01', '01', '2018', '11', '11', 'sds'),
('01', '01', '2018', '11', '33', 'kjkkkkjkjkjkjkk'),
('01', '01', '2018', '44', '55', 'rr'),
('01', '01', '2018', '2', '2', 'a'),
('01', '01', '2018', '11', '22', 'ddsds');

-- --------------------------------------------------------

-- 
-- Table structure for table `user`
-- 

CREATE TABLE `user` (
  `id` int(15) NOT NULL auto_increment,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `notlp` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `user`
-- 

INSERT INTO `user` (`id`, `username`, `password`, `notlp`) VALUES 
(4, 'w', 'w', '11'),
(5, 'aa', 'aa', 'aa'),
(6, 'r', 'r', '33333'),
(7, 'q', 'q', '11');
