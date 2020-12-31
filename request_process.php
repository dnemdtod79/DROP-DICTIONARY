<?php
SESSION_START();
include_once("Connect.php");

if(!isset($_SESSION['username'])){
?>
<script> alert("Please log in first to request definition."); window.history.back(); </script>
<?php
}
else{
	$escaped = array(
		'username' => mysqli_real_escape_string($conn, $_SESSION['username']),
		'word' => mysqli_real_escape_string($conn, $_POST['word'])
	);

	$sql_check = " SELECT word FROM definitions WHERE word = '{$escaped['word']}' ";
	$query_check = mysqli_query($conn, $sql_check);
	$num_check = mysqli_num_rows($query_check);
	if($num_check > 0){
?>	<script> alert("Word already defined."); window.history.back(); </script>
<?php
	}
	else{


	$sql_check_2 = " SELECT word FROM request WHERE word = '{$escaped['word']}' ";
	$query_check_2 = mysqli_query($conn, $sql_check_2);
	$num_check_2 = mysqli_num_rows($query_check_2);
	if($num_check_2 > 0){
?>	<script> alert("Word already requested."); window.history.back(); </script>
<?php
	}

	else{

	$sql = " INSERT INTO request (username, word, date) VALUES ('{$escaped['username']}', '{$escaped['word']}', NOW()) ";
	$result = mysqli_query($conn, $sql);
	if($result == true){
		header("location: requestALL.php");
	}
	else{
		?> <script>alert ("Looks like something went wrong! Please try later."); </script> <?php
	}

	}


	}
}

exit();

?>
