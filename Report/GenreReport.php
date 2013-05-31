<?php

require_once "IReport.php";


class GenreReport implements IReport {

    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function GetReportData()
    {
        $query = "SELECT genre.name AS Genre, song.title AS Title, artist.name AS Artist
                  FROM song
                  JOIN album ON song.album_id = album.id
                  JOIN artist ON album.artist_id = artist.id
                  JOIN genre ON song.genre_id = genre.id
                  GROUP BY genre.id, song.title";

        $stmt = $this->db->prepare($query);

        $stmt->execute();

        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $results;
    }

}