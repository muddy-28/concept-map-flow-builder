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
$conn->close();
$id=$map['nodes'];
for($id as $id)
{
   echo $id['nodes']." ".$id['name'];
}

$status=$data['nodes'];
?>