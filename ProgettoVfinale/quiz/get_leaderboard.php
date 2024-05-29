<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "lol";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connessione fallita: " . $conn->connect_error);
}

$sql = "SELECT nome, punteggio FROM leaderboard ORDER BY punteggio DESC";
$result = $conn->query($sql);

$leaderboard = array();

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $leaderboard[] = $row;
    }
}

echo json_encode($leaderboard);

$conn->close();
?>
