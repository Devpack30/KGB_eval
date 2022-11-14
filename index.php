<?php
//---------------------------------Injection des fichiers inclus dans PHP---------------------
include "html\Header.html";
include "html\Body.html";
include "html\Footer.html";

//-------------------------------- Connexion base de donnée ----------------------------------
$bdd = new pdo('mysql:host=localhost;dbname=kgb_eval', 'root', '',);

//-------------------------------- Formulaire de saisie + alerte de saisie non valide (JavaScript) ----------------------------------
if (isset($_POST['envoi'])) {
    if (!empty($_POST['pseudo']) and !empty($_POST['mdp'])) {
    } else {
        echo " <script> alert('Attention vous êtes sur un site officiel de la Fédération de RUSSIE '); window.location='index.php'</script>";
    }
}
