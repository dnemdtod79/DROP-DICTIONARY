<?php
SESSION_START();
include_once('ip.php');

if(isset($_SESSION['username'])){
	$identifier = htmlspecialchars($_SESSION['username']);
}

else{
	$identifier = htmlspecialchars($_SESSION['ip']);
}

if (!isset($_GET['pageNumber'])){
    $pageNumber = 1;
  }
else{
    $pageNumber = mysqli_real_escape_string($conn, $_GET['pageNumber']);
}

if(isset($_GET['user'])){
  $userVisited = mysqli_real_escape_string($conn, $_GET['user']);
  $recordsPerPage = 10;
  $currentNumberOffset = ($pageNumber - 1) * $recordsPerPage;

  $totalNumberofPages = " SELECT COUNT(*) FROM updated WHERE identifier = '$userVisited' ";
  $result = mysqli_query($conn, $totalNumberofPages);
  $totalRows = mysqli_fetch_array($result)[0];
  $totalPages = ceil($totalRows / $recordsPerPage);

  $sql = " SELECT * FROM updated WHERE identifier = '$userVisited' ORDER BY ID DESC LIMIT $currentNumberOffset, $recordsPerPage ";
}

else{
  $recordsPerPage = 10;
  $currentNumberOffset = ($pageNumber - 1) * $recordsPerPage;

  $totalNumberofPages = " SELECT COUNT(*) FROM updated WHERE identifier = '$identifier' ";
  $result = mysqli_query($conn, $totalNumberofPages);
  $totalRows = mysqli_fetch_array($result)[0];
  $totalPages = ceil($totalRows / $recordsPerPage);

  $sql = " SELECT * FROM updated WHERE identifier = '$identifier' ORDER BY ID DESC LIMIT $currentNumberOffset, $recordsPerPage ";
}

 ?>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width", initial-scale="1">
  <title>User <?=$identifier?> | Drop Dictionary</title>

  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/nav.css">
  <link rel="stylesheet" href="css/search-bar.css">
  <link rel="stylesheet" href="css/default.css">
  <link rel="stylesheet" href="css/page-designed.css">
  <link rel="shortcut icon" href="img/favicon.ico">
  
  <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
  <script src="js/bootstrap.js"></script>
  <style>
  	body{
  		background-color: #b1d6da63 !important;
  	}
    li:last-child{
      margin-bottom: 0 !important;
    }
  </style>
</head>

<body>

  <?php include_once('nav-bar-searchbar-included.php'); ?>

  <div class="container">
    <div class="row">
      <div class="col-12 px-3">
        <div class="card mt-3 box-shadow">
        	<div class="col-12 p-0 text-right">
              <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active font-90" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Profile</a>
                </li>
                <?php 
                if(isset($_GET['user'])){
                  if($identifier != $userVisited){
                    echo "";
                  }
                  else{
                  echo '<li class="nav-item">
                  <a class="nav-link font-90" href="settings.php" role="tab">settings</a>
                  </li>';
                  }
                }
                else{
                  echo '<li class="nav-item">
                  <a class="nav-link font-90" href="settings.php" role="tab">settings</a>
                  </li>';
                }
                 ?>
              </ul>
            </div>
        	<div class="card-body">
        		<h3 class="mb-1"><?php if (!isset($_GET['user'])){ echo "<u>$identifier</u>"; } 
            else { echo "<u>$userVisited</u>"; }
            ?></h3>

            <div class="lead my-2 font-w-700">- Contributions -</div>

            <ul class="pl-3 mb-0 list-circled">
            <?php
              if($totalRows > 0){
                $dataResult = mysqli_query($conn, $sql);
                while($row = mysqli_fetch_array($dataResult)){

                  $filtered = array(
                    'written' => htmlspecialchars($row['identifier']),
                    'date' => htmlspecialchars($row['date']),
                    'word' => htmlspecialchars(($row['word'])),
                    'updated' => htmlspecialchars($row['updated'])
                  );

                  echo "<li class='mb-2'>".$filtered['date']." | <a class='badge badge-primary text-wrap' href='definitions.php?term={$filtered['word']}'>".$filtered['word']."</a> ".$filtered['updated']." by ".$filtered['written']."</li>";
                }
              }
            ?>
         </ul>
         <?php
          if($totalRows == 0){
            echo "<p class=' font-90 mb-0'>Not Found!</p>";
          }

          if(isset($_GET['user'])){
            if($pageNumber < $totalPages){
              echo "<a href='?user=".$userVisited."&pageNumber=".($pageNumber + 1)."' class='font-w-600'>Next</a>" ;
            }
            else if($pageNumber = $totalPages){
              echo "";
            }
          }
          else{
            if($pageNumber < $totalPages){
              echo "<a href='?pageNumber=".($pageNumber + 1)."' class='font-w-600'>Next</a>" ;
            }
            else if($pageNumber = $totalPages){
              echo "";
            }
          }
          ?>
           </div>
        	</div>
       	</div>
      </div>
    </div>
  </div>

  <?php include_once('footer.php'); ?>

<script src="js/search.js"></script>

</body>
</html>
