<?php
    echo "Yeah it is <br>";
    echo $_POST['json_obj'];
    $map=$_POST['json_obj'];
?>
<?php
$servername = "localhost";
$username = "root";
$password = "mysql";
$dbname = "concept-map-builder";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO `concept-map-builder`.`concept-maps` (`map_id`, `map_data`, `map_created_by`, `created_on`) 
VALUES (NULL, '$map', 'Adnan Shafique', CURRENT_TIMESTAMP)";

if ($conn->query($sql) === TRUE) {
    echo "<br><h4>New record created successfully</h4>";
} else {
    echo "<br>Error: " . $sql . "<br>" . $conn->error;
}
/*
{ "nodes": [ { "name": "Adnan Shafique", "id": 10, "x": 282, "y": 684.0000267028809, "inputConnectors": [ { "name": "adasd" } ], "outputConnectors": [ { "name": "ashahsd" } ], "width": 250 }, { "name": "mad", "id": 11, "x": 267, "y": 71.99996566772461, "inputConnectors": [ { "name": "New connector" } ], "outputConnectors": [ { "name": "New connector" } ], "width": 250 } ], "connections": [ { "source": { "nodeID": 10, "connectorIndex": 0 }, "dest": { "nodeID": 11, "connectorIndex": 0 } }, { "source": { "nodeID": 11, "connectorIndex": 0 }, "dest": { "nodeID": 10, "connectorIndex": 0 } } ] }
*/

$conn->close();
$map_decod=json_decode($map,true);
$data = array();
$name = array();
$id = array();
                $nodes = $map_decod["nodes"];

echo "NAME:-".$nodes[0]['name']."<br>";
echo "ID:-".$nodes[0]['id']."<br>";
$i_conn=$nodes[0]['inputConnectors'];
echo "in connector 1-".$i_conn[0]['name']."<br>";
$o_conn=$nodes[0]['outputConnectors'];
echo "o_connector-1:-".$o_conn[0]['name']."<br>";
?>