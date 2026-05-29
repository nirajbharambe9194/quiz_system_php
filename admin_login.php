<?php include('includes/header.php'); ?>
<?php include('includes/header_import.php'); ?>
<?php include('dbconnection/dbConnection.php'); ?>
<nav class="navbar navbar-default" >
	<div class="container-fluid">
		<div class="col-lg-10">
<span class="logo">MyQuizo Mania</span></div>
		<!-- Collapsible Navbar -->
		<div class="collapse navbar-collapse" id="example-1">
		</div>
		</div>
	
	</div>
</nav>
<div class="" id="login" style="background:pink;">
  <div class="">
    <div class="">
      <div class="">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        
      </div>
      <div class="modal-body title1">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<form role="form" method="post" action="admin.php?q=index.php">
<div class="form-group" align="center">
<h4 class="modal-title"><span style="color:darkblue;font-size:3rem;font-weight: bold">Login to Manage</span></h4>
</div>
<div class="form-group">
<input type="text" name="uname" maxlength="20"  placeholder="Username" required="required" class="form-control"/> 
</div>
<div class="form-group">
<input type="password" name="password" maxlength="30" required="required" placeholder="Password" class="form-control"/>
</div>
<div class="form-group" align="center">
<input type="submit" name="login" value="Login" class="btn btn-primary" />
<a href="index.php"  class="btn btn-primary">Home</a>
</div>
</form>
</div><div class="col-md-3"></div></div>
      </div>
    </div>
  </div>
</div>