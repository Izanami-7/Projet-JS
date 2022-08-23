<?php

require_once('connexion.php');
$linkpdo = connection();

$nb = $linkpdo->query('SELECT COUNT(*) as nb FROM chat');

$donnees = $nb->fetch();
$nb->closeCursor();
$nbe = $donnees["nb"] - 10;

if ($donnees["nb"] > 10) {
    $reponse = $linkpdo->query('SELECT * FROM chat ORDER BY chat.heure asc  LIMIT ' . $nbe . ', 10');
} else if ($donnees["nb"] == 0) {
    echo ("Salon Vide...");
    return false;
} else {
    $reponse = $linkpdo->query('SELECT * FROM chat ORDER BY chat.heure asc');
}

while ($donnees = $reponse->fetch()) {

    if ($donnees['auteur'] == $_GET["pseudo"]) {
?>
        <div class="d-flex align-items-baseline text-end justify-content-end mb-4">
            <div class="pe-2">
                <div class="card card-text d-inline-block p-2 px-3 m-1">
                    <?php echo $donnees['contenu'] ?>
                </div>

                <div class="small">
                    <?php
                    echo $donnees['auteur'];
                    ?>
                    <br>
                    <?php
                    echo substr($donnees['heure'], 0, -10);
                    ?>
                </div>
            </div>
        </div>

    <?php

    } else { ?>
        <div class="d-flex align-items-baseline mb-4">
            <div class="pe-2">
                <div class="card card-text d-inline-block p-2 px-3 m-1">
                    <?php echo $donnees['contenu'] ?>
                </div>
                <div class="small">
                    <?php
                    echo $donnees['auteur'];
                    ?>
                    <br>
                    <?php
                    echo substr($donnees['heure'], 0, -10);
                    ?>
                </div>
            </div>
        </div>

<?php
    }
}
?>