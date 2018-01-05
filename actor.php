<?php require_once ('function.php');

if (!empty($_GET['personId'])) {
    $personId = (int)$_GET['personId'];
} else {
    header("HTTP/1.0 404 Not Found");
    echo '<h1>404 Not Found</h1>';
    die;
}
$data = array();
?>
<!doctype html>
<html lang="fr"> 
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <title>Alien une histoire une philosophie</title>
</head>
<body>
    <main class="container">
        <?php getBlock("includes/header.php"); ?>
        <div class="row">
            <?php getBlock("includes/infos_actors.php", ['person' => $personId]); ?>
        </div>
        <?php getBlock("includes/footer.php"); ?>
    </main>
</body>
</html>