<?php
SESSION_START();
include_once('ip.php');
  
$escapedSearch = mysqli_real_escape_string($conn, $_GET['q']);
$filteredSearch = htmlspecialchars($_GET['q']);

if (!isset($_GET['pageNumber'])){
  $pageNumber = 1;
}
else{
  $pageNumber = mysqli_real_escape_string($conn, $_GET['pageNumber']);
}

$recordsPerPage = 5;
$currentNumberOffset = ($pageNumber - 1) * $recordsPerPage;

$totalNumberofPages = " SELECT COUNT(*) FROM definitions WHERE word LIKE '%$escapedSearch%' OR definition LIKE '%$escapedSearch%' OR synonym LIKE '%$escapedSearch' OR example LIKE '%$escapedSearch%' ";
$result = mysqli_query($conn, $totalNumberofPages);
$totalRows = mysqli_fetch_array($result)[0];
$totalPages = ceil($totalRows / $recordsPerPage);

$sql = " SELECT * FROM definitions WHERE word LIKE '%$escapedSearch%' OR definition LIKE '%$escapedSearch%' OR synonym LIKE '%$escapedSearch' OR example LIKE '%$escapedSearch%' ORDER BY word ASC LIMIT $currentNumberOffset, $recordsPerPage ";

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <title>Search <?=$filteredSearch?> | Drop Dictionary</title>

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/search-bar.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/page-designed.css">
    <link rel="shortcut icon" href="img/favicon.ico">

    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>
  </head>
  <body>

    <?php include_once('nav-bar-searchbar-included.php'); ?>

    <div class="container">
      <div class="row">
        <div class="col-lg-8 mt-3">
          <div class="card card-searchbox box-shadow px-3 py-3">
          <?php

      if ($totalRows > 0){

        if ($totalRows == 1){
          echo '<p class="mt-0 mb-1 lead font-weight-bold">There is 1 result for: '.$filteredSearch.'</p>';
        }

        else{
          echo '<p class="mt-0 mb-1 lead font-weight-bold">There are '.$totalRows.' results for: '.$filteredSearch.'</p>';
        }

      }

      else{
        echo '<p class="mt-0 mb-1 lead font-weight-bold">No results for: '.$filteredSearch.'</p>';
      }

      if ($totalRows > 0) {
        $dataResult = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_array($dataResult)) {
        $filtered = array(
          'word'=> htmlspecialchars($row['word']),
          'definition' => htmlspecialchars($row['definition'])
        );
        $definitionVal = mb_substr($filtered['definition'], 0, 50, "utf-8");
          echo "
            <div class='card-body px-0 py-2'>
            <h4>
            <a href='definitions.php?term={$filtered['word']}'>".$filtered['word']."</a>
            </h4>
            <a href='definitions.php?term={$filtered['word']}' class=''>".$definitionVal."<span class='small'>...</span></a>
            </div> ";
            }
          }
          else{
            echo "<span class='text-secondary'>Try a different search or <a href='define.php?getWord=$filteredSearch'>Define $filteredSearch</a> right now</span>";
          }
          
            if($pageNumber < $totalPages){
              echo "<a href='?q=".$filteredSearch."&pageNumber=".($pageNumber + 1)."' class='font-w-700'>Next</a>" ;
            }
            else if($pageNumber = $totalPages){
              echo "";
            }

          ?>
          </div>
        </div>
        <div class="col-lg-4">
          <?php include_once("sidebar.php"); ?>
        </div>
      </div>
    </div>

    <?php include_once('footer.php'); ?>
    </body>
    <script src="js/search.js"></script>
</html>
