<?php
require_once "Database/Database.php";
require_once "Format/Format.php";
require_once "Report/AllReport.php";
require_once "Report/CountReport.php";
require_once "Report/GenreReport.php";

$config = parse_ini_file("Config/db.ini");

$db = Database::GetPDOConnection($config);

$reportDict = array( 'all'=> new AllReport($db),'genre'=>new GenreReport($db),'counts'=>new CountReport($db));

$reportChoice = $_REQUEST['choice'];  // all. genre, counts

if(array_key_exists($reportChoice, $reportDict))
{
    $report = $reportDict[$reportChoice];

    $data = $report->GetReportData();
    $report = null;

    echo Format::ConvertToHTML($data);
}

$db = null;
?>