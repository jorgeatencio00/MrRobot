<?php

$mysqli = NEW MySQLi('localhost', 'root', '', 'video_games');

//$resultSet = $mysqli->query("SELECT DISTINCT Genre FROM video_games");
$resultSet2 = $mysqli->query("SELECT DISTINCT ESRB_Rating FROM video_games");

?>

<html>
<body text = "black">
	<p>Select a genre:</p>
	<p>(Hold control to select multiple genres)</p>
</body>
<!--genre dropmenu -->
<div class = "GameFilters" id = "Filters">
<form action ="query.php" method = "POST">
<div class = "Menu1" id = "Menu1">
<select id = "genres" name = "genres" multiple size = 6>
	<option value = "shooter">Shooter</option>
	<option value = "survival">Survival</option>
	<option value = "puzzle">Puzzle</option>
	<option value = "rpg">RPG</option>
	<option value = "mmo">MMO</option>
	<option value = "adventure">Adventure</option>
</select>
</div>
<!-- platform menu -->
<body text = "black">
	<p>Select a platform:</p>
	<p>(Hold control to select multiple platforms)</p>
</body>
<div class = "Menu2" id = "Menu2">
<select id = "platforms" name = "platforms" multiple size = 6>
	<option value = "Xbox One">Xbox One</option>
	<option value = "Xbox 360">Xbox 360</option>
	<option value = "PlayStation 4">PlayStation 4</option>
	<option value = "PlayStation 3">PlayStation 3</option>
	<option value = "Nintendo Switch">Nintendo Switch</option>
	<option value = "Wii U">Wii U</option>
	<option value = "PC">PC</option>
	<option value = "iOS">iOS</option>
	<option value = "Android">Android</option>
</select>
</div>
<body text = "black">
	<p>Select an ESRB Rating:</p>
</body>
<!--esrb dropmenu -->
<div class = "Menu3" id = "Menu3">
<select id = "esrb_rating" name = "esrb_rating">
<?php
while($rows = $resultSet2->fetch_assoc())
{
	$ESRB= $rows['ESRB_Rating'];
	echo "<option value = '$ESRB'>$ESRB</option>";
}
?>
</select>
</div>
<!-- search using selected options>
<!-- find game button -->
<body>
	<p></p>
		<div>
		<input type = 'submit' name = 'find_games' value = 'Find Games'>
		</div>
	<p>Or, find a specific game:</p>
	<!-- goes to search.php on search -->
</form>
</div>
<form action ="search.php" method = "POST">
		<input type = "text" name = "search" placeholder = "Search">
		<button type = "submit" name = "submit-search">Find Game</button>
</form>
<form action ="search-location.php" method = "POST">
	<p>Find where a game was made:</p> 
	<input type = "text" name = "search-location" placeholder = "Search">
	<input type = "submit" name = "remove" value = "Find location">
</form>
<form action ="developer_rating.php" method = "POST">
	<p>Developer scores:</p>
	<input type = "text" name = "search-developer" placeholder = "Search">
	<input type = "submit" name = "remove" value = "Find rating">
</form>
<form action ="update_game.php" method = "POST">
		<input type = "submit" name = "update" value = "Update a game">
</form>
<form action ="enter_delete_games.php" method = "POST">
	<input type = "submit" name = "remove" value = "Insert or remove games">
</form>
<form action = "recommended.php" method = "POST">
	<input type = "submit" name = "rec" value = "Recommend me a game">
</form>
</form>
</body>
</html>
