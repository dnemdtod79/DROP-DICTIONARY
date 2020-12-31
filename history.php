<?php
SESSION_START();
include_once('ip.php');

if (!isset($_GET['pageNumber'])){
  $pageNumber = 1;
}
else{
  $pageNumber = mysqli_real_escape_string($conn, $_GET['pageNumber']);
}

$escaped_term = mysqli_real_escape_string($conn, $_GET['term']);
$filtered_term = htmlspecialchars($escaped_term);

$recordsPerPage = 10;
$currentNumberOffset = ($pageNumber - 1) * $recordsPerPage;

$totalNumberofPages = " SELECT COUNT(*) FROM updated WHERE word = '{$escaped_term}' ";
$result = mysqli_query($conn, $totalNumberofPages);
$totalRows = mysqli_fetch_array($result)[0];
$totalPages = ceil($totalRows / $recordsPerPage);

$sql = " SELECT * FROM updated WHERE word = '{$escaped_term}' ORDER BY ID DESC LIMIT $currentNumberOffset, $recordsPerPage ";
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width", initial-scale="1">
  <title>View History: <?=$filtered_term?> | Drop Dictionary</title>

  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;700&display=swap" rel="stylesheet">
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
      <div class="col-12 px-3">
        <div class="card mt-3 box-shadow" style="border-top: none;">
            <div class="card">
              <div class="card-body">
                <div id="amzn-assoc-ad-9dc87f4e-ea6d-42a4-9a4f-5c2eedefbd03"></div><script async src="//z-na.amazon-adsystem.com/widgets/onejs?MarketPlace=US&adInstanceId=9dc87f4e-ea6d-42a4-9a4f-5c2eedefbd03"></script>
              </div>
            </div>
            <div class="col-12 p-0 text-right">
              <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" style="margin-left: -1px;">
                  <a class="nav-link font-90" href="definitions.php?term=<?=$filtered_term?>" role="tab">Definition</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link font-90" href="edit.php?term=<?=$filtered_term?>" role="tab">Edit</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active font-90" href="#home" role="tab" aria-controls="home" aria-selected="true" role="tab">History</a>
                </li>
              </ul>
            </div>

          <div class="card-body card-body-main pt-0 p-relative">
          <h3 class="mb-0 mt-3 font-w-700">
            <?=$filtered_term?>: View history 
          </h3>
          <hr>
          <ul class="pl-3 list-circled">

             <?php
              if($totalRows > 0){
                $dataResult = mysqli_query($conn, $sql);
                while($row = mysqli_fetch_array($dataResult)){

                  $filtered = array(
                    'written' => htmlspecialchars($row['identifier']),
                    'date' => htmlspecialchars($row['date']),
                    'updated' => htmlspecialchars($row['updated'])
                  );

                  echo "<li class='mb-2'>".$filtered['date']." | ".$filtered['updated']." by <a href='mypage.php?user=".$filtered['written']."'>".$filtered['written']."</a></li>";
                }
              }
            ?>
          </ul>
          
          <?php
            if($totalRows == 0){
            echo "";
            }

            if($pageNumber < $totalPages){
              echo "<a class='font-w-600' href='?term=".$filtered_term."&pageNumber=".($pageNumber + 1)."'>Next</a>" ;
            }
            else if($pageNumber = $totalPages){
              echo "";
            }

          ?>
          </div>
        </div>
      </div>
    </div>
  </div>

  <?php include_once('footer.php'); ?>

<script src="js/search.js"></script>

</body>
</html>
