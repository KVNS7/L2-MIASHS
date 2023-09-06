<?php

if($_GET['login']== "" || $_GET['pwd']== ""){

    echo "<script>alert(\"Veuillez saisir un login et un mot de passe\")</script>";

}else {

    $login = $_GET['login'];
    $password = $_GET['pwd'];

}

?>