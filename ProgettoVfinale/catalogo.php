<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .champion-image {
      max-width: 110%;
      max-height: 100%;
      object-fit: cover;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
      border-radius: 10px; 
      transition: transform 0.3s; 
    }

    .champion-image:hover {
      transform: scale(1.05); 
    }

    .champion-name {
      text-shadow: 1px 1px 2px #8B4513, 0 0 1em #8B4513; 
    }
  </style>
</head>
<body style="background-image: url('img/BG.jpg'); background-size: cover; background-position: center;">

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand">LEAGUE OF LEGEND</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="catalogo.php">Catalogo</a>
        </li>
        <li class="nav-item">
                <a class="nav-link" href="storia/infolol.html">Tutorial</a>
        </li>
      </ul>
    </div>
  </nav>
  
  <div class="container">
    <div class="row mt-3">
      <div class="col">
        <form method="GET" action="catalogo.php" class="form-inline">
          <select name="sort" id="sort" class="form-control mr-2">
            <option value="name_asc">Ordina per nome CRE </option>
            <option value="name_desc">Ordina per nome DCR</option>
          </select>
          <input type="text" name="search" class="form-control mr-2" placeholder="Cerca per nome" value="<?php echo isset($_GET['search']) ? $_GET['search'] : ''; ?>">
          <button type="submit" class="btn btn-primary">Applica</button>
        </form>
      </div>
    </div>
    
    <div class="row mt-3" id="champion-container">
      <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $database = "lol";

        $conn = new mysqli($servername, $username, $password, $database);

        if ($conn->connect_error) {
            die("Connessione fallita: " . $conn->connect_error);
        }

        $sortOrder = "";
        if (isset($_GET['sort'])) {
            if ($_GET['sort'] == 'name_asc') {
                $sortOrder = "ORDER BY Name ASC";
            } elseif ($_GET['sort'] == 'name_desc') {
                $sortOrder = "ORDER BY Name DESC";
            }
        }

        $searchTerm = "";
        if (isset($_GET['search'])) {
            $searchTerm = $conn->real_escape_string($_GET['search']);
        }

        $sql = "SELECT * FROM champions WHERE Name LIKE '%$searchTerm%' $sortOrder";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc()) {
              echo '<div class="col-6 col-sm-5 col-md-3 p-3">' .
                      '<a href="pagine1.php?id=' . $row['ChampionID'] . '" class="d-block text-center text-decoration-none">' .
                        '<div  style="width: 100%; height: 150px; display: flex; justify-content: center; align-items: center;">' .
                          '<img src="' . $row['ImageURL'] . '" alt="' . $row['Name'] . '" class="img-fluid champion-image">' .
                        '</div>' .
                        '<div class="p-2 mb-1 bg-secondary text-white champion-name">' . $row['Name'] . '</div>' .
                      '</a>' .
                    '</div>';
          }
      } else {
          echo "0 risultati";
      }

      $conn->close();
    ?>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>



  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
