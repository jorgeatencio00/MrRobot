<?php include "mr_robot.php";

if(isset($_POST['search']))
	$field1 = $_POST['search'];

$query = $mysqli->query("SELECT * FROM video_games WHERE Title = '$field1'");

	$result = '<table border="0" cellpadding="6" cellspacing="6" class="curve">';
    	$result .= '<thead>';
    	$result .= '<tr>';
    	$result .= '<th> <div align="left"><span class="font">Title</span></div></th>';
    	$result .= '<th> <div align="right"><span class="font">Publisher Name</span></div></th>';
	$result .= '<th> <div align="left"><span class="font">Developer Name</span></div></th>';
	$result .= '<th> <div align="right"><span class="font">Reviews</span></div></th>';
	$result .= '<th> <div align="right"><span class="font">ESRB Rating</span></div></th>';
	$result .= '<th> <div align="left"><span class="font">Platform</span></div></th>';
	$result .= '<th> <div align="right"><span class="font">Release Date</span></div></th>';
	$result .= '<th> <div align="right"><span class="font">Price</span></div></th>';
	$result .= '<th> <div align="left"><span class="font">Genre</span></div></th>';
   	 $result .= '</tr>';
    	$result .= '</thead>';
while($row = $query->fetch_assoc())
{
		$result .= '<tr>';
    	$result .= '<th><div align="left"><span class="font">'.$row['Title'].'</span></div></th>';
		$result .= '<th><div align="left"><span class="font">'.$row['Publisher_Name'].'</span></div></th>'; 
    	$result .= '<th><div align="left"><span class="font">'.$row['Developer_Name'].'</span></div></th>'; 
    	$result .= '<th><div align="left"><span class="font">'.$row['Reviews'].'</span></div></th>';
		$result .= '<th><div align="left"><span class="font">'.$row['ESRB_Rating'].'</span></div></th>';
		$result .= '<th><div align="left"><span class="font">'.$row['Platform'].'</span></div></th>';
		$result .= '<th><div align="left"><span class="font">'.$row['Release_Date'].'</span></div></th>';
    	$result .= '<th><div align="left"><span class="font">'.$row['Price'].'</span></div></th>';
    	$result .= '<th><div align="left"><span class="font">'.$row['Genre'].'</span></div></th>';
		$result .= '</tr>';
		
		$f1 = $row['Title'];
    	$f2 = $row['Publisher_Name'];
		$f3 = $row['Developer_Name'];
		$f4 = $row['Reviews'];
		$f5 = $row['ESRB_Rating'];
		$f6 = $row['Platform'];
		$f7 = $row['Release_Date'];
		$f8 = $row['Price'];
		$f9 = $row['Genre'];

		$RG_query = $mysqli->query("INSERT INTO game_log VALUES ('$f1','$f2','$f3','$f4','$f5','$f6','$f7','$f8','$f9')");

}
$result .= '</table>';
echo $result;

?>
