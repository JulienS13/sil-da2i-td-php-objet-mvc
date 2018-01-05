<article class="row col-lg-13">
    <img width=300 height=400 src="<?= $data['realisator']['chemin'] ?>" alt="<?= $data['realisator']['legende'] ?>"/>
    <div class="col col-lg-6">
        <h2><?= $data['realisator']['legende'] ?></h2>
        <h2>Biographie</h2>
        <p>
            <?= $data['person']['date de naissance'] ?>
        </p>
        <p>
            <?= $data['person']['biographie'] ?>
        </p>
    </div>
            