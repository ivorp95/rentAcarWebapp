<!-- CLI start php server: php -S localhost:2222 -->
<!-- http://localhost:2222/obrada.php?email=pero@peric.pe&poruka=legendooo dodavanje vrijednosti varijablama -->

<?php
$email=$_GET['email'];
$poruka=$_GET['poruka'];
echo"<h1>Pozdrav ja sam PHP server! <br> Poslano od: ".$email. "<!h1>";
echo"<h1>Poruka: ".$poruka. "<!h1>";
?>