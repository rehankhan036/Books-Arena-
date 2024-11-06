<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $title; ?></title>
    <link rel="stylesheet" href="./bootstrap/css/mian.css">
    <link rel="stylesheet" href="./bootstrap/css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>

  <body>

  <nav class="navbar navbar-expand-lg navbar-dark navbar-fixed-top" style="background-color:rgb(35, 115, 168)">

  
<!-- Brand/logo -->
<a class="navbar-brand" href="./index.php"><i class="fa fa-book"></i> Books Arena</a>

<!-- Links -->
<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
          <a class="nav-link" href="./index.php"><i class="fas fa-home"></i> Home</a>
      </li>

      <li class="nav-item">
          <a class="nav-link" href="./publisher_list.php"><i class="fas fa-newspaper"></i> Publishers</a>
      </li>

      <li class="nav-item">
          <a class="nav-link" href="./books.php"><i class="fa fa-dashboard"></i> Dashboard</a>
      </li>
</ul>

<!--Cart button-->
<a class="nav-link margin-lr btn btn-danger fas fa-cart-plus"  href="./cart.php"> Cart</a>

<!--Login Button-->
<a href="./admin.php"><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" href = "admin.php"><i class="fas fa-user"></i> Login</button></a>

</nav>
    <?php
      if(isset($title) && $title == "Index") {
    ?>
    <?php } ?>

    <div class="container-fluid" id="main">
