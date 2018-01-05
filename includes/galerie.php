<section id="galerie">
    <h2>Galerie d'images</h2>
    <div id="galerie">
		<?php
		foreach ($data['galerie'] as $key => $image) {
			echo '<figure>
			    <img width="180" height="254" src="' . $image['chemin'] . '" alt="$image["legende"]">
			    <figcaption>' . $image["legende"] . '</figcaption>
			</figure>';
		}
		?>
	</div>
</section>
</article>