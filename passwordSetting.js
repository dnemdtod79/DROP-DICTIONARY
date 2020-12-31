$(document).ready( function(){

  var ajax = new XMLHttpRequest();
  ajax.open("POST", "settingPasswordChange.php", true);
  ajax.send();

  ajax.onreadystatechange = function() {
    if(this.readyState == 4 && this.status == 200){
      var correctPassword = this.responseText;
      var oldPassword = $("#old_password");
      var notCurrent = $("#not_current");
      var changeForm = $("#ChangePasswordForm");

      oldPassword.on("blur", function() {

          if(correctPassword != oldPassword.val()){
            notCurrent.removeClass("hidden");
            return false;
          }

          else{
            notCurrent.addClass("hidden");
            return true;
          }

          if(correctPassword == '' && notCurrent.val() == ''){
            notCurrent.addClass("hidden");
            return true;
          }

      })

    changeForm.on("submit", function(e) {
      if(correctPassword != oldPassword.val()){
      e.preventDefault();
      }
    })

    }
  }

  var confirmOne = $("#confirm_password");
  var newOne = $("#new_password");
  var notMatch = $("#not_match");
  var changeForm = $("#ChangePasswordForm");

  confirmOne.on("blur", function() {
    
    if(confirmOne.val() != newOne.val() && confirmOne.val() !='' && newOne.val() !=''){
      notMatch.removeClass("hidden");
      // 보이기
      return false;
    }

    else{
      // 안 보이기
      notMatch.addClass("hidden");
      return true;
    }

  })

  changeForm.on("submit", function(e) {
    if(confirmOne.val() != newOne.val()){
    e.preventDefault();
    }
  })

})