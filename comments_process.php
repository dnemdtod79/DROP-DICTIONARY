<?php
SESSION_START();
include_once('Connect.php');

if(empty($_POST['comment']) || empty($_SESSION['username'])){
?> <script> alert("Sorry, Something went wrong!"); window.history.back(); </script>
<?php
}
else{
	$escapedWord = mysqli_real_escape_string($conn, $_POST['word']);
	$escapedUsername = mysqli_real_escape_string($conn, $_SESSION['username']);
	$escapedComment = mysqli_real_escape_string($conn, $_POST['comment']);
	$escapedCID = mysqli_real_escape_string($conn, $_POST['commentID']);

	if($escapedCID == 0){

		$sql = " INSERT INTO comments (word, username, comment, date) VALUES ('{$escapedWord}', '{$escapedUsername}', '{$escapedComment}', NOW()) ";
		$result = mysqli_query($conn, $sql);
		if ($result == true){
			header("location: definitions.php?term=$escapedWord");
		}

	}

	else if($escapedCID > 0){
		$sql = " INSERT INTO comments (word, username, comment, parentNumber, date) VALUES ('{$escapedWord}', '{$escapedUsername}', '{$escapedComment}', '{$escapedCID}', NOW()) ";
		$result = mysqli_query($conn, $sql);
		if ($result == true){
			header("location: definitions.php?term=$escapedWord");
		}
	}
	
	else{
		print_r(mysqli_error($conn));
?> <script> alert("Sorry, Something went wrong!"); window.history.back(); </script>
<?php
	}
}

 ?>