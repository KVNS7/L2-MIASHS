<?php

if (isset($_POST['ajout'])){
session_start();
    $servername = "localhost";
    $username = "root"; 
    $password = "Nanterre2021*";
    $database="Vente_chaussures";


    $conn=mysqli_connect($servername,$username,$password,$database);
    if (!$conn){
        die("Connexion échoué:".mysqli_connect_error);
    }


    $produit=$_POST['produit'];
    $ref_produit=$_POST['id_produit'];
    $taille=$_POST['tailles'];
    $couleur=$_POST['couleurs'];

    $req_ref_panier="SELECT Ref_panier FROM Clients WHERE ID_clients='".$_SESSION['userID']."'";
    $req_ref_modele="SELECT ID_modele FROM Modeles INNER JOIN Produits ON Modeles.Ref_produit=Produits.ID_produit WHERE Modeles.Couleur='".$couleur."' AND Produits.ID_produit='".$ref_produit."'";

    $res_ref_panier=mysqli_query($conn,$req_ref_panier);
    $res_ref_modele=mysqli_query($conn,$req_ref_modele);

    while ($row=mysqli_fetch_assoc($res_ref_panier)){
        $refpanier=$row['Ref_panier'];
    }

    while ($row=mysqli_fetch_assoc($res_ref_modele)){
        $refmodele=$row['ID_modele'];
    }

    $req_insertion="INSERT INTO Articles_panier (Taille,Quantite,Ref_produit,Ref_modele,Ref_panier) VALUES ('".$taille."','1','".$ref_produit."','".$refmodele."','".$refpanier."')";
    $res_insertion=mysqli_query($conn,$req_insertion);

    echo"Le produit a bien été ajouté au panier<br><br>";
    echo"<a href='panier.php'><button>Accéder à mon panier</button></a>";
    echo"<a href='index.php'><button>Retourner à l'accueil</button></a>";

}



?>