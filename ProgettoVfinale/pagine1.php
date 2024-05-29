<?php
if(isset($_GET['id'])) {

    $championID = $_GET['id'];

    $servername = "localhost";
    $username = "root";
    $password = ""; 
    $database = "lol"; 

    $conn = new mysqli($servername, $username, $password, $database);

    if ($conn->connect_error) {
        die("Connessione fallita: " . $conn->connect_error);
    }

    $sql = "SELECT champions.*, GROUP_CONCAT(roles.RoleName SEPARATOR ', ') AS Roles
            FROM champions
            LEFT JOIN ch_roles ON champions.ChampionID = ch_roles.ChampionID
            LEFT JOIN roles ON ch_roles.RoleID = roles.RoleID
            WHERE champions.ChampionID = $championID
            GROUP BY champions.ChampionID";

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $championName = $row['Name'];
        $championDescription = $row['Description'];
        $championImageURL = $row['ImageURL'];
        $championPrice = $row['Price'];
        $championDifficulty = $row['Difficulty'];
        $championRoles = $row['Roles'];
    } else {
        echo "Nessun campione trovato con questo ID.";
        exit;
    }

    $sql_abilities = "SELECT * FROM abilities WHERE ChampionID = $championID";
    $result_abilities = $conn->query($sql_abilities);

    $abilities = [];
    if ($result_abilities->num_rows > 0) {
        while($ability_row = $result_abilities->fetch_assoc()) {
            $abilities[] = $ability_row;
        }
    }

    $conn->close();
} else {
    echo "ID del campione non fornito.";
    exit;
}
switch ($championDifficulty) {
    case 1:
        $championDifficulty = "Facile";
        break;
    case 2:
        $championDifficulty = "Media";
        break;
    case 3:
        $championDifficulty = "Difficile";
        break;
    default:
        $championDifficulty = "Sconosciuta"; 
        break;
}
?>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $championName; ?> - League of Legends</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Friz+Quadrata&display=swap');

        body {
            font-family: 'Friz Quadrata', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('img/background.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #fff;
        }
        .container {
            max-width: 1000px;
            margin: 40px auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.85);
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.7);
        }
        .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .champion-image img {
            width: 400px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
        }
        .description {
            flex: 1;
            margin-left: 20px;
        }
        .description h2 {
            color: #d4a5ff;
            margin-bottom: 10px;
        }
        .info-container {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }
        .info-box {
            flex: 1;
            background: rgba(30, 30, 60, 0.85);
            margin: 10px;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            text-align: center;
        }
        .info-box h2 {
            color: #d4a5ff;
            font-size: 1.2em;
            margin-bottom: 10px;
        }
        .abilities {
            margin-top: 20px;
        }
        .abilities h2 {
            text-align: center;
            color: #d4a5ff;
        }
        .ability {
            display: flex;
            align-items: center;
            margin: 10px 0;
            padding: 10px;
            background: rgba(30, 30, 60, 0.85);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        .ability img {
            width: 100px; 
            height: 100px;
            margin-right: 15px;
            border-radius: 8px;
            border: 2px solid #d4a5ff;
        }
        .ability h3 {
            margin: 0;
            color: #ffd700;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 style="text-align:center;"><?php echo $championName; ?></h1>
        <div class="header">
            <div class="champion-image">
                <img src="<?php echo $championImageURL; ?>" alt="<?php echo $championName; ?>">
            </div>
            <div class="description">
                <h2>Descrizione</h2>
                <p><?php echo $championDescription; ?></p>
            </div>
        </div>
        <div class="info-container">
            <div class="info-box price">
                <h2>Prezzo</h2>
                <p><?php echo $championPrice; ?></p>
            </div>
            <div class="info-box difficulty">
                <h2>Difficoltà</h2>
                <p><?php echo $championDifficulty; ?></p>
            </div>
            <div class="info-box role">
                <h2>Ruoli</h2>
                <p><?php echo $championRoles; ?></p>
            </div>
        </div>
        <div class="abilities">
            <h2>Abilità</h2>
            <?php foreach ($abilities as $ability): ?>
                <div class="ability">
                    <img src="<?php echo $ability['img']; ?>" alt="<?php echo $ability['Name']; ?>">
                    <div>
                        <h3><?php echo $ability['Name']; ?></h3>
                        <p><?php echo $ability['Description']; ?></p>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</body>
</html>
