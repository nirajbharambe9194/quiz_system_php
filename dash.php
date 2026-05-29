
<?php include('includes/admin_header.php'); ?>


<body  style="background:pink;">
<div class="header">
<div class="row">
<div class="col-lg-6">
<span class="logo">MyQuizo Mania</span></div>
<?php
include_once 'dbconnection/dbConnection.php';
session_start();
if (!(isset($_SESSION['username']))  || ($_SESSION['key']) != '54585c506829293a2d4c3b68543b316e2e7a2d277858545a36362e5f39') {
    session_destroy();
    header("location:index.php");
} else {
    $name     = $_SESSION['name'];
    $username = $_SESSION['username'];
    
    include_once 'dbconnection/dbConnection.php';
    echo '<span class="pull-right top title1" ><span style="color:white"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;Hello,</span> <span class="log log1" style="color:lightyellow">' . $name . '&nbsp;&nbsp;|&nbsp;&nbsp;<a href="logout.php?q=account.php" style="color:lightyellow"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout</button></a></span>';
}
?>

</div></div>
<?php include('includes/nav.php'); ?>
<div class="container">
<div class="row">
<div class="col-md-12">
<?php
if (@$_GET['q'] == 0) 
    include('home.php');

if (@$_GET['q'] == 2) 
include('user.php');
if (@$_GET['q'] == 1) 
include('leaderboard.php');
if (@$_GET['q'] == 3) 
include('admin_feedback.php');
if (@$_GET['q'] == 4 && !(@$_GET['step'])) 
include('add_quiz.php');
if (@$_GET['q'] == 5) 
include('remove_quiz.php');
?>
<?php
if (@$_GET['q'] == 4 && (@$_GET['step']) == 2) {
  echo ' 
<div class="row">
<span class="title1" style="margin-left:40%;font-size:30px;"><b>Enter Question Details</b></span><br /><br />
<div class="col-md-3"></div><div class="col-md-6"><form class="form-horizontal title1" name="form" action="update.php?q=addqns&n=' . @$_GET['n'] . '&eid=' . @$_GET['eid'] . '&ch=4 "  method="POST">
<fieldset>
';
  
  for ($i = 1; $i <= @$_GET['n']; $i++) {
      echo '<b>Question number&nbsp;' . $i . '&nbsp;:</><br /><!-- Text input-->
<div class="form-group">
<label class="col-md-12 control-label" for="qns' . $i . ' "></label>  
<div class="col-md-12">
<textarea rows="3" cols="5" name="qns' . $i . '" class="form-control" placeholder="Write question number ' . $i . ' here..."></textarea>  
</div>
</div>
<div class="form-group">
<label class="col-md-12 control-label" for="' . $i . '1"></label>  
<div class="col-md-12">
<input id="' . $i . '1" name="' . $i . '1" placeholder="Enter option a" class="form-control input-md" type="text">
  
</div>
</div>
<div class="form-group">
<label class="col-md-12 control-label" for="' . $i . '2"></label>  
<div class="col-md-12">
<input id="' . $i . '2" name="' . $i . '2" placeholder="Enter option b" class="form-control input-md" type="text">
  
</div>
</div>
<div class="form-group">
<label class="col-md-12 control-label" for="' . $i . '3"></label>  
<div class="col-md-12">
<input id="' . $i . '3" name="' . $i . '3" placeholder="Enter option c" class="form-control input-md" type="text">
  
</div>
</div>
<div class="form-group">
<label class="col-md-12 control-label" for="' . $i . '4"></label>  
<div class="col-md-12">
<input id="' . $i . '4" name="' . $i . '4" placeholder="Enter option d" class="form-control input-md" type="text">
  
</div>
</div>
<br />
<b>Correct answer</b>:<br />
<select id="ans' . $i . '" name="ans' . $i . '" placeholder="Choose correct answer " class="form-control input-md" >
 <option value="a">Select answer for question ' . $i . '</option>
<option value="a">option a</option>
<option value="b">option b</option>
<option value="c">option c</option>
<option value="d">option d</option> </select><br /><br />';
  }
  
  echo '<div class="form-group">
<label class="col-md-12 control-label" for=""></label>
<div class="col-md-12"> 
  <input  type="submit" style="margin-left:45%" class="btn btn-primary" value="Submit" class="btn btn-primary"/>
</div>
</div>

</fieldset>
</form></div>';
}?>
</div>
</div></div>
</body>
</html>
