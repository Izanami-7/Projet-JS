<?php

require_once ('connexion.php');
$linkpdo = connection();

date_default_timezone_set('Europe/Paris');
$dateTime = date('Y-m-d H:i:') . sprintf('%09.6f', date('s') + fmod(microtime(true), 1));

//Préparation de la requête
$pdoStat = $linkpdo->prepare('INSERT INTO chat VALUES (null, :heure, :auteur, :contenu)');

$pdoStat->bindValue(':heure', $dateTime, PDO::PARAM_STR);
$pdoStat->bindValue(':auteur', $_GET['pseudo'], PDO::PARAM_STR);
$pdoStat->bindValue(':contenu', $_GET['msg'], PDO::PARAM_STR);

$execute = $pdoStat->execute();

if ($execute) {
    $message = "Votre message a été envoyé";
} else {
    $message = "Votre message n'a pas été envoyé";
}

echo $message;

?>

