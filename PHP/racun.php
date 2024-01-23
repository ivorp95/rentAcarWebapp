<!-- Infinity  free hosting -->



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rent-a-caR</title>
    <link rel="stylesheet" href="../CSS/style_web-shop.css"-->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"-->

    <script>
    //funkcija za brisanje stavke racuna na koju kliknemo, brisu se podaci iz tablice racun za idVozila koji se poslje funkciji
    // POST ajax metoda dobiva varijablu 'a' kroz parametar funkcije
        function obrisi(a){

        const httpRequest = new XMLHttpRequest();
        httpRequest.onreadystatechange = function(){
        if (httpRequest.readyState==4) {
        document.getElementById("korisnik_unos").innerHTML=httpRequest.responseText; 
        }
    }
    httpRequest.open("POST","https://zealous-cyan-crow.cyclic.app/racunRentPZIobrisi", true);
    httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    httpRequest.send("id="+a);

    }
    </script>


</head>
<body>
<div class="w3-container w3-teal">
        <nav class="navigacija">
            <ul class="w3-bar w3-black">
                <a href="/edsa-RENT/html/index.html" class="w3-bar-item w3-button">Pocetna stranica</a></li>
                <a href="/edsa-RENT/PHP/ponude.php" class="w3-bar-item w3-button">Sve ponude</a></li>
                <a href="/edsa-RENT/html/registracija.html" class="w3-bar-item w3-button">Registracija</a></li>
                <a href="/edsa-RENT/html/poruka.html" class="w3-bar-item w3-button">Poruka</a></li>
                <!--a href="http://localhost:2222/najam.php" class="w3-bar-item w3-button">Najam</a></li-->
            </ul>
        </nav>
    </div>
    <center>
    <h1>RENT A CAR</h1>
    <p></p>
    <?php
        $server = "ucka.veleri.hr:3306";
        $database = "ipangos";
        $username = "ipangos";
        $password = "11";


        $conn = mysqli_connect($server, $username, $password, $database);
        $query = "SELECT * FROM racunRentPZI LEFT OUTER JOIN voziloRentPZI on voziloRentPZI.ID_vozila=racunRentPZI.ID_vozila;";
        $res = mysqli_query($conn, $query);

       
    ?>
    </center>
    <div>ISPIS RACUNA
    <table border="2px">
            <th>Korisnik vozila</th>
            <th>Dana u najmu</th>
            <th>Ukupno EUR</th>
            <th>Proizvodjac</th>
            <th>Model</th>
            <th>Godiste</th>
            <th>Cijena po danu</th>
            <th>Registracija</th>
            <th>Slika</th>
            <th></th>
            <!--th></th-->
            </tr>
        <?php
            while($row = mysqli_fetch_assoc($res)){
                echo "<tr>";
                echo "<td>".$row ["ime"]."</td>";
                echo "<td>".$row ["brojDanaUNajmu"]."</td>";
                echo "<td>".$row ["ukupnaCijena"]."</td>";
                echo "<td>".$row ["proizvodac"]."</td>";
                echo "<td>".$row ["model"]."</td>";
                echo "<td>".$row ["godiste"]."</td>";
                echo "<td>".$row ["cijenaPodanu"]."</td>";
                echo "<td>".$row ["registracija"]."</td>";
                echo "<td><img src='".$row["slika"]."' width='300px' alt='" ."'></td>";
                //echo "<td>".$row ["opis"]."</td>";
                //slicno kao kod pounde.php, dobiveni podatak ID_vozila saljemo kao parametar funkciji obrisi preko gumba 
                //brise se onaj redak na koji se klikne i dobije ID_vozila
                echo "<td><input type='button' value='OBRISI' class='w3-btn w3-black' onclick='obrisi(".$row ["ID_vozila"].")'><br></td>";
                echo "</tr>";
            }mysqli_close($conn);
        ?>
    </div>
    <div id="korisnik_unos"></div>
</body>
</html>
