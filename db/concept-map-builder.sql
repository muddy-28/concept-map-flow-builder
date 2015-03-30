-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2015 at 12:44 PM
-- Server version: 5.6.23
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `concept-map-builder`
--

-- --------------------------------------------------------

--
-- Table structure for table `concept-maps`
--

CREATE TABLE IF NOT EXISTS `concept-maps` (
  `map_id` int(4) NOT NULL,
  `map_data` text NOT NULL,
  `map_created_by` varchar(25) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=1252 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `concept-maps`
--

INSERT INTO `concept-maps` (`map_id`, `map_data`, `map_created_by`, `created_on`) VALUES
(1250, '{\r\n    "nodes": [\r\n        {\r\n            "name": "jnwed",\r\n            "id": 10,\r\n            "x": 288,\r\n            "y": 261.99999618530273,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "jnewd"\r\n                },\r\n                {\r\n                    "name": "wendj"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "njdwend"\r\n                },\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "width": 250\r\n        },\r\n        {\r\n            "name": "jdwnd",\r\n            "id": 11,\r\n            "x": 562,\r\n            "y": 156.99999713897705,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "ed"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "eded"\r\n                }\r\n            ],\r\n            "width": 250\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'Adnan Shafique', '2015-03-23 12:42:01'),
(1251, '{\r\n    "nodes": [\r\n        {\r\n            "name": "jnwed",\r\n            "id": 10,\r\n            "x": 288,\r\n            "y": 261.99999618530273,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "jnewd"\r\n                },\r\n                {\r\n                    "name": "wendj"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "njdwend"\r\n                },\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "width": 250\r\n        },\r\n        {\r\n            "name": "jdwnd",\r\n            "id": 11,\r\n            "x": 562,\r\n            "y": 156.99999713897705,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "ed"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "eded"\r\n                }\r\n            ],\r\n            "width": 250\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'Adnan Shafique', '2015-03-23 12:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `dest_node`
--

CREATE TABLE IF NOT EXISTS `dest_node` (
  `node_id` int(4) NOT NULL,
  `connector_code` int(2) NOT NULL,
  `map_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dest_node`
--

INSERT INTO `dest_node` (`node_id`, `connector_code`, `map_id`) VALUES
(11, 0, 1250),
(11, 0, 1251);

-- --------------------------------------------------------

--
-- Table structure for table `input_connection`
--

CREATE TABLE IF NOT EXISTS `input_connection` (
  `node_id` int(4) NOT NULL,
  `connector_code` int(2) NOT NULL,
  `connector_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nodes`
--

CREATE TABLE IF NOT EXISTS `nodes` (
  `map_id` int(4) NOT NULL,
  `node_id` int(4) NOT NULL,
  `nodeID` int(2) NOT NULL,
  `nodeName` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nodes`
--

INSERT INTO `nodes` (`map_id`, `node_id`, `nodeID`, `nodeName`) VALUES
(1250, 1, 10, 'jnwed'),
(1250, 2, 11, 'jdwnd'),
(1251, 3, 10, 'jnwed'),
(1251, 4, 11, 'jdwnd');

-- --------------------------------------------------------

--
-- Table structure for table `output_connection`
--

CREATE TABLE IF NOT EXISTS `output_connection` (
  `node_id` int(4) NOT NULL,
  `connector_code` int(2) NOT NULL,
  `connector_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `src_node`
--

CREATE TABLE IF NOT EXISTS `src_node` (
  `node_id` int(4) NOT NULL,
  `connector_code` int(2) NOT NULL,
  `map_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `src_node`
--

INSERT INTO `src_node` (`node_id`, `connector_code`, `map_id`) VALUES
(10, 0, 1250),
(10, 0, 1251);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concept-maps`
--
ALTER TABLE `concept-maps`
  ADD PRIMARY KEY (`map_id`) COMMENT 'Primary key autoincrement';

--
-- Indexes for table `nodes`
--
ALTER TABLE `nodes`
  ADD PRIMARY KEY (`node_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concept-maps`
--
ALTER TABLE `concept-maps`
  MODIFY `map_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1252;
--
-- AUTO_INCREMENT for table `nodes`
--
ALTER TABLE `nodes`
  MODIFY `node_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
