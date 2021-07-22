<?php include "mr_robot.php";

if(isset($_POST['search-developer']))
	$field1 = $_POST['search-developer'];


$DR_query = $mysqli->query("SELECT AVG(Reviews) FROM video_games WHERE Developer_Name = '$field1'");

$result = '<table border="0" cellpadding="6" cellspacing="6" class="curve">';
    	$result .= '<thead>';
    	$result .= '<tr>';
    	$result .= '<th> <div align="left"><span class="font">Average Developer Score</span></div></th>';
		$result .= '</tr>';
		$result .= '</thead>';
	
while($row = $DR_query->fetch_assoc())
{
    $result .= '<tr>';
    $result .= '<th><div align="left"><span class="font">'.$row['AVG(Reviews)'].'</span></div></th>';
    $result .= '</tr>';
}

$result .= '</table>';
echo $result;

?>
