<?php
SESSION_START();
include_once("ip.php");

      $filtered = array(
        'username'=> mysqli_real_escape_string($conn, $_POST['username']),
        'password'=> mysqli_real_escape_string($conn, $_POST['password']),
        'email'=> mysqli_real_escape_string($conn, $_POST['email'])
      );
      
      $username_sql = " SELECT * FROM members WHERE username='{$filtered['username']}' ";
      $username_count = mysqli_query($conn, $username_sql);

      $email_sql = " SELECT * FROM members WHERE email='{$filtered['email']}' ";
      $email_count = mysqli_query($conn, $email_sql);

      if(empty($filtered['username']) || empty($filtered['password']) || empty($filtered['email'])){
?>    <script> alert("Sorry, Something went wrong! Please try again soon."); </script>
<?php
      }
      else if(!preg_match("/^([A-Za-z0-9._%+-]+)@([a-z0-9.-]+)\.([a-z]{1,10})$/", $filtered['email']) || strlen($filtered['username']) > 20){
?>    <script> alert("Sorry, Something went wrong! Please try again soon."); </script>
<?php
      }
      else if(strlen($filtered['password']) < 4 || strlen($filtered['password']) > 20 || !preg_match("/^\S*$/", $filtered['username'])){
?>    <script> alert("Sorry, Something went wrong! Please try again soon."); </script>
<?php
      }

      else{
        if(mysqli_num_rows($username_count) == 1){
          header("location: signup.php?error=TakenUN");
        }

        else if(mysqli_num_rows($email_count) == 1){
          header("location: signup.php?error=TakenEM");
        }

        else if(mysqli_num_rows($username_count) == 0 && mysqli_num_rows($email_count) == 0){
          $sql = " INSERT INTO members (username, password, email, date, IP) VALUES('{$filtered['username']}', '{$filtered['password']}', '{$filtered['email']}', NOW(), '{$_SESSION['ip']}') ";
          $result = mysqli_query($conn, $sql);
            if($result == true){
              $_SESSION['username'] = $filtered['username'];
              header("location: index.php");
            }
        }
    }
?>