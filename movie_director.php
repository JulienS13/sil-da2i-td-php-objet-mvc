<?php require_once ('function.php');?>
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
            <article class="row col-lg-9">
                <?php getBlock("includes/biographie_ridley.php"); ?>
                <?php getBlock("includes/filmographie_ridley.php"); ?>
            </article>
            <aside class="row col-lg-3">                
                <?php getBlock("includes/photo_ridley.php"); ?>
            </aside>
        </div>
        <?php getBlock("includes/footer.php"); ?>
    </main>
</body>
</html>