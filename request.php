<?php
SESSION_START();
include_once('ip.php');
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <title>Request | Drop Dictionary</title>

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/search-bar.css">
    <link rel="shortcut icon" href="img/favicon.ico">

    <style>
      
      body{
        background-color: aliceblue;
      }

    </style>

    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>
  </head>
  <body>
    <?php include_once('nav-bar-searchbar-included.php'); ?>

    <div class="alert alert-danger text-center mb-0 mx-3 mt-3" role="alert">
        no longer able to request. Sorry :(
    </div>

    <div class="container-fluid">
      <div class="row">
        <div class="col-12 col-md-6 mx-auto">
          <div class="card mt-3 box-shadow">
            <div class="card-body">
              <div class="col-12 mb-3">
                <h3 class="text-center mb-3">Request</h3>
                <a href="requestALL.php"><button type="button" class="btn btn-block btn-primary btn-lg mx-auto font-w-500">SEE<br>REQUESTS</button></a>
              </div>
              <div class="col-12">
                <button type="button" class="btn btn-block btn-danger btn-lg mx-auto font-w-500" data-toggle="modal" data-target="#requestModal">REQUEST<br>DEFINITION</button>
              </div>
              <p class="mb-0 mt-3 text-center font-90">* You must <u>log in</u> to request a definition.</p>
            </div>
          </div>
        </div>
      </div>
    </div>

<div class="modal fade" id="requestModal" tabindex="-1" role="dialog" aria-labelledby="requestModaltitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">REQUEST</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form method="POST" action="request_process.php" class="mb-0">
        <div class="modal-body">
          <div style="display: flex; align-items: flex-end;">
            <h5 class="mr-2">Word</h5>
            <input class="form-control font-w-500" type="text" name="word" required>
          </div>
          <p class="mt-2 mb-0 font-80 text-secondary">* Note that you can't cancle the request once you've submitted.</p>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger font-w-600">SUBMIT</button>
        </div>
      </form>
    </div>
  </div>
</div>

    <?php include_once('footer.php'); ?>
    <script src="js/search.js"></script>
  </body>
</html>