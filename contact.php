<?php
SESSION_START();
include_once('ip.php');
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <title>Contact | Drop Dictionary</title>

    <link href="https://fonts.googleapis.com/css?family=Montserrat:500,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/L_C_css.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/search-bar.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="shortcut icon" href="img/favicon.ico">

    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
    <style>

      .fullname-label{
        pointer-events: none;
      }

      .svg {
        margin-left: auto;
        max-width: 240px;
        width: 80%;
      }
      .list-unstyled{
        margin: 0 !important;
      }

    </style>
  <head>
  <body>
    <?php include_once('nav-bar.php'); ?>
    <div class="alert alert-danger text-center" role="alert">
        Currently unable to send a message. Sorry :(
    </div>
    <div class="container-fluid">
      <div class="row no-gutter">
        <div class="col-12">
          <div class="contactus d-flex align-items-center py-4">
            <div class="container">
              <div class="row">
                <div class="col-sm-11 col-md-8 col-lg-4 mx-auto">
                  <div class="col-12 text-center p-0 mt-1 mb-4">
                    <div class="col-5 col-md-4 mx-auto mb-2">
                      <img class="svg" src="img/message.svg" alt="Message Icon">
                    </div>
                    <div class="col-12 text-center p-0 mt-1 mb-4">
                      <h2 class="m-0">Contact</h2>
                      <h5 class="font-80 mt-1">Anything to say?</h5>
                    </div>
                  </div>
                  <form class="form-contact" action="contactus_process.php" method="POST" data-toggle="validator" role="form">
                    <div class="form-row">
                      <div class="form-group col-6">
                        <input type="text" class="form-control font-w-500" placeholder="Full name" name="name" id="inputName" data-required-error="Please enter your full name." required>
                        <div class="help-block with-errors mt-1"></div>
                      </div>
                      <div class="form-group col-6">
                        <input type="text" pattern="[A-Za-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{1,10}$" data-pattern-error="Your email address is invalid." class="form-control font-w-500" id="inputEmail" placeholder="Email Address" name="email" required data-required-error="Please enter your email!">
                        <div class="help-block with-errors mt-1"></div>
                      </div>
                    </div>

                    <div class="form-group mb-4">
                      <textarea class="form-control font-w-500 font-90" placeholder="Message" name="message" id="textareaMessage" rows="8" data-required-error="Message is required." required data-minlength="10" data-error="Message should be more than 10 characters"></textarea>
                      <div class="help-block with-errors mt-1"></div>
                    </div>

                    <button class="btn btn-primary btn-block btn-designed" type="submit" id="submit">Send <i class="fas fa-paper-plane"></i></button>
                    <div class="mx-auto font-w-500 font-80 mt-3 col-md-10 text-center ">
                      Any questions, requests or suggestions are welcome!
                    </div>

                    <hr class="mt-3 mb-4">

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
