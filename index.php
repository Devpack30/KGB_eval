<?php
include "html\Header.html";
include "html\Body.html";
include "html\Footer.html";
include "login.php";

try {
    $pdo_options[pdo::ATTR_ERRMODE] = pdo::ERRMODE_EXCEPTION;
    echo 'connexion réussi';
    $bdd = new pdo('mysql:host=localhost;dbname=kgb_eval', 'root', '', $pdo_options);
} catch (Exception $ex) {
    die("Erreur: " . $ex->getMessage());
}
