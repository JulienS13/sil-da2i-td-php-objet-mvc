<section>
    <h2>Acteurs principaux</h2>
    <div class="row">
    	<?php
	    foreach ($data['actorInFilmImage'] as $key => $image) {
	        echo '<figure>
	            <img width="180" height="254" src="' . $image['chemin'] . '" alt="$image["legende"]">
	            <figcaption>' . $image["legende"] . '</figcaption>
	        </figure>';
	    }
	    ?>
	</div>
</section>