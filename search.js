$(document).ready(function(){
  $("#typebar").keyup(function(){
    var searchText = $(this).val();
    if(searchText != ''){
      $.ajax({
        url:'search-ajax.php',
        method:'POST',
        data:{query:searchText},
        success:function(response){
          $(".list-group").html(response);
        }
      });
    }
    else{
      $(".list-group").html('');
    }
  });
});
