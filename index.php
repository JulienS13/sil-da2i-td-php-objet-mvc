<?php
require_once('function.php');
$data = array();
?>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <title>Alien une histoire une philosophie</title>
</head>
<body>
    <main class="container">
        <?php getBlock("includes/header.php");?>
        <div class="row">
            <article>
                <?php getBlock('includes/filmsList.php', ['filmsList' => '']);?>
                <?php getBlock('includes/realisatorsList.php', ['realisatorsList' => '']);?>
                <?php getBlock('includes/actorsList.php', ['actorsList' => '']);?>
            </article>
        </div>
        <?php getBlock("includes/footer.php"); ?>
    </main>
</body>
</html>