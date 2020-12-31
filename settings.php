<?php
SESSION_START();
include_once('ip.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width", initial-scale="1">
  <title>Account settings | Drop Dictionary</title>

  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/nav.css">
  <link rel="stylesheet" href="css/search-bar.css">
  <link rel="stylesheet" href="css/default.css">
  <link rel="stylesheet" href="css/page-designed.css">
  <link rel="stylesheet" href="css/L_C_css.css">
  <link rel="shortcut icon" href="img/favicon.ico">

  <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
  <script src="js/bootstrap.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>

  <style>

  	body{
  		background-color: #b1d6da63 !important;
  	}

    label{
      pointer-events: none !important;
    }
    .fa-user-lock{
      font-size: 4.5rem;
      color: #0a3c7d;
    }

    .hidden{
      display: none !important;
    }

    ul.list-unstyled{
      margin-bottom: 0 !important;
    }

  </style>
</head>

<body>
  
  <?php include_once('nav-bar-searchbar-included.php'); ?>

  <div class="container">
      <div class="col-12 px-3">
        <div class="card mt-3 box-shadow">
        	<div class="col-12 p-0 text-right">
              <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                  <a class="nav-link font-90" href="mypage.php" role="tab">Profile</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active font-90" href="settings.php" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Settings</a>
                </li>
              </ul>
            </div>

            <?php 
            if(!isset($_SESSION['username'])){

              echo "<div class='card-body p-4 mx-auto my-md-2'>";

              echo "<p class='text-center font-120 font-w-400'>Please <a href='login.php'>log in</a> to update your account settings.</p>";
              echo "<div class='text-center'><i class='fas fa-user-lock'></i></div>";

              echo "</div>";

            }

            else{
            ?>
            <div class="card-body p-4 col-md-10 mx-auto my-md-2">

            <form id="ChangePasswordForm" action="settings_process.php" method="POST" data-toggle="validator" role="form">
              
               <h5 class="mb-3">Change Password</h5>

               <div class="form-label-group form-group">
                   <input type="password" class="form-control" placeholder="Current password" id="old_password" name="old_password" maxlength="20" required>
                <label for="old_password">Current password</label>
                <div class="mt-1 mx-1 hidden font-80 font-w-700 text-danger" id="not_current">Your current password isn't correct. Please try again.</div>
              </div>

               <div class="form-label-group form-group">
                   <input type="password" id="new_password" class="form-control" placeholder="New password" name="new_password" required maxlength="20" data-minlength="4" data-error="Password should be more than 4 characters." data-required-error="Please enter your password.">
                <label for="new_password">New password</label>
                <div class="help-block with-errors mt-1 mx-1"></div>
              </div>

               <div class="form-label-group form-group">
                <input type="password" id="confirm_password" name="confirm_password" class="form-control" placeholder="Confirm password" required maxlength="20" data-minlength="4" data-error="Password should be more than 4 characters." data-required-error="Please enter your confirm password.">
                <label for="confirm_password">Confirm new password</label>
                <div class="help-block with-errors mt-1 mx-1"></div>
                <div class="mt-1 mx-1 hidden font-80 font-w-700" id="not_match">Your new password and confirm password do not match.</div>
              </div>
              <button class="btn btn-warning btn-block btn-designed" id="pw_btn" type="submit">Change password</button>
            </form>

            <form class="mt-3" action="settings_process.php" method="POST" data-toggle="validator" role="form">
              <hr class="my-4">
               <h5 class="mb-3">Change Email</h5>
               <div class="form-label-group form-group">
                  <input type="text" pattern="[A-Za-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{1,10}$" id="inputEmail" class="form-control" placeholder="Email address" name="n_email" data-required-error="Please enter your email address." data-pattern-error="Invalid email address." required>
                  <label for="inputEmail">Email address</label>
                  <div class="help-block with-errors ml-2 mt-1"></div>
               </div>

               <button class="btn btn-warning btn-block btn-designed" type="submit">Change email</button>

              </form>


              <hr class="my-4">
              <h5 class="mb-3">Delete account</h5>
              <form action="settings_process.php" method="POST" onclick="return confirm('If you delete your account, You won\'t be able to reactivate it later. You sure about this?')">
                <button class="btn btn-danger btn-block btn-designed" name="delete">Delete account</button>
              </form>
            </div>

            </div>
            <?php
            }
            ?>
      </div>
  </div>

  <?php include_once('footer.php'); ?>
  
<script src="js/search.js"></script>
<script src="js/passwordSetting.js"></script>
</body>
</html>
