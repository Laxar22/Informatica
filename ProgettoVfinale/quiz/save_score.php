<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "lol";

// Crea la connessione
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica la connessione
if ($conn->connect_error) {
    die("Connessione fallita: " . $conn->connect_error);
}

// Ottieni i dati dal POST
$nome = $_POST['nome'];
$punteggio = $_POST['punteggio'];

// Prepara e esegui l'inserimento nel database
$sql = "INSERT INTO leaderboard (nome, punteggio) VALUES ('$nome', '$punteggio')";

if ($conn->query($sql) === TRUE) {
    echo "Record inserito con successo";
} else {
    echo "Errore: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
