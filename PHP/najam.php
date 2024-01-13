<!-- Infinity  free hosting -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rent-a-caR</title>
    <link rel="stylesheet" href="../CSS/style_web-shop.css"-->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"-->
</head>
<body>
<div class="w3-container w3-teal">
        <nav class="navigacija">
            <ul class="w3-bar w3-black">
                <a href="http://127.0.0.1:5501/html/index.html" class="w3-bar-item w3-button">Pocetna stranica</a></li>
                <a href="http://localhost:2222/ponude.php" class="w3-bar-item w3-button">Sve ponude</a></li>
                <a href="http://127.0.0.1:5501/html/registracija.html" class="w3-bar-item w3-button">Registracija</a></li>
                <a href="http://localhost:2222/najam.php" class="w3-bar-item w3-button">Najam</a></li>
            </ul>
        </nav>
    </div>
    <center>
    <h1>WEB-SHOP - SVA PONUDA</h1>
    <p></p>
    <?php
        $server = "ucka.veleri.hr:3306";
        $database = "ipangos";
        $username = "ipangos";
        $password = "11";
    
        $conn = mysqli_connect($server, $username, $password, $database);
        $query = "SELECT * FROM voziloRentPZI";
        $res = mysqli_query($conn, $query);
    ?>
    </center>
    <div>Popis vozila za najam:
    <table border="2px">
            
            
            <th>Registracija</th>
            <th>Proizvodjac</th>
            <th>Model</th>
            <th>Godiste</th>
            <th>Cijena po danu</th>
            <th>Tip Goriva</th>
            <th>Slika</th>
            <th>Opis</th>
            </tr>
        <?php
            while($row = mysqli_fetch_assoc($res)){
                echo "<tr>";
                echo "<td>".$row ["registracija"]."</td>";
                echo "<td>".$row ["proizvodac"]."</td>";
                echo "<td>".$row ["model"]."</td>";
                echo "<td>".$row ["godiste"]."</td>";
                echo "<td>".$row ["cijenaPodanu"]."</td>";
                echo "<td>".$row ["tipGoriva"]."</td>";
                echo "<td><img src='".$row["slika"]."' width='300px' alt='" ."'></td>";
                echo "<td>".$row ["opis"]."</td>";
                echo "</tr>";
            }mysqli_close($conn);
        ?>
    </div>
    
</body>
</html>