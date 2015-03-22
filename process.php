

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
{ "nodes": [ { "name": "fgh", "id": 10, "x": 348, "y": 42, "inputConnectors": [ { "name": "New connector" }, { "name": "New connector" }, { "name": "New connector" } ], "outputConnectors": [], "width": 250 }, { "name": "New Node", "id": 11, "x": 33, "y": 280.99999618530273, "inputConnectors": [], "outputConnectors": [ { "name": "New connector" }, { "name": "New connector" }, { "name": "New connector" }, { "name": "New connector" } ], "width": 250 } ], "connections": [ { "source": { "nodeID": 11, "connectorIndex": 3 }, "dest": { "nodeID": 10, "connectorIndex": 2 } } ] }
*/

$conn->close();
$map_decod=json_decode($map,true);

$nodes = $map_decod["nodes"];
$count_nodes=count($nodes);
for($nodes_count=0;$nodes_count<$count_nodes;$nodes_count++)
{
echo "<br>NAME:-".$nodes[$nodes_count]['name']."<br>";
echo "ID:-".$nodes[$nodes_count]['id']."<br>";

//input connectors    
$i_conn=$nodes[$nodes_count]['inputConnectors'];
$count_i_conn=count($i_conn);
//echo $count_i_conn;
for($i_conn_count=0;$i_conn_count<$count_i_conn;$i_conn_count++)
{
    echo "in connector 1-".$i_conn[$i_conn_count]['name']."<br>";
}
//output connectors    
$o_conn=$nodes[$nodes_count]['outputConnectors'];
$count_o_conn=count($o_conn);
//echo $count_o_conn;
for($o_conn_count=0;$o_conn_count<$count_o_conn;$o_conn_count++)
{
    echo "out connector1-".$i_conn[$o_conn_count]['name']."<br><br>";
}

}
//--------------------------------------------------
$connec = $map_decod["connections"];
$count_conn=count($connec);
for($cnnc_count=0;$cnnc_count<$count_conn;$cnnc_count++)
{
//soucre of cnnection
$sour= $connec[$cnnc_count]['source'];
    echo "source node:- ".$sour['nodeID']."<br>";
    echo "source conector:- ".$sour['connectorIndex']."<br>";
//destination of connection
$sour= $connec[$cnnc_count]['dest'];
    echo "destination node:- ".$sour['nodeID']."<br>";
    echo "destination conector:- ".$sour['connectorIndex']."<br>";    
}
?>