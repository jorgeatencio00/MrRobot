<?php include "enter_delete_games.php";
$mysqli = NEW MySQLi('localhost', 'root', '', 'video_games');

$Title = $_POST['title'];
$Publisher = $_POST['pub'];
$Developer = $_POST['dev'];
$Review_Score = $_POST['reviews'];
$ESRB = $_POST['esrb'];
$Platforms = $_POST['platform'];
$Release_Date = $_POST['release'];
$Price = $_POST['price'];
$Genre = $_POST['genre'];

$sql = "INSERT INTO video_games (Title, Publisher_Name, Developer_Name, Reviews, ESRB_Rating, Platform, Release_Date, Price, Genre) 
	VALUES ('$Title', '$Publisher', '$Developer', '$Review_Score', '$ESRB', '$Platforms', '$Release_Date', '$Price', '$Genre')";

if(!mysqli_query($mysqli,$sql)) {
    echo 'Data not inserted';
} else {
    echo 'Data inserted';
}

$mysqli->close();
?>
