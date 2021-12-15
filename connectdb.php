<!DOCTYPE html>
<html>
<head>
	<title>PHP Connect MySQL Database</title>
</head>
<body>
	<h1>PHP Connect MySQL Database</h2>
	<p><?php 
		$servername = "localhost";
		$username = "root";
		$password = "5737";
		$dbname - "smarthealth"

		//Create connection
		//MySQLI is Object-Oriented method
		$conn = new mysqli($servername, $username, $password, $dbname);

		// Check connection
		if ($conn->connect_error) {
			die("<p style='color:red'>" . "Connection failed: " . $conn->connect_error ."</p>");
		}
		echo "Mysql DB Connected successfully...<br>";

		$conn->close();

		echo "DB Disconnect.";
	?></p>
</body>
</html>
