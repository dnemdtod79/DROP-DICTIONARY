<?php
SESSION_START();
include_once('ip.php');

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <meta name="description" content="The online korean slang dictionary. Every word you've been looking for is here!">
    <meta name="google-site-verification" content="8XAtZyxX0wpUb6bxPAvx9MZePnHAZ5NdNX4KBV8cL6w" />

    <title>Drop Dictionary - Real Korean Slang Dictionary</title>
    
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="shortcut icon" href="img/favicon.ico">
    <link rel="stylesheet" href="css/index_css.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/search-bar.css">
    <link rel="stylesheet" href="css/default.css">

    <style>
      .bg-image{
        background-image:url(https://dropdictionary.cdn3.cafe24.com/background111.jpg)
      }
      .list-group-main{
        z-index: 11111;
      }
      </style>
    
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>
    <script data-ad-client="ca-pub-5686483847111003" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
  </head>
  <body>
    <?php include_once('nav-bar.php'); ?>
      <div class="container-fluid">
        <div class="row text-center">
          <div class="col-12 mx-auto my-3 col-md-4">
            <h2>Latest definitions</h2>
            <hr class="light">
              <ul class="list-unstyled mb-0">
                <?php

                $sqlLatest = " SELECT word, date FROM definitions ORDER BY DATE DESC LIMIT 10 ";
                $resultLatest = mysqli_query($conn, $sqlLatest);

                while($rowLatest = mysqli_fetch_array($resultLatest)){

                  $specialFiltered = array(
                  'word' => htmlspecialchars($rowLatest['word']),
                  'date' => htmlspecialchars($rowLatest['date'])
                  ); 

                  echo "<li><a href='definitions.php?term={$specialFiltered['word']}'>".$specialFiltered['word']."</a> <span class='badge badge-pill badge-warning'>New</span></li>";
                  echo "<li class='mb-2 font-90'>".$specialFiltered['date']."</li>";
                }

                ?>
              </ul>
            </div>

          <div class="col-12 mx-auto m-md-auto mb-1 col-md-4">
            <h2>The Most searched words!</h2>
            <hr class="light">
            <div class="card-body p-0">
            <div class="row">
              <div class="col-12">
                <ul class="list-unstyled mb-0">
                  <?php

                    $sqlTrend = " SELECT word FROM definitions ORDER BY hits DESC LIMIT 10 ";
                    $resultTrend = mysqli_query($conn, $sqlTrend);
                    $trendNum = 1;

                    while($rowTrend = mysqli_fetch_array($resultTrend)){
                      $trendingWord = htmlspecialchars($rowTrend['word']);
                        echo "<li class='mb-2 text-110'>".$trendNum.". <a href='definitions.php?term={$trendingWord}'>".$trendingWord."</a></li>";
                      $trendNum++;
                    }

                  ?>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <div class="col-12 col-md-4 mx-auto m-md-auto">
          <h2>Browse</h2>
            <hr class="light">
              <p class="mb-0">
              <a href="browse.php" class="font-w-700">Find word</a>
              </p>
        </div>

        <form class="col-md-8 px-4 mx-auto search my-4" action="search.php" method="GET">
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-search"></i></span>
          </div>
          <input type="search" class="form-control searchBar px-0 py-3 pr-2 font-w-500" placeholder="Search" aria-label="Search" name="q" id="typebar" required>
        </div>
        <div class="col-12 p-0 position-relative">
          <div class="list-group list-group-main col-12 p-0 position-absolute">
          </div>
        </div>
      </form>
      </div>
        <div class="col-12 text-center">
          <h6 class="font-80 font-w-700">&copy; <?=date("Y")?> Drop Dictionary All Rights Reserved.</h6>
        </div>
      </div>
    <script src="js/search.js"></script>
  </body>
</html>