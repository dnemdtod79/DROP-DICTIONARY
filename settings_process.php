<?php 
SESSION_START();
include_once("Connect.php");

function getUserIpAddr(){
  if(!empty($_SERVER['HTTP_CLIENT_IP'])){
   //ip from share internet
   	$ip = $_SERVER['HTTP_CLIENT_IP'];
   }
   else if(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
    //ip pass from proxy
    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
   }
   else{
     $ip = $_SERVER['REMOTE_ADDR'];
   }
    return $ip;
  }

$_SESSION['ip'] = mysqli_real_escape_string($conn, getUserIpAddr());
$IPFiltered = $_SESSION['ip'];

$filtered_username = mysqli_real_escape_string($conn, $_SESSION['username']);

// 패스워드 편집;

if(isset($_POST['new_password'])){

		$sql = " SELECT password FROM members WHERE username = '{$filtered_username}' LIMIT 1 ";
		$result = mysqli_query($conn, $sql);
		$row = mysqli_fetch_array($result);

		$oldPasswordFromDB = mysqli_real_escape_string($conn, $row['password']);
		$newPassword = mysqli_real_escape_string($conn, $_POST['new_password']);
		$oldPassword = mysqli_real_escape_string($conn, $_POST['old_password']);
		$confirmPassword = mysqli_real_escape_string($conn, $_POST['confirm_password']);

	if($oldPassword = $oldPasswordFromDB && $newPassword = $confirmPassword){

		if(!empty($newPassword) && mb_strlen($newPassword, 'utf-8') < 20 && mb_strlen($newPassword, 'utf-8') > 4){

			$p_sql = " UPDATE members SET password = '{$newPassword}' WHERE username = '{$filtered_username}' ";
			$p_result = mysqli_query($conn, $p_sql);

			if($p_result == true){
	?>			<script> alert("Your password has been successfully changed."); location.replace("mypage.php"); </script>
	<?php
			}
		}

		else{
	?> <script> alert("Something went wrong, Sorry!"); window.history.back(); </script>
	<?php
		}

	 }

	else{
	?> <script> alert("Something went wrong, Sorry!"); window.history.back(); </script>
	<?php
	}

}

	// 이메일 편집;

	if(isset($_POST['n_email'])){

		$filtered_email = mysqli_real_escape_string($conn, $_POST['n_email']);

		if(!empty($filtered_email) && preg_match("/^([A-Za-z0-9._%+-]+)@([a-z0-9.-]+)\.([a-z]{1,10})$/", $filtered_email)){
			$check_sql = " SELECT * FROM members WHERE email = '{$filtered_email}' ";
			$check_result = mysqli_query($conn, $check_sql);
			$emailCount = mysqli_num_rows($check_result);

			if($emailCount == 1){
?>			<script> alert("email already taken!"); window.history.back(); </script>
<?php
			}

			else if($emailCount == 0){
				$e_sql = " UPDATE members SET email = '{$filtered_email}' WHERE username = '{$filtered_username}' ";
				$e_result = mysqli_query($conn, $e_sql);
				if($e_result == true){
		?>			<script> alert("Your email address has been successfully changed."); location.replace("mypage.php"); </script>
		<?php
				}
			}
		}

		else{
	?> <script> alert("Something went wrong, Sorry!"); window.history.back(); </script>
	<?php
		}
	}

	if(isset($_POST['delete'])){
		$sql = " INSERT INTO deleted (username, IP, date) VALUES('{$filtered_username}', '$IPFiltered', NOW()) ;";
		$sql .= " DELETE FROM members WHERE username = '{$filtered_username}' ;";
		$result = mysqli_multi_query($conn, $sql);
		if($result == true){
			SESSION_DESTROY();
?>			<script> alert("Your account has been successfully deleted. Sorry to see you go!"); window.location.replace("index.php"); </script>
<?php
		}
		else{
?>			<script> alert("Something went wrong! Please try again."); window.history.back(); </script>
<?php
		}
	}

// 로그인 안 했을 시

else{
?>	<script> alert("Something went wrong! Try again soon."); window.history.back(); </script>
<?php
}
?>