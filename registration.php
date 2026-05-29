<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <?php include 'includes/header_import.php';?>
</head>
<style>
    .container{
 position relative;
}
.register{
 position: absolute;
 top: 50%;
 left: 50%;
 transform: translate(-50%,-50%);
}
</style>
<?php include('dbconnection/dbconnection.php'); ?>
<body style="background-color:pink";>
  <div class="register">
<div class="col-md-10 panel"> 
  <form class="form-horizontal" name="form" action="sign.php?q=account.php" onSubmit="return validateForm()" method="POST">
<fieldset>
<div class="form-group">
  <label class="col-md-12 control-label" for="name"></label>  
  <div class="col-md-12">
  <h3 align="center">Registration Form</h3>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-12 control-label" for="name"></label>  
  <div class="col-md-12">
  <div id="errormsg" style="font-size:14px;font-family:calibri;font-weight:normal;color:red"><?php
if (@$_GET['q7']) {
    echo '<p style="color:red;font-size:15px;">' . @$_GET['q7'];
}
?></div>
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="name"></label>  
  <div class="col-md-12">
  <input id="name" name="name" required placeholder="Enter your name" required class="form-control input-md" type="text" value="<?php
if (isset($_GET['name']))
{
echo $_GET['name'];
}?>">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="rollno"></label>  
  <div class="col-md-12">
  <input required id="rollno" name="rollno" required placeholder="Enter your Roll no (Ex.732116104***)" class="form-control input-md" type="text" value="<?php
if (isset($_GET['rollno']))
{
echo $_GET['rollno'];
}?>">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="gender"></label>
  <div class="col-md-12">
    <select id="gender" name="gender" required required placeholder="Select your gender" class="form-control input-md" >
   <option value="" <?php
if (!isset($_GET['gender']))
    echo "selected";
?>>Select Gender</option>
  <option value="M" <?php
  if (isset($_GET['gender']))
  {
if ($_GET['gender'] == "M")
    echo "selected";
  }
?>>Male</option>
  <option value="F" <?php
  if (isset($_GET['gender']))
  {
if ($_GET['gender'] == "F")
    echo "selected";
  }
?>>Female</option> </select>
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="branch"></label>
  <div class="col-md-12">
    <select id="branch" name="branch" required placeholder="Select your branch" class="form-control input-md" >
   <option value="" <?php
if (!isset($_GET['branch']))
    echo "selected";
?>>Select Branch</option>
  <option value="CSE" <?php
  if (isset($_GET['branch']))
  {
if ($_GET['branch'] == "CSE")
    echo "selected";
  }
  ?>>Computer Science and Engineering</option>

  <option value="IT" <?php
  if (isset($_GET['branch']))
  {
  if ($_GET['branch'] == "IT")
    echo "selected";
  }
?>>Information Technology</option>

  <option value="BIOTECH" <?php
  if (isset($_GET['branch']))
  {
if ($_GET['branch'] == "BIOTECH")
    echo "selected";
  }
?>>Biotechnology</option> 
 </select>
  </input>
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label title1" for="username"></label>
  <div class="col-md-12">
    <input id="username" name="username" required placeholder="Choose a username" class="form-control input-md" type="username" value="<?php
if (isset($_GET['username']))
{
echo $_GET['username'];
};
?>" style="<?php
if (isset($_GET['q7']))
    echo "border-color:red";
?>">

  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="phno"></label>  
  <div class="col-md-12">
  <input id="phno" name="phno" required placeholder="Enter your mobile number" class="form-control input-md" min="7000000000" max="9999999999" type="number" value="<?php
if (isset($_GET['phno']))
{
echo $_GET['phno'];
}
?>">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="password"></label>
  <div class="col-md-12">
    <input id="password" name="password" required placeholder="Enter your password" class="form-control input-md" type="password">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-12control-label" for="cpassword"></label>
  <div class="col-md-12">
    <input id="cpassword" name="cpassword" required placeholder="Confirm Password" class="form-control input-md" type="password">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for=""></label>
  <div class="col-md-12" style="text-align: center"> 
    <input  type="submit" value=" Register Now " class="btn btn-primary" style="text-align:center" />
    <a href="index.php" class="btn btn-primary">home</a>
  </div>
</div>
</div>
</fieldset>
</form>  
</div>

</body>
</html>

