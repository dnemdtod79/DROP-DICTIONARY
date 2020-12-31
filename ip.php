<?php
$conn = mysqli_connect("localhost", "dropdictionary", "JEONGEuN135!!", "dropdictionary");
if(!isset($_SESSION['ip']) && !isset($_SESSION['username'])){
  function getUserIpAddr(){
      if(!empty($_SERVER['HTTP_CLIENT_IP'])){
          //ip from share internet
          $ip = $_SERVER['HTTP_CLIENT_IP'];
      }else if(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
          //ip pass from proxy
          $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
      }else{
          $ip = $_SERVER['REMOTE_ADDR'];
      }
        return $ip;
  }
  $_SESSION['ip'] = mysqli_real_escape_string($conn, getUserIpAddr());
}
 ?>
