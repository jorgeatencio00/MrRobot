<?php include "mr_robot.php";


 
$q1 = $mysqli->query("SELECT game_log.Genre, COUNT(*) AS magnitude FROM game_log GROUP BY game_log.Genre ORDER BY magnitude DESC LIMIT 1");

while($row = $q1->fetch_assoc())
	$f1 = $row['Genre'];


$q2 = $mysqli->query("ALTER VIEW recGame AS SELECT video_games.Title, video_games.Developer_Name, video_games.Publisher_Name, video_games.Reviews, video_games.ESRB_Rating, video_games.Platform, video_games.Release_Date, video_games.Price, video_games.Genre FROM video_games LEFT JOIN game_log ON video_games.Title = game_log.Title WHERE game_log.Title IS NULL");
$q3 = $mysqli->query("ALTER VIEW recGame2 AS SELECT recGame.Title, recGame.Developer_Name, recGame.Publisher_Name, recGame.Reviews, recGame.ESRB_Rating, recGame.Platform, recGame.Release_Date, recGame.Price, recGame.Genre FROM recGame WHERE recGame.Genre LIKE '%$f1%'");

$q4 = $mysqli->query("SELECT * FROM recGame2 ORDER BY Reviews DESC LIMIT 3");

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

while($row = $q4->fetch_assoc())
{
	$result .= '<tr>';
    	$result .= '<th><div align="left"><span class="font">'.$row['Title'].'</span></div></th>';
    	$result .= '<td><div align="left"><span class="font">'.$row['Publisher_Name'].'</span></div></td>'; 
    	$result .= '<th><div align="left"><span class="font">'.$row['Developer_Name'].'</span></div></th>'; 
    	$result .= '<th><div align="left"><span class="font">'.$row['Reviews'].'</span></div></th>';
    	$result .= '<th><div align="left"><span class="font">'.$row['ESRB_Rating'].'</span></div></th>';
    	$result .= '<th><div align="left"><span class="font">'.$row['Platform'].'</span></div></th>';
    	$result .= '<th><div align="left"><span class="font">'.$row['Release_Date'].'</span></div></th>';
    	$result .= '<th><div align="left"><span class="font">'.$row['Price'].'</span></div></th>';
    	$result .= '<th><div align="left"><span class="font">'.$row['Genre'].'</span></div></th>';
    	$result .= '</tr>';
}

	$result .= '</table>';
	echo $result;
?>
