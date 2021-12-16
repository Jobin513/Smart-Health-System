<?php
//include the connection file
include ('connectdb.php');

$mainSymptom = $_POST["mainSymptom"];
$Symptom1 = $_POST['Symptom1'];
$Symptom2 = $_POST['Symptom2'];
$Symptom3 = $_POST['Symptom3'];
$Symptom4 = $_POST['Symptom4'];

$sql = "SELECT Title, Definition, Treatment FROM Disease WHERE Symptom1 LIKE 
        '%{$Symptom1}%' OR Symptom2 LIKE '%{$Symptom2}%' OR Symptom3 LIKE '%{$Symptom3}%'
        OR Symptom4 LIKE '%{$Symptom4}%";

$result = $conn -> query($sql);
if ($result -> num_rows > 0) {
    header("location: Result.html");
    while ($row = $result -> fetch_assoc()) {
        echo "<tr><td>".$row["Title"]."</td><td>".$row["Definition"]."</td><td>".$row["Treatment"]."</td></tr>";
    }
} else {
    echo "0 results";
}

$conn -> close();
?>