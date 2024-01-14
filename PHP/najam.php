<!-- Infinity  free hosting -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rent-a-caR</title>
    <link rel="stylesheet" href="http://127.0.0.1:5501/CSS/style_web-shop.css"-->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"-->

    <script>

function httpGet(theUrl)
{
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open( "GET", theUrl, true );
    xmlHttp.send( null );
    return xmlHttp.responseText;
}

function posalji(){
    let ime = document.getElementById("ime").value;
    let brojDana = document.getElementById("brojDana").value;
    var idVozilo="<?php echo $_GET['idVozilo']; ?>";

    const httpRequest = new XMLHttpRequest();
    httpRequest.onreadystatechange = function(){
        if (httpRequest.readyState==4) {
            document.getElementById("korisnik_unos").innerHTML=httpRequest.responseText; 
        }
    }

    


    httpRequest.open("POST","http://localhost:3000/najamRentPZI/", true);
    httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    httpRequest.send("ime="+ime+"&brojDana="+brojDana+"&idVozilo="+idVozilo);


}
</script>

</head>
<body>
<div class="w3-container w3-teal">
        <nav class="navigacija">
            <ul class="w3-bar w3-black">
                <a href="http://127.0.0.1:5501/html/index.html" class="w3-bar-item w3-button">Pocetna stranica</a></li>
                <a href="http://localhost:2222/ponude.php" class="w3-bar-item w3-button">Sve ponude</a></li>
                <a href="http://127.0.0.1:5501/html/registracija.html" class="w3-bar-item w3-button">Registracija</a></li>
                <!--a href="http://localhost:2222/najam.php" class="w3-bar-item w3-button">Najam</a></li-->
            </ul>
        </nav>
    </div>
    <center>
    <h1 class="w3-container w3-teal">OBRAZAC NARUDZBE VOZILA</h1>
    <?php
        $server = "ucka.veleri.hr:3306";
        $database = "ipangos";
        $username = "ipangos";
        $password = "11";
        $idVozilo=$_GET['idVozilo'];

        $conn = mysqli_connect($server, $username, $password, $database);
        $query = "SELECT * FROM voziloRentPZI WHERE ID_vozila=$_GET[idVozilo]";
        $res = mysqli_query($conn, $query);
        //$idKorinik=$_GET['idKorisnik'];

    ?>
    </center>
    <div>Vase odabrano vozilo za najam, molimo popunite obrazac za dovrsetak narudzbe :
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
                echo "<td><img src='".$row["slika"]."' width='400px' alt='" ."'></td>";
                echo "<td>".$row ["opis"]."</td>";
                echo "</tr>";
            }mysqli_close($conn);
        ?>
    </div>

    <div class="w3-container w3-teal">
        <center>
        <form class="w3-teal">
        <label for="">Unesite vase Ime:</label>
        <input type="text" name="" id="ime" class="w3-input w3-border">
        <label for="">Broj dana koliko zelite unajmiti vozilo:</label>
        <input type="text" name="" id="brojDana" class="w3-input w3-border">
        <input type="button" value="Unajmi vozilo" class="w3-btn w3-black" onclick="posalji()"><br>
        </form>
    </center>
    </div>
    <div id="korisnik_unos"></div>
</body>
</html>