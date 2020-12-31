<?php
SESSION_START();
include_once("Connect.php");

$filtered = array(
   'word'=> mysqli_real_escape_string($conn, $_POST['word']),
   'definition'=> mysqli_real_escape_string($conn, $_POST['definition']),
   'pronunciation'=> mysqli_real_escape_string($conn, $_POST['pronunciation']),
   'synonym'=> mysqli_real_escape_string($conn, $_POST['synonym']),
   'example'=> mysqli_real_escape_string($conn, $_POST['example']),
   'status'=> mysqli_real_escape_string($conn, $_POST['status'])
);

$alreadyWords = " SELECT * FROM definitions WHERE word = '{$filtered['word']}' ";
$wordsResult = mysqli_query($conn, $alreadyWords);
$WordsNum = mysqli_num_rows($wordsResult);

if(empty($filtered['word']) || empty($filtered['definition'])){
?> <script> alert("Please fill in all required fields."); window.history.back(); </script>
<?php
}

else if($WordsNum > 0){
?>
<script> alert("Word you just submitted has been defined already. You can add your definition by editing submitted ones!"); window.history.back(); </script>
<?php
}
else{

  if(isset($_SESSION['username'])){
    $filtered_identifier = mysqli_real_escape_string($conn, $_SESSION['username']);
  }

  else if(isset($_SESSION['ip'])){
    $filtered_identifier = mysqli_real_escape_string($conn, $_SESSION['ip']);
  }

  $sql = " INSERT INTO definitions (word, definition, pronunciation, synonym, example, date, hits) VALUES('{$filtered['word']}', '{$filtered['definition']}', '{$filtered['pronunciation']}', '{$filtered['synonym']}', '{$filtered['example']}', NOW(), '0') ;";
  $sql .= " INSERT INTO updated (word, identifier, date, updated, backup) VALUES('{$filtered['word']}', '{$filtered_identifier}', NOW(), 'Defined', '{$filtered['definition']} / {$filtered['pronunciation']} / {$filtered['synonym']} / {$filtered['example']}') ;";
  $sql .= " UPDATE request SET status = '{$filtered['status']}' WHERE word = '{$filtered['word']}' ;";
  $result = mysqli_multi_query($conn, $sql);
  if($result == true){
    header("location: definitions.php?term={$filtered['word']}");
  }
  else{
?> <script>
    alert("Sorry, Something went wrong! Please try again."); window.history.back();
  </script>
<?php
   }
}
?>