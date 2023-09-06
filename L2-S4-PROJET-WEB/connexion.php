<?php

$email=$_POST['email'];
$mdp=$_POST['mdp'];

$servername = "localhost";
$username = "root"; 
$password = "Nanterre2021*";
$dbname = "vente_chaussures";


$conn=mysqli_connect($servername,$username,$password,$dbname);
if (!$conn) {
    die("Connexion échouée : " . mysqli_connect_error());
}


$requete="SELECT ID_clients,Prenom, Email, Mdp FROM Clients WHERE Email='".$email."'";
$result=mysqli_query($conn,$requete);
$test_mdp="";//on l'initialise avec une chaine de caracteres vide au cas ou l'utilisateur se trompe d'email (car si l'email n'existe pas dans la BD alors le mot de passe non plus)


while($row = mysqli_fetch_assoc($result)){
    $nom_utilisateur=$row['Prenom'];
    $id_utilisateur=$row['ID_clients'];
    $email_utilisateur=$row['Email'];
    $test_mdp=$row['Mdp'];//permet de verifier le mot de passe
}


//on lance la session mais tant qu'on est pas connecté elle ne sert a rien car on ne sait pas de quel client il s'agit
session_id("sess");
session_cache_expire(2);
session_start();

//tant qu'on n'est pas connecte il n'y a pas d'infos sur l'utilisateur
$_SESSION['usermail']="";
$_SESSION['username']="";
$_SESSION['userID']="";

//verification que le mot de passe entré et celui enregistré dans la BD correspondent
if ($mdp != $test_mdp){//Prends aussi le cas ou le compte n'existe pas (car email=null dans ce cas la)
    echo"<p>Nom d'utilisateur ou mot de passe incorrect<br><br></p>";
    echo'<a href="connexion.html"><button>Se connecter</button></a>';
}

else{
    echo"Bienvenue ".$nom_utilisateur;
    $_SESSION['username']=$nom_utilisateur;
    $_SESSION['userID']=$id_utilisateur;
    $_SESSION['usermail']=$email_utilisateur;//si on s'est connecté alors usermail devient le mail de la personne connectée
    
    if ($_SESSION['usermail']=$email_utilisateur){
    echo"<br><br><p>Session active<br><br></p>";
    }

    else{
        echo"<p>Problème de session, veuillez reessayer</p>";
    }
    echo"<br><br><a href='index.php'><button>Retourner à l'accueil</button></a>";
}



mysqli_close($conn);

?>