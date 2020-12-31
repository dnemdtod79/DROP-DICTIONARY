<?php
SESSION_START();
include_once("Connect.php");

$filtered_username = mysqli_real_escape_string($conn, $_SESSION['username']);

$sql = " SELECT password FROM members WHERE username = '{$filtered_username}' ";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);

echo htmlspecialchars($row['password']);
exit();

 ?>