<?php
SESSION_START();
include_once('ip.php');

if (!isset($_GET['pageNumber'])){
  $pageNumber = 1;
}
else{
  $pageNumber = mysqli_real_escape_string($conn, $_GET['pageNumber']);
}

$recordsPerPage = 5;
$currentNumberOffset = ($pageNumber - 1) * $recordsPerPage;

$totalNumberofPages = " SELECT COUNT(*) FROM request WHERE status is Null ";
$result_perpage = mysqli_query($conn, $totalNumberofPages);
$totalRows = mysqli_fetch_array($result_perpage)[0];
$totalPages = ceil($totalRows / $recordsPerPage);

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <title>See all requests | Drop Dictionary</title>

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

      .cardRequested{
        border-color: black;
      }
      
    </style>

    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>
  </head>
  <body>
    <?php include_once('nav-bar-searchbar-included.php'); ?>

    <div class="container-fluid">
      <div class="row">
        <div class="col-12 col-md-7 mx-auto">
          <div class="card mt-3 box-shadow">
            <div class="card-body">
              <div class="col-12">
                <div class="text-center mb-3">
                <h3>See all requests</h3>
                <span class="font-90 font-w-600" style="background-color: #ffeb34">Request and contribute!</span>
                </div>
                <?php
                  $sql = " SELECT * FROM request WHERE status is Null ORDER BY id DESC LIMIT $currentNumberOffset, $recordsPerPage";
                  $result = mysqli_query($conn, $sql);
                  $num_rows = mysqli_num_rows($result);

                  if($num_rows == 0){
                    echo "<p class='text-center mb-0'>No requests submitted</p>";
                  }

                  else{
                    while($row = mysqli_fetch_array($result)){
                      $filtered = array(
                      'username' => htmlspecialchars($row['username']),
                      'word' => htmlspecialchars($row['word']),
                      'date' => htmlspecialchars($row['date'])
                    );
                      echo "
                      <div class='card mb-3 cardRequested'>
                        <div class='card-body'>
                          <h4 class='card-title'>Word: {$filtered['word']}</h4>
                          <h6 class='card-subtitle text-muted font-90'>requested by <a href='mypage.php?user={$filtered['username']}'>{$filtered['username']}</a> at {$filtered['date']} </h6>
                          
                          <a href='define.php?getWord={$filtered['word']}&requested' class='card-link'>Define now</a>
                        </div>
                      </div>
                      ";
                    }
                  }

                  if($pageNumber < $totalPages){
                    echo "<a href='requestALL.php?pageNumber=".($pageNumber + 1)."' class='font-w-700'>Next</a>" ;
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
    </div>

    <?php include_once('footer.php'); ?>
    <script src="js/search.js"></script>
  </body>
</html>