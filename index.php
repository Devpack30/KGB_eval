<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KGBD</title>
</head>

<body>

    <?php
    //---------------------------------Injection des fichiers inclus dans PHP---------------------
    include "html\Header.php";
    include "html\Body.php";
    include "html\Footer.php";

    //-------------------------------- Connexion base de donnée / Déclaration de session----------------------------------
    session_start();
    define("DBHOST", "localhost");
    define("DBUSER", "root");
    define("DBPASS", "");
    define("DBNAME", "kgb_eval");

    // DSN de connexion
    $bdd = "mysql:dbname=" . DBNAME . ";host=" . DBHOST;

    //Connexion à la base
    try {
        // instancier PDO
        $db = new pdo($bdd, DBUSER, DBPASS);

        // Envoyer les données en UTF-8
        $db->exec("SET NAMES utf8");

        // Définition du mode "fetch" par défaut
        $db->setAttribute(pdo::ATTR_DEFAULT_FETCH_MODE, pdo::FETCH_ASSOC);

        // En cas d'erreur de connexion à la BDD
    } catch (pdoException $e) {
        die("Error:" . $e->getMessage());
    }

    // //-------------------------------- Fonction bouton envoi formulaire de saisie + alerte de saisie non valide (JavaScript) ----------------------------------
    if (isset($_POST['envoi'])) {
        if (!empty($_POST['pseudo']) and !empty($_POST['mdp'])) {
            $pseudo = htmlspecialchars($_POST['pseudo']);
            $mdp = sha1($_POST['mdp']);

            $recupUser = $recup->prepare('SELECT * FROM agent WHERE pseudo = ? AND mdp = ?');
            $recupUser->execute(array($pseudo, $mdp));

            if ($recupUser->rowCount() > 0) {
            } else {
                echo "Erreur";
            }
            $_SESSION['pseudo'] = $pseudo;
            $_SESSION['mdp'] = $mdp;
            $_SESSION['id'] = $recupUser->fetchall()['id'];
        } else {
            echo " <script> alert('Attention vous êtes sur un site officiel de la Fédération de RUSSIE !!! '); window.location='index.php'</script>";
        }
    }

    //  Récupération liste agent
    $sql = "SELECT * FROM `agent`";

    // Executer en direct
    $recup = $db->query($sql);

    // Récuperation des données
    $user = $recup->fetchAll();
    echo "<pre>";
    var_dump($user);
    echo "</pre>"; ?>

</body>

</html>