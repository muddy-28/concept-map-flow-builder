

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

$sql_map = "INSERT INTO `concept-map-builder`.`concept-maps` (`map_id`, `map_data`, `map_created_by`, `created_on`) VALUES (NULL,'$map', 'Adnan Shafique', CURRENT_TIMESTAMP)";

if ($conn->query($sql_map) === TRUE) {
    $last_id = $conn->insert_id;
    echo "New record created successfully. Last inserted map ID is: " . $last_id;
} else {
    echo "Error: " . $sql_map . "<br>" . $conn->error;
}

//$conn->close();

$map_decod=json_decode($map,true);

$nodes = $map_decod["nodes"];
$count_nodes=count($nodes);
for($nodes_count=0;$nodes_count<$count_nodes;$nodes_count++)
{
echo "<br>NAME:-".$nodes[$nodes_count]['name']."<br>";
    $name=$nodes[$nodes_count]['name'];
echo "ID:-".$nodes[$nodes_count]['id']."<br>";
    $id=$nodes[$nodes_count]['id'];
$sql_node = "INSERT INTO `nodes`(`map_id`, `node_id`, `nodeID`, `nodeName`) VALUES ($last_id,NULL,$id,'$name')";
if ($conn->query($sql_node) === TRUE) {
    $last_id = $conn->insert_id;
    echo "New record created successfully. Last inserted ID is: " . $last_id;
} else {
    echo "Error: " . $sql_node . "<br>" . $conn->error;
}
  
//--------------input connectors--------------    
$i_conn=$nodes[$nodes_count]['inputConnectors'];
$count_i_conn=count($i_conn);

for($i_conn_count=0;$i_conn_count<$count_i_conn;$i_conn_count++)
{
    echo "in connector".$i_conn_count.":_".$i_conn[$i_conn_count]['name']."<br>";
    $nme=$i_conn[$i_conn_count]['name'];
    //INSERT INTO `input_connection`(`node_id`, `connector_code`, `connector_name`) VALUES ([value-1],[value-2],[value-3])
    $sql_node = "INSERT INTO 'input_connection'(`node_id`, `connector_code`, `connector_name`) VALUES ($last_id,$i_conn_count,$nme)";
if ($conn->query($sql_node) === TRUE) {
    $last_inconnector = $conn->insert_id;
    echo "New record created successfully. Last inserted ID is: " . $last_inconnector;
} else {
    echo "Error: " . $sql_node . "<br>" . $conn->error;
}

}
//--------------output connectors--------------    
$o_conn=$nodes[$nodes_count]['outputConnectors'];
$count_o_conn=count($o_conn);
//echo $count_o_conn;
for($o_conn_count=0;$o_conn_count<$count_o_conn;$o_conn_count++)
{
    echo "out connector-".$o_conn_count.":_".$i_conn[$o_conn_count]['name']."<br>";
    $nme=$i_conn[$o_conn_count]['name'];
    $sql_node = "INSERT INTO `output_connection`(`node_id`, `connector_code`, `connector_name`) VALUES ($last_id,$o_conn_count,$nme)";
if ($conn->query($sql_node) === TRUE) {
    $last_outconnector = $conn->insert_id;
    echo "New record created successfully. Last inserted ID is: " . $last_outconnector;
} else {
    echo "Error: " . $sql_node . "<br>" . $conn->error;
}

    
}

}
//--------------connections working--------------------
$connec = $map_decod["connections"];
$count_conn=count($connec);
for($cnnc_count=0;$cnnc_count<$count_conn;$cnnc_count++)
{
//--------------soucre of cnnection--------------
$sour= $connec[$cnnc_count]['source'];
    echo "source node:- ".$sour['nodeID']."<br>";
    echo "source conector:- ".$sour['connectorIndex']."<br>";
//--------------destination of connection--------------
$sour= $connec[$cnnc_count]['dest'];
    echo "destination node:- ".$sour['nodeID']."<br>";
    echo "destination conector:- ".$sour['connectorIndex']."<br>";    
}
?>