-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2015 at 06:47 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=1114 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `concept-maps`
--

INSERT INTO `concept-maps` (`map_id`, `map_data`, `map_created_by`, `created_on`) VALUES
(1100, '{ "nodes": [ { "name": "Adnan", "id": 10, "x": 270, "y": 123.99999618530273, "inputConnectors": [ { "name": "Cs" } ], "outputConnectors": [ { "name": "works on" } ], "width": 250 }, { "name": "Adnan", "id": 11, "x": 457, "y": 344.99999618530273, "inputConnectors": [ { "name": "Adnand" } ], "outputConnectors": [], "width": 250 } ], "connections": [ { "source": { "nodeID": 10, "connectorIndex": 0 }, "dest": { "nodeID": 11, "connectorIndex": 0 } } ] }', 'Adnan', '2015-03-21 05:03:57'),
(1101, '{ "nodes": [ { "name": "Adnan", "id": 10, "x": 270, "y": 123.99999618530273, "inputConnectors": [ { "name": "Cs" } ], "outputConnectors": [ { "name": "works on" } ], "width": 250 }, { "name": "Adnan", "id": 11, "x": 457, "y": 344.99999618530273, "inputConnectors": [ { "name": "Adnand" } ], "outputConnectors": [], "width": 250 } ], "connections": [ { "source": { "nodeID": 10, "connectorIndex": 0 }, "dest": { "nodeID": 11, "connectorIndex": 0 } } ] }', 'Adnan Shafique', '2015-03-21 05:07:39'),
(1102, '{ "nodes": [ { "name": "Adnan", "id": 10, "x": 270, "y": 123.99999618530273, "inputConnectors": [ { "name": "Cs" } ], "outputConnectors": [ { "name": "works on" } ], "width": 250 }, { "name": "Adnan", "id": 11, "x": 457, "y": 344.99999618530273, "inputConnectors": [ { "name": "Adnand" } ], "outputConnectors": [], "width": 250 } ], "connections": [ { "source": { "nodeID": 10, "connectorIndex": 0 }, "dest": { "nodeID": 11, "connectorIndex": 0 } } ] }', 'Adnan Shafique', '2015-03-21 05:07:56'),
(1103, '{\n    "nodes": [\n        {\n            "name": "ada",\n            "id": 10,\n            "x": 0,\n            "y": 0,\n            "inputConnectors": [],\n            "outputConnectors": [],\n            "width": 250\n        }\n    ],\n    "connections": []\n}', 'Adnan Shafique', '2015-03-21 05:18:19'),
(1104, '{\r\n    "nodes": [\r\n        {\r\n            "name": "zeeshan Afzal",\r\n            "id": 10,\r\n            "x": 29,\r\n            "y": 111.99999618530273,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "bqwhbqh"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                },\r\n                {\r\n                    "name": "qhbx"\r\n                }\r\n            ],\r\n            "width": 250\r\n        },\r\n        {\r\n            "name": "bsxhcbsdc",\r\n            "id": 11,\r\n            "x": 505,\r\n            "y": 100.99999618530273,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "bsasx "\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "vsasxa"\r\n                }\r\n            ],\r\n            "width": 250\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'Adnan Shafique', '2015-03-21 05:21:22'),
(1105, '{\r\n    "nodes": [\r\n        {\r\n            "name": "zeeshan Afzal",\r\n            "id": 10,\r\n            "x": 29,\r\n            "y": 111.99999618530273,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "bqwhbqh"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                },\r\n                {\r\n                    "name": "qhbx"\r\n                }\r\n            ],\r\n            "width": 250\r\n        },\r\n        {\r\n            "name": "bsxhcbsdc",\r\n            "id": 11,\r\n            "x": 505,\r\n            "y": 100.99999618530273,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "bsasx "\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "vsasxa"\r\n                }\r\n            ],\r\n            "width": 250\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'Adnan Shafique', '2015-03-21 05:25:13'),
(1106, '{\r\n    "nodes": [\r\n        {\r\n            "name": "zeeshan Afzal",\r\n            "id": 10,\r\n            "x": 29,\r\n            "y": 111.99999618530273,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "bqwhbqh"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                },\r\n                {\r\n                    "name": "qhbx"\r\n                }\r\n            ],\r\n            "width": 250\r\n        },\r\n        {\r\n            "name": "bsxhcbsdc",\r\n            "id": 11,\r\n            "x": 505,\r\n            "y": 100.99999618530273,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "bsasx "\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "vsasxa"\r\n                }\r\n            ],\r\n            "width": 250\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'Adnan Shafique', '2015-03-21 05:26:08'),
(1107, '{\r\n    "nodes": [\r\n        {\r\n            "name": "zeeshan Afzal",\r\n            "id": 10,\r\n            "x": 29,\r\n            "y": 111.99999618530273,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "bqwhbqh"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                },\r\n                {\r\n                    "name": "qhbx"\r\n                }\r\n            ],\r\n            "width": 250\r\n        },\r\n        {\r\n            "name": "bsxhcbsdc",\r\n            "id": 11,\r\n            "x": 505,\r\n            "y": 100.99999618530273,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "bsasx "\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "vsasxa"\r\n                }\r\n            ],\r\n            "width": 250\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'Adnan Shafique', '2015-03-21 05:27:20'),
(1108, '', 'Adnan Shafique', '2015-03-21 05:27:50'),
(1109, '{\r\n    "nodes": [\r\n        {\r\n            "name": "New Node",\r\n            "id": 10,\r\n            "x": 0,\r\n            "y": 0,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [],\r\n            "width": 250\r\n        }\r\n    ],\r\n    "connections": []\r\n}', 'Adnan Shafique', '2015-03-21 05:31:45'),
(1110, '{\r\n    "nodes": [\r\n        {\r\n            "name": "New Node",\r\n            "id": 10,\r\n            "x": 0,\r\n            "y": 0,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [],\r\n            "width": 250\r\n        }\r\n    ],\r\n    "connections": []\r\n}', 'Adnan Shafique', '2015-03-21 05:33:26'),
(1111, '{\r\n    "nodes": [\r\n        {\r\n            "name": "New Node",\r\n            "id": 10,\r\n            "x": 500,\r\n            "y": 610.0000267028809,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "width": 250\r\n        },\r\n        {\r\n            "name": "dxfghjk",\r\n            "id": 11,\r\n            "x": 546,\r\n            "y": 61.99999713897705,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 250\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'Adnan Shafique', '2015-03-21 05:41:28'),
(1112, '{\r\n    "nodes": [\r\n        {\r\n            "name": "New Node",\r\n            "id": 10,\r\n            "x": 500,\r\n            "y": 610.0000267028809,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "width": 250\r\n        },\r\n        {\r\n            "name": "dxfghjk",\r\n            "id": 11,\r\n            "x": 546,\r\n            "y": 61.99999713897705,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 250\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'Adnan Shafique', '2015-03-21 05:42:24'),
(1113, '{\r\n    "nodes": [\r\n        {\r\n            "name": "New Node",\r\n            "id": 10,\r\n            "x": 500,\r\n            "y": 610.0000267028809,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "width": 250\r\n        },\r\n        {\r\n            "name": "dxfghjk",\r\n            "id": 11,\r\n            "x": 546,\r\n            "y": 61.99999713897705,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 250\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'Adnan Shafique', '2015-03-21 05:43:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concept-maps`
--
ALTER TABLE `concept-maps`
  ADD PRIMARY KEY (`map_id`) COMMENT 'Primary key autoincrement';

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concept-maps`
--
ALTER TABLE `concept-maps`
  MODIFY `map_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1114;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
