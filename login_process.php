<?php
SESSION_START();
include_once("Connect.php");

$filtered = array(
  'username' => mysqli_real_escape_string($conn, $_POST['username']),
  'password' => mysqli_real_escape_string($conn, $_POST['password'])
);

if(empty($filtered['username']) || empty($filtered['password'])){
  header("location: login.php?error=emptyfields");
}

else{
$sql = "SELECT * FROM members WHERE username = '{$filtered['username']}' AND password = '{$filtered['password']}'";

$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);

if(mysqli_num_rows($result) == 1){
  $_SESSION['username'] = $filtered['username'];
  header("location: index.php");
}
else{
  header("location: login.php?error=returnINP");
}
  exit();
}
?>
