<?php
SESSION_START();
include_once('ip.php');

if(isset($_GET['getWord'])){
  $termNotdefined = mysqli_real_escape_string($conn, $_GET['getWord']);
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <title>Define | Drop Dictionary</title>

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <link rel="stylesheet" href="css/D_S_css.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/search-bar.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="shortcut icon" href="img/favicon.ico">

    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
    <style>

      body {
        background-color: #c7d9e263 !important;
      }

      .list-unstyled li{
        font-weight: bold;
        font-size: 0.75rem;
        color: #dc3545 !important;
      }

      .letter-space-sm{
         letter-spacing: 0.05rem;
      }

      .underline{
        text-decoration: underline;
      }

    </style>
  </head>
  <body>

    <?php include_once('nav-bar-searchbar-included.php'); ?>

    <div class="container-fluid main">
      <div class="row">
        <div class="col-sm-11 col-lg-7 mx-auto">
          <div class="card flex-row mt-4 mx-auto">
            <div class="card-body">
              <div class="col-12 p-0 mb-4">
                <h2 class="mb-1 text-center">Define</h2>
                <ul class="p-0">
                  <li class="text-center mb-0 font-80 letter-space-sm mt-1">
                  · Define a word that has <u class='text-danger'>not</u> been submitted yet.
                  </li>
                <?php if(!isset($_SESSION['username'])){
                  echo '<li class="text-center mb-0 font-80 letter-space-sm mt-1">
                  · You are not logged in.<br>Your IP address <u>will be displayed</u> publicly if you submit.</li>';
                 }
                ?>
                </ul>
               
                <hr class="mt-3">
              </div>
              <form method="POST" action="define_process.php" data-toggle="validator" role="form">
                <?php if(isset($_GET['requested'])){ echo "<input type='hidden' name='status' value='done'>"; } ?>
                <div class="form-group">
                  <input type="text" class="form-control input font-w-500" placeholder="Word (required)" name="word" required data-required-error="Word is required" value="<?php if(isset($_GET['getWord'])){ echo $termNotdefined; } ?>">
                  <div class="help-block with-errors mt-1"></div>
                </div>

                <div class="form-group">
                  <textarea class="form-control input font-w-500" placeholder="Definition (required)" name="definition" rows="8" data-required-error="Definition is required" required></textarea>
                  <div class="help-block with-errors mt-1"></div>
                </div>

                <div class="form-group">
                  <input class="form-control input font-w-500 font-90" placeholder="Pronunciation" name="pronunciation">
                  <div class="help-block with-errors mt-1"></div>
                </div>

                <div class="form-group">
                  <textarea class="form-control input font-w-500 font-90" placeholder="Synonym" name="synonym" rows="1"></textarea>
                  <div class="help-block with-errors mt-1"></div>
                </div>

                <div class="form-group">
                  <textarea class="form-control input font-w-500 font-90" placeholder="Example" name="example" rows="3"></textarea>
                </div>

                <p class="text-center small font-weight-bold underline">Defined by
                <?php
                  if(isset($_SESSION['username'])){
                    echo htmlspecialchars($_SESSION['username']);
                  }
                  else if(isset($_SESSION['ip'])){
                    echo htmlspecialchars($_SESSION['ip']);
                  }
                 ?>
               </p>
               <php

               ?>
                <input class="btn btn-secondary btn-block btn-designed" id="submit" type="submit" value="submit"></input>
                
              </form>
            </div>
          </div>
        </div>
      </div>
      <?php include_once('footer.php'); ?>
    </div>
    <script src="js/search.js"></script>
  </body>
</html>
