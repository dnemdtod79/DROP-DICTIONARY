<?php
SESSION_START();
include_once('ip.php');

$filtered = array(
   'word'=> mysqli_real_escape_string($conn, $_POST['word']),
   'pronunciation' => mysqli_real_escape_string($conn, $_POST['pronunciation']),
   'definition'=> mysqli_real_escape_string($conn, $_POST['definition']),
   'synonym'=> mysqli_real_escape_string($conn, $_POST['synonym']),
   'example'=> mysqli_real_escape_string($conn, $_POST['example']),
);


if(empty($filtered['definition'])){
?> <script> alert("Please fill in all required fields."); window.history.back(); </script>
<?php
}
else{

  if(isset($_SESSION['username'])){
    $filtered_identifier = mysqli_real_escape_string($conn, $_SESSION['username']);
  }

  else if(isset($_SESSION['ip'])){
    $filtered_identifier = mysqli_real_escape_string($conn, $_SESSION['ip']);
  }


  $sql = " UPDATE definitions
  SET
  pronunciation = '{$filtered['pronunciation']}',
  definition = '{$filtered['definition']}',
  synonym = '{$filtered['synonym']}',
  example = '{$filtered['example']}'
  WHERE word = '{$filtered['word']}'; ";

  $sql .= "
    INSERT INTO updated (word, identifier, date, updated, backup) VALUES('{$filtered['word']}', '{$filtered_identifier}', NOW(), 'Edited', '{$filtered['definition']} / {$filtered['pronunciation']} / {$filtered['synonym']} / {$filtered['example']}');
  ";

  $result = mysqli_multi_query($conn, $sql);

  if($result == true){
  	header("location: definitions.php?term=".$filtered['word']);
  }
  else{
    print_r(mysqli_error($conn));
?> <script> alert("Sorry, Something went wrong! Please try again soon."); </script>
	<?php  	
  }
}
?>