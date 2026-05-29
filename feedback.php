
<?php
if (@$_GET['w']) {
    echo '<script>alert("' . @$_GET['w'] . '");</script>';
}
?>
<?php include('includes/header.php'); ?>
<?php include('includes/header_import.php'); ?>
</head>

<body>
<div class="row header">
<div class="col-lg-6">
<span class="logo" style="color: white;">MyQuizo Mania</span></div>
<div class="col-md-2">
</div>
<div class="col-md-4">
<?php
include_once 'dbconnection/dbConnection.php';
session_start();
if ((!isset($_SESSION['username']))) {
    echo '<a href="#" class="pull-right logb btn btn-primary" data-toggle="modal" data-target="#myModal" style="color:white"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>&nbsp;<font style="font-size:12px;font-weight:bold">Login</font></a>&nbsp;';
} else {
    echo '<a href="logout.php?q=feedback.php" class="pull-right logb btn btn-primary" style="color:white"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;<font style="font-size:12px;font-weight:bold">Logout</font></a>&nbsp;';
}
?>

<a href="index.php" class="pull-right btn logb btn-primary" style="color:white"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;<font style="font-size:12px;font-weight:bold">Home</font></a>&nbsp;
</div></div>
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content title1">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title title1"><span style="color:darkblue;font-size:12px;font-weight:bold">Login to your Account</span></h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" action="login.php?q=index.php" method="POST">
<fieldset>
<div class="form-group">
  <label class="col-md-3 control-label" for="username"></label>  
  <div class="col-md-6">
  <input id="username" name="username" placeholder="Enter your username-id" class="form-control input-md" type="username">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-3 control-label" for="password"></label>
  <div class="col-md-6">
    <input id="password" name="password" placeholder="Enter your Password" class="form-control input-md" type="password">
    
  </div>
</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Login</button>
    </fieldset>
</form>
      </div>
    </div>
  </div>
</div>
<div class="bg1">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6 panel" style="background-color:pink; min-height:430px;">
<h2 align="center" style="font-family:'typo'; color:white">FEEDBACK</h2>
<div style="font-size:14px;margin-top:20px"><br />
<?php
if (@$_GET['q'])
    echo '<span style="font-size:18px;"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>&nbsp;' . @$_GET['q'] . '</span>';
else {
    echo ' 

<form role="form"  method="post" action="feed.php?q=feedback.php">
<div class="row">
<div class="col-md-3"><b>Name:</b><br /><br /><br /><b>Subject:</b></div>
<div class="col-md-9">
<!-- Text input-->
<div class="form-group">
  <input id="name" name="name" placeholder="Enter your name" required class="form-control input-md" type="text"><br />    
   <input id="name" name="subject" required placeholder="Enter short description of your feedback" class="form-control input-md" type="text">    

</div>
</div>
</div><!--End of row-->

<div class="row">
<div class="col-md-3"><b>E-Mail ID:</b></div>
<div class="col-md-9">
<!-- Text input-->
<div class="form-group">
  <input id="email" name="email" placeholder="Enter your e-mail" required class="form-control input-md" type="email">    
 </div>
</div>
</div><!--End of row-->

<div class="form-group"> 
<textarea rows="5" cols="8" name="feedback" class="form-control" required placeholder="Write feedback here. Keep it clean and simple."></textarea>
</div>
<div class="form-group" align="center">
<font style="font-size:12px;font-weight:bold"><input type="submit" name="submit" value="Send My Feedback" class="btn btn-primary" /></font>
</div>
</form>';
}
?>
</div>
<div class="col-md-3"></div></div>
</div></div>
</div>
<div class="container text-center" style="margin-top: 0px;">
<div class="row">
<div class="col-md-12">
<div class="col-md-4 box">
<a href="admin_login.php" class="btn btn-primary"  data-target="#login" style="color:lightyellow">Admin Login</a></div>
<div class="col-md-4 box">
<a href="#" data-target="#login" class="btn btn-primary" style="color:lightyellow">Pillai COllege Welcomes You !<br><br></a>
</div>


<div class="col-md-4 box">
<a href="feedback.php" style="color:lightyellow;" class="btn btn-primary" onmouseover="this.style('color:yellow')" target="new">Feedback</a></div>
</div>
</div>
</div>

</div>
</body>
</html>
