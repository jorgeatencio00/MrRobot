<?php include "mr_robot.php";

if(isset($_POST['search-location']))
	$field1 = $_POST['search-location'];


$q1 = $mysqli->query("ALTER VIEW Game AS SELECT Title, Publisher_Name, Developer_Name FROM video_games WHERE video_games.Title = '$field1'");
$q2 = $mysqli->query("SELECT Game.Title, publishers.P_Location, developers.D_Location FROM ((Game INNER JOIN publishers ON Game.Publisher_Name = publishers.Publisher_Name) INNER JOIN developers ON Game.Developer_Name = developers.Developer_Name)");

	$result = '<table border="0" cellpadding="6" cellspacing="6" class="curve">';
    	$result .= '<thead>';
    	$result .= '<tr>';
    	$result .= '<th> <div align="left"><span class="font">Title</span></div></th>';
    	$result .= '<th> <div align="left"><span class="font">Publisher Location</span></div></th>';
	$result .= '<th> <div align="left"><span class="font">Developer Location</span></div></th>';
	$result .= '</tr>';
	$result .= '</thead>';
	
while($row = $q2->fetch_assoc())
{
    $result .= '<tr>';
    $result .= '<th><div align="left"><span class="font">'.$row['Title'].'</span></div></th>';
    $result .= '<th><div align="left"><span class="font">'.$row['P_Location'].'</span></div></th>'; 
    $result .= '<th><div align="left"><span class="font">'.$row['D_Location'].'</span></div></th>'; 
    $result .= '</tr>';
}

$result .= '</table>';
echo $result;



?>
