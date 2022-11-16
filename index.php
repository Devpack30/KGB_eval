<?php
//---------------------------------Injection des fichiers inclus dans PHP---------------------
include "html\Header.html";
include "html\Body.html";
include "html\Footer.html";

//-------------------------------- Connexion base de donnée / Déclaration de session----------------------------------
session_start();
$bdd = new pdo('mysql:host=localhost;dbname=kgb_eval', 'root', '',);

//-------------------------------- Formulaire de saisie + alerte de saisie non valide (JavaScript) ----------------------------------
if (isset($_POST['envoi'])) {
    if (!empty($_POST['pseudo']) and !empty($_POST['mdp'])) {
        $pseudo = htmlspecialchars($_POST['pseudo']);
        $mdp = sha1($_POST['mdp']);

        $recupUser = $bdd->prepare('SELECT * FROM agent WHERE pseudo = ? AND mdp = ?');
        $recupUser->execute(array($pseudo, $mdp));

        if ($recupUser->rowCount() > 0) {
            $_SESSION['pseudo'] = $pseudo;
            $_SESSION['mdp'] = $mdp;
            $_SESSION['id'] = $recupUser->fetch()['pseudo'];
        } else {
            echo " <script> alert('Attention vous êtes sur un site officiel de la Fédération de RUSSIE '); window.location='index.php'</script>";
        }
    }
}
