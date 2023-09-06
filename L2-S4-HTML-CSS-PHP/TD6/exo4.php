<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>exo4.php</title>
</head>

<body>

    <h1>Ma liste de courses</h1>

    
        <?php
        session_start();
        


        if (!isset($_SESSION['elem'])) {
            $_SESSION['elem'] = array();
        }
        
        if (isset($_POST['item'])) {
            array_push($_SESSION['elem'], $_POST['item']);
        }

        echo "<ol>";
        foreach ($_SESSION['elem'] as $element) {
            echo "<li>" . $element . "</li>";
        }
        echo "</ol>";

        ?>

    <br><br><br>
    <a href="http://localhost/TD6/exo4.html"><button>Revenir au formulaire</button></a>

    <br><br><br><br>
    <a href="https://localhost/TD6/"><button>Répertoire TD6</button></a>
</body>

</html>