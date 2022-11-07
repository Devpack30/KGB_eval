<?php
include "html\Header.html";
include "html\Body.html";
include "html\Footer.html";


$bdd = new pdo('mysql:host=localhost;dbname=kgb_eval', 'root', '',);


if (isset($_POST['envoi'])) {
    if (!empty($_POST['pseudo']) and !empty($_POST['mdp'])) {
    } else {
        echo "Veuillez remplir tout les champs !!!";
    }
}
