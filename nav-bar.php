<nav class="navbar navbar-expand-lg navbar-light bg-light py-2 px-0">
<div class="container-fluid p-0">
  <a class="navbar-brand ml-2" href="index.php"><img src="https://dropdictionary.cdn3.cafe24.com/drop_logo.PNG" alt="Drop Dictionary's official logo."></a>


<!-- User dropdown -->
  <div class="btn-group ml-auto d-lg-none">
    <button type="button" class="icon-default p-2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <i class="fas fa-user"></i>
    </button>
    <div class="dropdown-menu dropdown-menu-s-right dropdown-menu-user px-2">

        <?php
        if(!isset($_SESSION['username'])){
        ?>

         <a class="btn btn-outline-primary btn-navbar rounded-pill btn-block mx-auto btn-sm font-w-500" href="login.php" role="button">Login</a>

         <a class="btn btn-outline-danger btn-navbar rounded-pill btn-block mx-auto btn-sm font-w-500" href="signup.php" role="button">Sign up</a>

        <div class="dropdown-divider"></div>

        <span class="dropdown-item-text text-center p-0 font-90">Your IP address is <?=htmlspecialchars($_SESSION['ip'])?></span>

        <?php }

        else{
        ?>
          
          <span class="dropdown-item-text text-center p-0 font-90">Hey, <?=htmlspecialchars($_SESSION['username'])?>!</span>

          <div class="dropdown-divider"></div>

          <a class="btn btn-outline-primary btn-navbar rounded-pill btn-block mx-auto btn-sm font-w-500" href="logout.php" role="button">Log out</a>

        <?php 
        }

        ?>

    </div>
  </div>

  <button class="navbar-toggler pl-1 collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

<div class="navbar-collapse collapse ml-auto mr-lg-1" id="navbarSupportedContent">
    <ul class="navbar-nav my-2">
      <hr class="w-100 mt-0 w-lg-0">
      <li class="nav-item">
        <a class="nav-link text-center text-dark font-w-600" href="define.php">DEFINE</a>
      </li>
      <hr class="w-100 w-lg-0">
      <li class="nav-item">
        <a class="nav-link text-center text-dark font-w-600" href="request.php">REQUEST</a>
      </li>
      <hr class="w-100 w-lg-0">
      <li class="nav-item">
        <a class="nav-link text-center text-dark font-w-600" href="forum.php">FORUM</a>
      </li>
      <hr class="w-100 w-lg-0">
      <li class="nav-item">
        <a class="nav-link text-center text-dark font-w-600" href="mypage.php">MY PAGE</a>
      </li>
    </ul>
  </div>


    <div class="mr-3 d-none d-lg-block">
 
    <?php
    if(!isset($_SESSION['username'])){
    ?>
      <a class="btn btn-navbar btn-outline-danger btn-sm rounded-pill mr-1 font-w-500" href="signup.php" role="button">Sign up</a>
      <a class="btn btn-navbar btn-outline-primary btn-sm rounded-pill font-w-500" href="login.php" role="button">Login</a>

    <?php
      }
    else{
    ?>
    
    <button type="button" class="icon-default p-2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <i class="fas fa-user"></i>
    </button>
    <div class="dropdown-menu dropdown-menu-right dropdown-menu-user dropdown-menu-lg-user px-2">
    <span class="dropdown-item-text text-center p-0 font-90">Hey, <?=htmlspecialchars($_SESSION['username'])?>!</span>
    <div class="dropdown-divider"></div>
    <a class="btn btn-outline-primary btn-navbar rounded-pill btn-block mx-auto btn-sm font-w-500" href="logout.php" role="button">Log out</a>
    <?php
    }
    ?>
  </div>
</div>
</nav>