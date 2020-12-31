<?php
SESSION_START();
if(isset($_SESSION['username'])){
$destroy = SESSION_DESTROY();
    if($destroy == true){
?>
  <script> alert("Logged out!"); location.replace("index.php"); </script>
<?php
    }
      else{
?>  <script> alert("Something went wrong! Please try again."); location.replace("index.php"); </script>
<?php
      }
}
else{
?>  <script> alert("Please log in first."); location.replace("index.php"); </script>
<?php
}
 ?>
