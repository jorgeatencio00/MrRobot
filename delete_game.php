<?php include "enter_delete_games.php";
$mysqli = NEW MySQLi('localhost', 'root', '', 'video_games');

$Title = $_POST['remove-game'];

$sql = "DELETE FROM video_games WHERE Title = '$Title'";

if(!mysqli_query($mysqli,$sql)) {
    echo 'Data not removed';
} else {
    echo 'Data removed';
}

$mysqli->close();
?>
