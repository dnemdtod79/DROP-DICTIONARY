<?php
SESSION_START();
include_once('ip.php');

$escaped_term = mysqli_real_escape_string($conn, $_GET['term']);
$sql = " SELECT * FROM definitions WHERE word = '{$escaped_term}' ";
$result = mysqli_query($conn, $sql);
$resultNum = mysqli_num_rows($result);

if($resultNum == 0){
  header("location: define.php");
}

$row = mysqli_fetch_array($result);
$filtered = array(
  'word' => htmlspecialchars($row['word']),
  'pronunciation' => htmlspecialchars($row['pronunciation']),
  'definition' => htmlspecialchars($row['definition']),
  'synonym' => htmlspecialchars($row['synonym']),
  'example' => htmlspecialchars($row['example'])
);
 ?>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width", initial-scale="1">

  <title>Edit <?=$filtered['word']?> | Drop Dictionary</title>

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
  <style>
    .underline{
      text-decoration: underline;
    }
  </style>
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
                <a class="nav-link font-90" href="definitions.php?term=<?=$filtered['word']?>" role="tab">Definition</a>
              </li>
              <li class="nav-item">
               <a class="nav-link active font-90" href="#home" role="tab" aria-controls="home" aria-selected="true" role="tab">Edit</a>
              </li>
              <li class="nav-item">
                <a class="nav-link font-90" href="history.php?term=<?=$filtered['word']?>" role="tab">History</a>
              </li>
            </ul>
          </div>

          <div class="card-body card-body-main pt-0">

        <form method="POST" action="edit_process.php" data-toggle="validator" role="form">
          <h1 class="mb-0 mt-3 font-w-700">
            <?=$filtered['word']?>
            <input type="hidden" name="word" value="<?=$filtered['word']?>">
          </h1>

          <hr>

          <div class="form-group">
            <textarea class="form-control input mt-4 font-w-500" placeholder="Definition (required)" id="definition" name="definition" rows="12" data-required-error="Definition is required" required><?=$filtered['definition']?></textarea>
            <div class="help-block with-errors mt-1"></div>
          </div>

          <p class="m-0 mb-2">Pronunciation</p>

          <div class="form-group">
            <input class="form-control input font-90 font-w-500" placeholder="Pronunciation" name="pronunciation" value="<?=$filtered['pronunciation']?>">
          </div>

          <p class="m-0 mb-2">Synonyms</p>

          <div class="form-group">
            <textarea class="form-control input font-90 font-w-500" placeholder="Synonym" name="synonym" rows="1"><?=$filtered['synonym']?></textarea>
            <div class="help-block with-errors mt-1"></div>
          </div>

          <p class="m-0 mb-2">Examples</p>

          <div class="form-group">
            <textarea class="form-control input font-90 font-w-500" placeholder="Example" name="example" rows="3"><?=$filtered['example']?></textarea>
            <div class="help-block with-errors mt-1"></div>
          </div>

          <p class="text-center small font-w-700 underline mt-3">Edited by
            <?php
             if(isset($_SESSION['username'])){
               echo htmlspecialchars($_SESSION['username']);
             }
             else if(isset($_SESSION['ip'])){
               echo htmlspecialchars($_SESSION['ip']);
             }
             ?>
          </p>

          <input class="btn btn-outline-primary btn-block btn-designed p-2" id="submit" type="submit" value="Edit" disabled onclick="alert('successfully edited.');"></input>
        </form>

          </div>
        </div>
      </div>
    </div>
  </div>

<?php include_once('footer.php'); ?>

<script>
$(document).ready( function() {
  $("input:text, textarea").keyup(function() {
    $("#submit").removeAttr('disabled');
  })
});
</script>

<script src="js/search.js"></script>
</body>
</html>
