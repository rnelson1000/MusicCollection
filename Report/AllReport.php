<?php

require_once "IReport.php";


class AllReport implements  IReport
{
    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function GetReportData()
    {
        $query = "SELECT artist.name AS Artist, album.name AS Album, song.tracknumber AS Track, song.title AS Title
                  FROM song
                  JOIN album ON song.album_id = album.id
                  JOIN artist ON album.artist_id = artist.id
                  ORDER BY artist.name, album.name, song.tracknumber";

        $stmt = $this->db->prepare($query);

        $stmt->execute();

        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $results;
    }
}

?>