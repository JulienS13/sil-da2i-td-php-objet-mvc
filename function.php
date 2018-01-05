<?php

function initDbConnection() {
    
    $mysqli = new mysqli('localhost', 'root', '', 'alien');
   
    /* Modification du jeu de résultats en utf8 */
    if (!$mysqli->set_charset("utf8")) {
        printf("Erreur lors du chargement du jeu de caractères utf8 : %s\n", $mysqli->error);
        exit();
    }

    return $mysqli;
}


function getBlock($file, $data = [])
{
	$db = initDbConnection();
    if ($db->connect_error) {
        die('Erreur de connexion (' . $mysqli->connect_errno . ') '. $mysqli->connect_error);
    } else {
        if (!empty($data)) {
            foreach ($data as $key => $value) {
                switch ($key) {
                    case 'movie':
                        $result = mysqli_query($db, "SELECT * FROM film where id = $value");
                        $data['movie'] = mysqli_fetch_all($result, MYSQLI_ASSOC)[0];
                        $result = mysqli_query($db, "SELECT chemin, legende FROM photo JOIN film_has_photo On photo.id = film_has_photo.id_photo WHERE role='affiche' AND id_film = " . $data['movie']['id']);
                        $data['filmImage'] = mysqli_fetch_all($result, MYSQLI_ASSOC)[0];
                        $result = mysqli_query($db, "SELECT * FROM photo JOIN film_has_photo On photo.id = film_has_photo.id_photo WHERE role='galerie' AND id_film = " . $data['movie']['id']);
                        $data['galerie'] = mysqli_fetch_all($result, MYSQLI_ASSOC);
                        $result = mysqli_query($db, "SELECT chemin, legende FROM photo JOIN personne_has_photo ON photo.id = personne_has_photo.id_photo JOIN film_has_personne ON personne_has_photo.id_personne = film_has_personne.id_personne JOIN film ON film_has_personne.id_film = film.id WHERE film.id = " . $data['movie']['id'] . " AND film_has_personne.role = 'realisateur'");
                        $data['realisateur'] = mysqli_fetch_all($result, MYSQLI_ASSOC)[0];
                        $result = mysqli_query($db, "SELECT chemin, legende FROM photo JOIN personne_has_photo ON photo.id = personne_has_photo.id_photo JOIN film_has_personne ON film_has_personne.id_personne = personne_has_photo.id_personne JOIN film ON film_has_personne.id_film = film.id WHERE film.id = " . $data['movie']['id'] . " AND film_has_personne.role <> 'acteur'");
                        $data['actorInFilmImage'] = mysqli_fetch_all($result, MYSQLI_ASSOC)[0];
                        break;
                    case 'person':
                        $result = mysqli_query($db, "SELECT * FROM personne JOIN personne_has_photo ON personne.id = personne_has_photo.id_personne JOIN photo on personne_has_photo.id_photo = photo.id WHERE personne.id = $value");
                        $data['person'] = mysqli_fetch_all($result, MYSQLI_ASSOC)[0];
                        $result = mysqli_query($db, "SELECT * FROM photo JOIN personne_has_photo ON personne_has_photo.id_photo = photo.id where id_personne = $value");
                        $data['actor'] = mysqli_fetch_all($result, MYSQLI_ASSOC)[0];
                        $result = mysqli_query($db, "SELECT * FROM photo JOIN personne_has_photo ON personne_has_photo.id_photo = photo.id where id_personne = $value");
                        $data['realisator'] = mysqli_fetch_all($result, MYSQLI_ASSOC)[0];
                        break;
                    case 'filmsList':
                        $result = mysqli_query($db, "SELECT * FROM film ORDER BY titre ASC");
                        $data['filmsList'] = mysqli_fetch_all($result, MYSQLI_ASSOC);
                        break;
                    case 'realisatorsList':
                        $result = mysqli_query($db, "SELECT * FROM personne JOIN film_has_personne ON personne.id = film_has_personne.id_personne WHERE role like 'realisateur' ORDER BY nom ASC");
                        $data['realisatorsList'] = mysqli_fetch_all($result, MYSQLI_ASSOC);
                        break;
                    case 'actorsList':
                        $result = mysqli_query($db, "SELECT * FROM personne JOIN film_has_personne ON personne.id = film_has_personne.id_personne WHERE role like 'acteur' ORDER BY nom ASC");
                        $data['actorsList'] = mysqli_fetch_all($result, MYSQLI_ASSOC);
                        break;
                }
            }
        }
    }
    include $file;
}
?> 