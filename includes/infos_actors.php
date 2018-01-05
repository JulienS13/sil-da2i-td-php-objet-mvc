<article class="row col-lg-13">
    <img width=300 height=400 src="<?= $data['actor']['chemin'] ?>" alt="<?= $data['actor']['legende'] ?>"/>
    <div class="col col-lg-6">
    <h2><?= $data['actor']['legende'] ?></h2>
        <h2>Biographie</h2>
        <p>
            <?= $data['person']['date de naissance'] ?>
        </p>
        <p>
            <?= $data['person']['biographie'] ?>
        </p>
    </div>
            