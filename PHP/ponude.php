<?php
    $server = "ucka.veleri.hr:3306";
    $database = "ipangos";
    $username = "ipangos";
    $password = "11";

    $conn = mysqli_connect($server, $username, $password, $database);
    $query = "SELECT * FROM mobiteli_pzi";
    $res = mysqli_query($conn, $query);
    while($row = mysqli_fetch_assoc($res)){
        echo "\n";
        echo $row ["NAZIV"];
        echo $row ["PROIZVODAC"];
        echo $row ["CIJENA"];
    }
    mysqli_close($conn);