
<?php
   
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $date_n = $_POST['dateN'];
    $adresse = $_POST['adresse'];
    $email = $_POST['email'];
    $tel = $_POST['tel'];
    $mdp = $_POST['mdp'];

   /* echo "INFOS DU FORMULAIRE <br>";

    echo "<br>nom: ".$nom."<br>";
    echo "prenom: ".$prenom."<br>";
    echo "date_n: ".$date_n."<br>";
    echo "adresse: ".$adresse."<br>";
    echo "email: ".$email."<br>";
    echo "tel: ".$tel."<br>";
    echo "mdp: ".$mdp."<br>";*/
    


    // Connexion à la base de données MySQL
    $servername = "localhost";
    $username = "root"; 
    $password = "Nanterre2021*";
    $dbname = "vente_chaussures";
    
    // Création de la connexion
    $conn = mysqli_connect($servername, $username, $password, $dbname);
    
    // Vérification de la connexion
    if (!$conn) {
        die("Connexion échouée : " . mysqli_connect_error());
    }


    //verif que ce client n'a pas deja un compte
    $requete="SELECT Email FROM Clients";
    $result=mysqli_query($conn, $requete);
    $verif=true;
    while($row = mysqli_fetch_assoc($result)){
        if ($row['Email']==$email){
            echo"<p>Ce client possède déjà un compte, cliquez sur le bouton Se connecter</p><br><br>";
            echo'<a href="connexion.html"><button>Se connecter</button></a>';
            $verif=false;
            break;
        }
    }

    if ($verif==true){//Si l'adresse mail n'est pas présente dans la BD, on cree le compte
        // Requetes necessaires
        $requete2="INSERT INTO Paniers(ID_panier) VALUES(NULL)";//on cree un nouveau panier
        $result2=mysqli_query($conn,$requete2);
        

        $requete3="SELECT ID_panier FROM Paniers";//on recup son ID
        $result3=mysqli_query($conn,$requete3);
        while($row2=mysqli_fetch_assoc($result3)){//on parcourt tous les ID présents dans Paniers et on garde le dernier (car bug avec fonction MAX en SQL)
            $ref_panier=$row2['ID_panier'];
        }
        

        //On cree un nouveau client avec toutes les infos necessaires y compris sa ref_panier recuperee ci dessus
        $requete4="INSERT INTO Clients (Nom,Prenom,Date_n,Adresse,Email,Tel,Mdp,Ref_panier) VALUES ('".$nom."','".$prenom."','".$date_n."','".$adresse."','".$email."','".$tel."','".$mdp."','".$ref_panier."')";
        $result4=mysqli_query($conn,$requete4);
        if (mysqli_affected_rows($conn) > 0) {
            echo "<p>Le compte a été créé avec succès.</p>";
        } else {
            echo "<p>Il y a eu un problème. Réessayez.</p>";
        }

        echo'<a href="index.php"><button>Retour accueil</button></a>';


    }
    
        
   
    // Fermeture de la connexion
    mysqli_close($conn);


?>
