<?php
SESSION_START();
include_once('ip.php');

$escaped_term = mysqli_real_escape_string($conn, $_GET['term']);

$sqlViews = " UPDATE definitions SET hits =  hits + 1 WHERE word = '{$escaped_term}' ";
mysqli_query($conn, $sqlViews);

$sql = " SELECT * FROM definitions WHERE word = '{$escaped_term}' ORDER BY DATE LIMIT 1";
$result = mysqli_query($conn, $sql);
$definitionNum = mysqli_num_rows($result);

if($definitionNum == 0){
  header("location: define.php?getWord={$escaped_term}");
}
else{
  $row = mysqli_fetch_array($result);
  $filtered = array(
    'word' => htmlspecialchars($row['word']),
    'pronunciation' => htmlspecialchars($row['pronunciation']),
    'synonym' => htmlspecialchars($row['synonym']),
    'definition' => htmlspecialchars($row['definition']),
    'example' => htmlspecialchars($row['example']),
    'date' => htmlspecialchars($row['date'])
  );
}
 ?>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width", initial-scale="1">
  <title><?=$filtered['word']?> Meaning | Drop Dictionary</title>
  <meta name="description" content="<?=$filtered['definition']?>">

  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600&amp;display=swap" rel="stylesheet">
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
            <div class="col-12 p-0 text-right">
              <div class="card">
                <div class="card-body">
                  <div id="amzn-assoc-ad-9dc87f4e-ea6d-42a4-9a4f-5c2eedefbd03"></div><script async src="//z-na.amazon-adsystem.com/widgets/onejs?MarketPlace=US&adInstanceId=9dc87f4e-ea6d-42a4-9a4f-5c2eedefbd03"></script>
                </div>
              </div>
              <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active font-90" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Definition</a>
                </li>
                <li class="nav-item font-90">
                  <a class="nav-link" id="profile-tab" href="edit.php?term=<?=$filtered['word']?>" role="tab">Edit</a>
                </li>
                <li class="nav-item font-90">
                  <a class="nav-link" id="contact-tab" href="history.php?term=<?=$filtered['word']?>" role="tab">History</a>
                </li>
              </ul>
            </div>

          <div class="card-body card-body-main pt-0">

          <h1 class="mb-0 mt-3 font-w-700">
            <?=$filtered['word']?>
          </h1>

          <hr>

          <p class="pre-wraped"><?=$filtered['definition']?></p>

          <p class="m-0 font-weight-bold">Pronunciation</p>
          <p><?=$filtered['pronunciation']?></p>

          <p class="m-0 font-weight-bold">Synonyms</p>
          <p><?=$filtered['synonym']?></p>

          <p class="m-0 font-weight-bold">Examples</p>
          <p class="pre-wraped"><?=$filtered['example']?></p>

          <p class="font-90 mt-3 mb-2">Defined at <?=$filtered['date']?></p>
          
          <a href="https://twitter.com/share?ref_src=twsrc%5Etfw" class="twitter-share-button" data-text="The meaning of <?=$filtered['word']?> on Drop Dictionary: " data-show-count="false">Tweet</a><script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
          </div>
        </div>
    </div>
    </div>
    <?php include_once('footer.php'); ?>
  </div>
<script src="js/search.js"></script>
<script>
  
  $(document).on('click', '.replyButton', function(){
    var commentID = $(this).attr("id");
    $("#commentID").val(commentID);
    $("#commentSection").focus();
  })

</script>
</body>
</html>
