<?php
SESSION_START();
include_once('ip.php');

if (!isset($_GET['pageNumber'])){
  $pageNumber = 1;
}
else{
  $pageNumber = mysqli_real_escape_string($conn, $_GET['pageNumber']);
}

$recordsPerPage = 30;
$currentNumberOffset = ($pageNumber - 1) * $recordsPerPage;

$totalNumberofPages = " SELECT COUNT(*) FROM definitions";
$result = mysqli_query($conn, $totalNumberofPages);
$totalRows = mysqli_fetch_array($result)[0];
$totalPages = ceil($totalRows / $recordsPerPage);
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <title>Browse words | Drop Dictionary</title>

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/search-bar.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="shortcut icon" href="img/favicon.ico">

    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>
  </head>
  <body>

    <?php include_once('nav-bar-searchbar-included.php'); ?>

    <div class="container">
      <div class="row">
        <div class="col-12 mt-3 text-center">
          <h2>Browse</h2>
            <?php

            $sql = " SELECT word FROM definitions ORDER BY word ASC LIMIT $currentNumberOffset, $recordsPerPage ";
            $result = mysqli_query($conn, $sql);
            while($row = mysqli_fetch_array($result)){
              $word = $row['word'];
              echo "<p class='mb-1'><a href='definitions.php?term=$word'>".$word."</a>";
            }
             ?>
            <?php
            if($totalRows == 0){
            echo "";
            }

            if($pageNumber < $totalPages){
              echo "<p class='mt-2 mb-0'><a class='font-w-600' href='?pageNumber=".($pageNumber + 1)."'>Next</a></p>" ;
            }
            else if($pageNumber = $totalPages){
              echo "";
            }

          ?>
        </div>
      </div>
    </div>

    <?php include_once('footer.php'); ?>
    </body>
    <script src="js/search.js"></script>
</html>
