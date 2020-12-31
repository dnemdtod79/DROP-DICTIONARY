<?php
SESSION_START();
include_once('ip.php');

if(isset($_SESSION['username'])){
?><script>
    alert("You are already logged in.");
    window.history.back();
  </script>
<?php
  }
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <title>Login | Drop Dictionary</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <link rel="stylesheet" href="css/L_C_css.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/search-bar.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="shortcut icon" href="img/favicon.ico">

    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>

    <style>
      .username-label{
        pointer-events: none;
      }

      .svg {
        margin-left: auto;
        max-width: 240px;
        width: 80%;
      }

      .wrong{
        padding: 0;
        font-weight: bold;
        font-size: 0.75rem;
        color: #dc3545 !important;
      }

    </style>
  <head>
  <body>

    <?php include_once('nav-bar.php'); ?>

    <div class="container-fluid">
      <div class="row no-gutter">
        <div class="col-12">
          <div class="d-flex align-items-center py-4">
            <div class="container">
              <div class="row">
                <div class="col-sm-11 col-md-8 col-lg-4 mx-auto">
                  <div class="col-12 text-center p-0 mt-1 mb-4">
                    <div class="col-4 col-md-4 mx-auto mb-2">
                      <img class="svg" src="img/internet-browser.svg" alt="Security Icon">
                    </div>
                    <h2 class="m-0">Login</h2>
                    <p class="font-80 mt-1">Welcome back :)</p>
                    <?php
                    if(isset($_GET['error'])){
                      if($_GET['error'] == "returnINP") {
                    ?>
                    <div class="wrong col-xl-9 mx-auto">
                      The username or password you just entered is incorrect. Please try again!
                    </div>
                    <?php
                      }
                    }
                    ?>
                  </div>
                  <form class="form-login" action="login_process.php" method="POST" data-toggle="validator" role="form">
                    <div class="form-label-group form-group">
                      <input type="text" id="inputUserame" class="form-control font-w-500" placeholder="Username" name="username" maxlength="20" required data-required-error="Please enter your username.">
                      <label for="inputUsername" class="username-label">Username</label>
                      <div class="help-block with-errors mt-1 ml-1"></div>
                    </div>

                    <div class="form-label-group form-group">
                      <input type="password" id="inputPassword" class="form-control font-w-500" placeholder="Password" name="password" required maxlength="20" data-required-error="Please enter your password.">
                      <label for="inputPassword">Password</label>
                      <div class="help-block with-errors mt-1 ml-1"></div>
                    </div>

                    <button class="btn btn-primary btn-block btn-designed mb-4" type="submit" id="submit">Sign in</button>
                    <hr>
                    <div class="link mt-3 px-2 text-center font-80">
                      Don't have account? <a href="signup.php">Sign up</a> now!
                    </div>

                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
