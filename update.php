<?php include "mr_robot.php";


if(isset($_POST['title']))
	$field1 = $_POST['title'];
if(isset($_POST['pub']))
	$field2 = $_POST['pub'];
if(isset($_POST['dev']))
	$field3 = $_POST['dev'];
if(isset($_POST['reviews']))
	$field4 = $_POST['reviews'];
if(isset($_POST['esrb']))
	$field5 = $_POST['esrb'];
if(isset($_POST['platform']))
	$field6 = $_POST['platform'];
if(isset($_POST['release']))
	$field7 = $_POST['release'];
if(isset($_POST['price']))
	$field8 = $_POST['price'];
if(isset($_POST['genre']))
	$field9 = $_POST['genre'];

$update = " UPDATE video_games SET Publisher_Name = '$field2', Developer_Name = '$field3', Reviews = '$field4', ESRB_Rating = '$field5', Platform = '$field6', Release_Date = '$field7', Price = '$field8', Genre = '$field9' WHERE Title = '$field1'";

if (mysqli_query($mysqli, $update)) {
      echo "Record updated successfully";
} else {
      echo "Error: " . $update . "<br>" . mysqli_error($mysqli);
}


?>
