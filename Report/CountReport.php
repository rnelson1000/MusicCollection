<?php
require_once "IReport.php";

class CountReport implements IReport{

    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function GetReportData()
    {
        $albumCounts = $this->getAlbumCount();
        $songCounts = $this->getSongCount();

        $counts = array_merge_recursive($albumCounts, $songCounts);

        $result = array();

        foreach( $counts as $artist=>$row )
        {
            $result[] = array( 'Artist'=>$artist, 'AlbumCount'=>$row['AlbumCount'], 'SongCount'=>$row['SongCount'] );
        }

        return $result;
    }

    private function GetAlbumCount()
    {
        $query = "SELECT artist.name AS Artist, COUNT(*) AS AlbumCount
                  FROM album
                  JOIN artist ON album.artist_id = artist.id
                  GROUP BY artist.name";

        $stmt = $this->db->prepare($query);

        $stmt->execute();

        $results = array();

        while($row = $stmt->fetch(PDO::FETCH_ASSOC))
        {
            $results[$row['Artist']] = array('AlbumCount'=>$row['AlbumCount']);
        }

        return $results;
    }

    public function GetSongCount()
    {
        $query = "SELECT artist.name AS Artist, COUNT(*) AS SongCount
                  FROM song
                  JOIN album ON song.album_id = album.id
                  JOIN artist ON album.artist_id = artist.id
                  GROUP BY artist.name";

        $stmt = $this->db->prepare($query);

        $stmt->execute();

        $results = array();

        while($row = $stmt->fetch(PDO::FETCH_ASSOC))
        {
            $results[$row['Artist']] = array('SongCount'=>$row['SongCount']);
        }

        return $results;
    }
}