<h3>Films : </h3>
<p>
    <ul>
    <?php
        foreach ($data['filmsList'] as $key => $film) {
            echo "<li><a href='movie.php?filmId=" . $film['id'] . "'>" . $film['titre'] ."</a></li>";
        }
    ?>
    </ul>
</p>
