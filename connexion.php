<?php
function connection()
{
    try {
        $pdo = new PDO("mysql:host=localhost;dbname=ajax", 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
        return $pdo;
    } catch (Exception $e) {
        die('Erreur :' . $e->getMessage());
    }
}

?>