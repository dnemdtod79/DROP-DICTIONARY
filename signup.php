<?php
SESSION_START();
include_once('ip.php');

if(isset($_SESSION['username'])){
?><script>
    alert("You've already signed up!");
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
    <title>Sign up | Drop Dictionary</title>

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="stylesheet" href="css/D_S_css.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/search-bar.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="shortcut icon" href="img/favicon.ico">

    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
    <style>
      body {
        background-color: #eaf1ff !important;
      }

      .custom-control-label{
        display: block;
      }

      .list-unstyled li{
        font-weight: bold;
        font-size: 0.75rem;
        color: #dc3545 !important;
      }

      .wrong{
        padding: 0;
        font-weight: bold;
        font-size: 0.75rem;
        color: #dc3545 !important;
      }
      .alert{
        margin-top: 30px;
      }
    </style>
  </head>
  <body>

    <?php include_once('nav-bar.php'); ?>

    <div class="alert alert-danger text-center mb-0 mx-3" role="alert">
        no longer able to sign up. Sorry :(
    </div>

    <div class="container-fluid main">
      <div class="row">
        <div class="col-sm-11 col-lg-7 mx-auto">
          <div class="card flex-row mt-4-5 mx-auto">
            <div class="card-body">
              <div class="col-12 text-center p-0 mt-1 mb-4">
                <h2 class="m-0">Sign Up!</h2>
                <p class="mt-1 small">New to Drop Dictionary?</p>
                <?php
                if(isset($_GET['error'])){
                  $filtered_error = mysqli_real_escape_string($conn, $_GET['error']);
                  if($filtered_error == "TakenUN") {
                ?>
                <div class="col-xl-9 mx-auto wrong">
                  Username is already taken. Please choose another one.
                </div>
                <?php
                  }
                  else if($filtered_error == "TakenEM") {
                ?>
                  <div class="col-xl-9 mx-auto wrong">
                    Email is already taken.
                  </div>
                  <?php
                  }
                }
                ?>
              </div>
              <form class="form-signup" method="POST" data-toggle="validator" role="form">
                <div class="form-label-group form-group">
                  <input type="text" id="inputUsername" class="form-control focused font-w-500" maxlength="20" placeholder="Username" name="username"  data-required-error="Please enter your username." required data-pattern-error="No spaces allowed." pattern="^\S*$">
                  <label for="inputUsername">Username</label>
                  <div class="help-block with-errors ml-2 mt-1"></div>
                </div>

                <div class="form-label-group form-group">
                  <input type="text" pattern="[A-Za-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{1,10}$" id="inputEmail" class="form-control font-w-500" placeholder="Email address" name="email" data-required-error="Please enter your email address." data-pattern-error="Your email address is invalid." required>
                  <label for="inputEmail">Email address</label>
                  <div class="help-block with-errors ml-2 mt-1"></div>
                </div>

                <div class="form-label-group form-group">
                  <input type="password" id="inputPassword" class="form-control font-w-500" placeholder="Password" name="password" data-minlength="4" maxlength="20" data-error="Password should be more than 4 characters." data-required-error="Please enter your password." required>
                  <label for="inputPassword">Password</label>
                  <div class="help-block with-errors ml-2 mt-1"></div>
                </div>

                <div class="col-12 px-0 form-group">
                  <div class="custom-control custom-checkbox ml-1">
                      <input type="checkbox" class="custom-control-input" id="checked" name="check" required data-required-error="You need to agree to sign up">
                      <label class="custom-control-label font-90" for="checked">
                        I have read and agree to the <a href="privacy.php">Privacy Policy</a> and <a href="termsandconditions.php">Terms and Conditions</a>
                      </label>

                  </div>
                  <div class="help-block with-errors ml-2 mt-1"></div>
                </div>

                <hr class="mt-3 mb-4">

                <input class="btn btn-primary btn-block btn-designed" id="submit" type="submit" value="Register"></input>

                <p class="d-block text-center mt-3 mb-0 font-80">
                  Already have an account? <a href="login.php">Log in</a>.
                </p>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script>
      $(document).ready( function(){
        $(".focused").focus();
      })
    </script>
</html>
