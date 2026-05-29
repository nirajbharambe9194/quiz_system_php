<?php
session_start();
if(isset($_SESSION['username']) && (!isset($_SESSION['key']))){
   header('location:account.php?q=1');
}
else if(isset($_SESSION['username']) && isset($_SESSION['key']) && $_SESSION['key'] == '54585c506829293a2d4c3b68543b316e2e7a2d277858545a36362e5f39'){
   header('location:dash.php?q=0');
}
else{}
?>
<?php include('includes/header.php'); ?>
<?php include('includes/header_import.php'); ?>
<?php
if (@$_GET['w']) {
    echo '<script>alert("' . @$_GET['w'] . '");</script>';
}
?>
<script>
function validateForm() {
  var y = document.forms["form"]["name"].value; 
  if (y == null || y == "") {
    document.getElementById("errormsg").innerHTML="Name must be filled out.";
    return false;
  }
  var br = document.forms["form"]["branch"].value;
  if (br == "") {
    document.getElementById("errormsg").innerHTML="Please select your branch";
    return false;
  }
  if (m.length < 10) {
    document.getElementById("errormsg").innerHTML="Passwordr must be 12 digits long";
    return false;
  }
  var g = document.forms["form"]["gender"].value;
  if (g=="") {
    document.getElementById("errormsg").innerHTML="Please select your gender";
    return false;
  }
  var x = document.forms["form"]["username"].value;
  if (x.length == 0) {
    document.getElementById("errormsg").innerHTML="Please enter a valid username";
    return false;
  }
  if (x.length < 4) {
    document.getElementById("errormsg").innerHTML="Username must be at least 4 characters long";
    return false;
  }
  var m = document.forms["form"]["phno"].value;
  if (m.length != 10) {
    document.getElementById("errormsg").innerHTML="Phone number must be 10 digits long";
    return false;
  }
  var a = document.forms["form"]["password"].value;
  if(a == null || a == ""){
    document.getElementById("errormsg").innerHTML="Password must be filled out";
    return false;
  }
  if(a.length<4 || a.length>15){
    document.getElementById("errormsg").innerHTML="Passwords must be 4 to 15 characters long.";
    return false;
  }
  var b = document.forms["form"]["cpassword"].value;
  if (a!=b){
    document.getElementById("errormsg").innerHTML="Passwords must match.";
    return false;
  }
}
</script>
</head>
<body>
<nav class="navbar navbar-default">
	<div class="container-fluid">
	
		<!-- Brand/logo -->
		<!-- <div class="navbar-header">
			<a class="navbar-brand" href="#">MyQuizo Mania</a>
		</div> -->
		<div class="col-lg-10">
<span class="logo">MyQuizo Mania</span></div>
		<!-- Collapsible Navbar -->
		<div class="collapse navbar-collapse" id="example-1">
			<ul class="nav navbar-nav">
        <li><a href="Login_page.php">Login</a></li>
				<li><a href="registration.php">Register</a></li>
			</ul>
		</div>
		</div>
	
	</div>
</nav>
<div class="container" style="margin-top: 20px;">
<div class="row">
<div class="col-md-12">
  <img src="image/bg.jpg" class="img-responsive" alt="no image found"></img>
  <div class="row footer " style="margin: -200px 0px 0px 0px;">
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
