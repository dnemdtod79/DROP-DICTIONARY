<?php
  include_once("Connect.php");
  if(isset($_POST['query'])){
    $inputText = mysqli_real_escape_string($conn, $_POST['query']);
  	$sql = " SELECT * FROM definitions WHERE word LIKE '%$inputText%' OR definition LIKE '%$inputText%' OR synonym LIKE '%$inputText' OR example LIKE '%$inputText%' ORDER BY word ASC LIMIT 5 ";
    $result = mysqli_query($conn, $sql);
    $result_num = mysqli_num_rows($result);

    if($result_num > 0){
      while ($row = mysqli_fetch_array($result)){
        $filtered = array(
          'word'=> htmlspecialchars($row['word']),
          'definition' => htmlspecialchars($row['definition'])
        );
        echo "<a href='definitions.php?term={$filtered['word']}' class='list-group-item list-group-item-action px-3 py-2 text-left' tabindex='0'>".$filtered['word']."</a>";
      }
    }

    else{
      echo '<li class="list-group-item list-group-item-danger px-3 py-2 text-left">No definitions found</li>';
    }

  }
  else{

  }
 ?>
