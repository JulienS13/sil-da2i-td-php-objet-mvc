<?php

class MovieController extends Controller {
    public static function display(int $movieId)
    {
        $movie = new Movie($movieId);
        $data['movie'] = $movie->getMovieInformation();
        $data['imagesOfFilm'] = $movie->getMoviePhotos();
        $data['realisateur'] = $movie->getDirector();
        $data['imagesOfActorsInFilm'] = $movie->getActorImages();
        $data['ajaxUrl'] = '' . _BASE_URL_ . 'asideAjax';

        return parent::loadTemplate('movieInformation', $data);
    }
}