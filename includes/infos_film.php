<article class="row col-lg-9">
    <figure>
        <img width=300 height=400 src="<?= $data['filmImage']['chemin'] ?>" alt="<?= $data['filmImage']['legende'] ?>"/>
        <figcaption><?= $data['filmImage']['legende'] ?></figcaption>
    </figure>
    <div class="col col-lg-6">
        <h2>Informations</h2>
        <p>
            Sortie le <time><?= date('d/m/Y', strtotime($data['movie']['dateDeSortie'])); ?></time> avec Sigourney Weaver, Tom Skerritt, Veronica Cartwright,...
        </p>
        <h2><meter min="0" max="5" value="<?= $data['movie']['note'] ?>"><?= $data['movie']['note'] ?></meter></h2>
        <h2>Synopsis</h2>
        <p>
            <?= $data['movie']['synopsis'] ?>
        </p>
    </div>
    <?php include("includes/galerie.php");?>
            
            <aside class="row col-lg-3">
                <?php include("models/Director.php"); ?>
                <?php include("includes/acteurs_principaux.php"); ?>
            </aside>