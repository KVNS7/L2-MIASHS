<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page Individuelle 1</title>
    <link rel="stylesheet" href="styleindiv2.css">
    <link rel="shortcut icon" href="IMG/favicon.ico" type="image/x-icon">
    <script src="fonctions.js"></script>
    
</head>


<body>

    <header>

        <a href="index.php"><img id="logo" src="IMG/logo.png" alt="logo"></a><br>

        <nav class="transition-opacity">
            <button class="" onclick="window.location.href='panier.php';">Panier</button>
            <button class="" onclick="window.location.href='connexion.html';">Mon compte</button>
            <br><br>
        </nav>

    </header>
<hr>
    
    
<main class="transition-opacity">


<?php
session_id("sess");
session_cache_expire(2);
session_start();

$servername = "localhost";
$username = "root"; 
$password = "Nanterre2021*";
$database="Vente_chaussures";


$conn=mysqli_connect($servername,$username,$password,$database);
if (!$conn){
    die("Connexion échoué:".mysqli_connect_error);
}


$nom=$_GET['nom'];//recup le nom du produit (ex: Air Force 1)
$requete="SELECT ID_produit,Prix,Descrip FROM Produits WHERE Nom LIKE '".$nom."' ";//selectionne les infos du produit
$requete2="SELECT ID_modele,Emplacement_img,Couleur FROM Modeles INNER JOIN Produits ON Modeles.Ref_produit=Produits.ID_produit WHERE Nom LIKE '".$nom."' LIMIT 1";//recup le lien du 1er modele du produit
$requete3="SELECT Emplacement_img,Couleur FROM Modeles INNER JOIN Produits ON Modeles.Ref_produit=Produits.ID_produit WHERE Nom LIKE '".$nom."' LIMIT 100 OFFSET 1";//recup les liens des autres modeles (sans le 1er)


$result=mysqli_query($conn,$requete);
$result2=mysqli_query($conn,$requete2);
$result3=mysqli_query($conn,$requete3);


//afficher les infos 
while($row = mysqli_fetch_assoc($result)) {
    $prix=$row["Prix"];
    $descrip=$row['Descrip'];
    $id_produit=$row['ID_produit'];
    echo"<br><br>";
}

$tab_color=array();//tableau qui va contenir toutes les couleurs de la paire selectionee


//affichage du 1er modele (modele principale tant qu'aucun autre n'est selectionne)
while($row2 = mysqli_fetch_assoc($result2)) {
    array_push($tab_color,$row2['Couleur']);//on ajt la couleur du 1er modele
    echo'
<figure><img src="'.$row2['Emplacement_img'].'" alt="image1" id="modele1" ">
<figcaption><h1><u>'.$nom.'</u></h1></figcaption>
</figure><br>';
}


echo "<h3><u>Autres couleurs</u></h3>";
$i=2;//donne le numero du modele pour la fonction changerimage() et commence a 2 car on ne prend pas le 1er modele ici

//affiche les autres modeles en dessous de celui de base
while($row3=mysqli_fetch_assoc($result3)){
    array_push($tab_color,$row3['Couleur']);//on ajt les couleurs des autres modeles
    echo"<img onclick='changerimage(".$i.")' src='".$row3['Emplacement_img']."' id='modele".$i."' class='autre' >";
    $i++;
}





//Affichage des infos pratiques
echo"<br><br><br>
<h2><u>Prix:</u> </h2><p>".$prix."€</p> <br><br>
<h2><u>Description:</u> </h2><p>".$descrip."</p><br><br>";



   echo'<form action="page ajoutPanierTemp.php" method="post">

   <input type="hidden" name="produit" value="'.$nom.'">
   <input type="hidden" name="id_produit" value="'.$id_produit.'">
    
    <label for="tailles"></label>
    <select id="tailles" name="tailles" required>
        <option>Taille</option>';
        for ($i=36;$i<=45;$i++){
            echo'<option value='.$i.'>'.$i.'</option>';
        }
    echo'</select><br><br>

    
    <label for="couleurs"></label>
    <select id="couleurs" name="couleurs" required>
    <option>Couleur</option>';

    $id_modele=1;
    foreach($tab_color as $couleur){
    echo'<option value='.$couleur.'>'.$couleur.'</option>';
    $id_modele++;
    }
    echo"</select><br><br>";

    echo'<button type="submit" name="ajout" id="ajout">Ajouter au panier</button>
    </form><br><br>';



mysqli_close($conn);

?>


</main>
    <footer class="transition-opacity">
        <div>
            <ul id="serviceclients">
                <h3>Service Clients</h3>
                <li><a href="">Retours Produits</a></li>
                <li><a href="mailto:contact@snkrshop.fr ?subject=Demande client">Nous contacter</a></li>
                <li><a href="">Suivi de commande</a></li>
            </ul>


            <ul id="reseauxsociaux">
                <h3>Réseaux sociaux</h3>
                <li><a href="https://m.facebook.com/SNKRSHOPEU/"><svg class="Icon" focusable="false" viewBox="0 0 24 24"><path d="M22.68 0H1.32A1.32 1.32 0 000 1.32v21.36A1.32 1.32 0 001.32 24h11.5v-9.28H9.7v-3.63h3.13V8.4c0-3.1 1.9-4.79 4.66-4.79.93 0 1.86.05 2.79.15V7h-1.9c-1.51 0-1.8.7-1.8 1.76v2.31h3.6l-.48 3.63h-3.15V24h6.13A1.32 1.32 0 0024 22.68V1.32A1.32 1.32 0 0022.68 0z"></path></svg></a></li>
                <li><a href="https://www.instagram.com/SNKRSHOPEU/"><svg class="Icon" focusable="false" viewBox="0 0 24 24"><path d="M12 2.16c3.2 0 3.58.01 4.85.07 1.17.06 1.8.25 2.23.42.56.21.96.47 1.38.9.42.41.68.81.9 1.37.16.43.35 1.06.4 2.23.07 1.27.08 1.65.08 4.85 0 3.2-.01 3.58-.07 4.85a6.64 6.64 0 01-.42 2.23c-.21.56-.47.96-.9 1.38a3.7 3.7 0 01-1.37.9c-.43.16-1.06.35-2.23.4a83.4 83.4 0 01-4.85.08c-3.2 0-3.58-.01-4.85-.07a6.64 6.64 0 01-2.23-.42 3.72 3.72 0 01-1.38-.9 3.71 3.71 0 01-.9-1.37 6.64 6.64 0 01-.4-2.23A83.35 83.35 0 012.15 12c0-3.2.01-3.58.07-4.85.06-1.17.25-1.8.42-2.23.21-.56.47-.96.9-1.38.41-.42.81-.68 1.37-.9a6.64 6.64 0 012.23-.4c1.27-.07 1.65-.08 4.85-.08zM12 0C8.74 0 8.33.01 7.05.07a8.8 8.8 0 00-2.91.56c-.79.3-1.46.72-2.13 1.38A5.88 5.88 0 00.63 4.14a8.8 8.8 0 00-.56 2.91A84.87 84.87 0 000 12c0 3.26.01 3.67.07 4.95a8.8 8.8 0 00.56 2.91c.3.79.72 1.46 1.38 2.13a5.88 5.88 0 002.13 1.38c.76.3 1.64.5 2.91.56 1.28.06 1.7.07 4.95.07 3.26 0 3.67-.01 4.95-.07a8.8 8.8 0 002.91-.56c.79-.3 1.46-.72 2.13-1.38a5.88 5.88 0 001.38-2.13c.3-.76.5-1.64.56-2.91.06-1.28.07-1.7.07-4.95 0-3.26-.01-3.67-.07-4.95a8.8 8.8 0 00-.56-2.91A5.88 5.88 0 0022 2 5.88 5.88 0 0019.86.63c-.76-.3-1.64-.5-2.91-.56A84.87 84.87 0 0012 0zm0 5.84a6.16 6.16 0 100 12.32 6.16 6.16 0 000-12.32zM12 16a4 4 0 110-8 4 4 0 010 8zm7.85-10.4a1.44 1.44 0 11-2.88 0 1.44 1.44 0 012.88 0z"></path></svg></a></li>
                <li><a href="https://twitter.com/SNKRSHOPEU"><svg class="Icon" aria-hidden="true" viewBox="0 0 24 24"><path d="M7.54 21.52c9.06 0 14.01-7.52 14.01-14.02v-.63c.95-.7 1.79-1.57 2.45-2.56-.88.4-1.83.66-2.83.78a4.95 4.95 0 002.17-2.73c-.95.57-2.01.97-3.13 1.2a4.92 4.92 0 00-8.4 4.49C7.72 7.85 4.1 5.88 1.66 2.9A4.93 4.93 0 003.2 9.48a4.98 4.98 0 01-2.23-.61v.06c0 2.39 1.7 4.38 3.95 4.83a4.8 4.8 0 01-2.22.1 4.92 4.92 0 004.6 3.41A9.88 9.88 0 010 19.32a14 14 0 007.54 2.2z"></path></svg></a></li>
            </ul>

            <ul id="legal">
                <h3>Légal</h3>
                <li><a href="">Conditions Générales de Vente</a></li>
                <li><a href="">Confidentialité et cookies</a></li>
                <li><a href="">Droit légal de rétractation</a></li>

            </ul>

        </div>
        
        <hr>

    <p>© 2023 SNKRSHOP.fr, Inc. Tous droits réservé</p>
    </footer>

    <script src="fonctions.js"></script>
</body>
</html>
