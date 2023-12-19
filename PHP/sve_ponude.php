

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WEB-SHOP mobiteli (sve ponude)</title>
    <link rel="stylesheet" href="../CSS/style_web-shop.css"-->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"-->
</head>
<body>
    <div class="w3-container w3-teal">
        <nav class="navigacija">
            <ul class="w3-bar w3-black">
                <a href="../web_shop_20231010/index.html" class="w3-bar-item w3-button">Pocetna stranica</a></li>
                <a href="../web_shop_20231010/sve_ponude.html" class="w3-bar-item w3-button">Sve ponude</a></li>
                <a href="http://localhost:2222/PHP/sve_ponude.php" class="w3-bar-item w3-button">ponude php</a></li>
                <a href="../web_shop_20231010/kontakt.html" class="w3-bar-item w3-button">Kontakt</a></li>
                <a href="../web_shop_20231010/registracija.html" class="w3-bar-item w3-button">Registracija</a></li>
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
        $query = "SELECT * FROM mobiteli_pzi";
        $res = mysqli_query($conn, $query);
    ?>
    </center>
    <div>Popis mobitela za prodaju:
    <table border="2px">
            
            
            <th>Naziv uredjaja</th>
            <th>Proizvodjac</th>
            <th>Opis</th>
            <th>Slika</th>
            <th>Cijena</th>
            </tr>
        <?php
            while($row = mysqli_fetch_assoc($res)){
                echo "<tr>";
                echo "<td>".$row ["NAZIV"]."</td>";
                echo "<td>".$row ["PROIZVODAC"]."</td>";
                echo "<td>".$row ["OPIS"]."</td>";
                echo "<td><img src='".$row["SLIKA"]."' width='100px' alt='" ."'></td>";
                echo "<td>".$row ["CIJENA"]."</td>";
                echo "</tr>";
            }mysqli_close($conn);
        ?>
      <!--  <ol>
            <li>Samsung Galaxy S23 5G 128GB crni <a href="https://www.a1.hr/webshop/mobiteli-na-pretplatu/samsung-samsung-galaxy-s23-5g-128gb-crni/1000043118/savrsena" target="_blank">Vise o uredjaju....</a>
            <img src="../img/samsung-s23.jpg" width="200px" alt=""></li>
            <li>Samsung Galaxy A54 5G 256GB crni <a href="https://www.a1.hr/webshop/mobiteli-na-pretplatu/samsung-samsung-galaxy-a54-5g-256gb-crni/1000043636/savrsena" target="_blank">Vise o uredjaju...</a>
            <img src="../img/samsung-galaxy-a-51.png" width="200px" alt=""></li>
            <li>Apple iPhone 15 128GB 5G crni <a href="https://www.a1.hr/webshop/mobiteli-na-pretplatu/apple-iphone-15-128gb-5g-crni/1000045094/savrsena" target="_blank">Vise o uredjaju..</a>
            <img src="../img/apple-iphone-15.jpeg?tr=w-1200" width="250px" alt=""></li>
        </ol> --> 
    </div>
    
</body>
</html>