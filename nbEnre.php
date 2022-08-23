<?php

require_once('connexion.php');
$linkpdo = connection();

$nb = $linkpdo->query('SELECT COUNT(*) as nb FROM chat');

$donnees = $nb->fetch();
$nb->closeCursor();
$nbe = $donnees["nb"];

echo $nbe;