<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <?php include 'includes/header_import.php';?>
    <?php include('dbconnection/dbconnection.php'); ?>
</head>
<style>
    .container{
 position relative;
}
.form{
 position: absolute;
 top: 35%;
 left: 50%;
 transform: translate(-50%,-50%);
}
</style>
<body style="background:pink;">
<div class="header">
<div class="row">
<div class="col-lg-6">
<span class="logo" style="color: white;" >MyQuizo Mania</span></div>
<div class="container">
  
    <div class="form">
    <h2 class="title">Login TO Play Quiz</h2>
        <form class="form-horizontal" action="login.php?q=index.php" method="POST">
<fieldset>
        <label class="col-md- control-label" for="username"></label>  
  <input id="username" name="username" required placeholder="Username" class="form-control input-md" type="username">
  <label class="col-md- control-label" for="password"></label>
    <input id="password" name="password" required placeholder="Enter your Password" class="form-control input-md" type="password">
<div class="button" style="margin-top: 20px;">
        <button type="button" class="btn btn-default" data-dismiss="">Close</button>
        <button type="submit" class="btn btn-danger">Log in</button>
        <a href="index.php" class="btn btn-primary">Home</a>
        </div>
    </fieldset>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

