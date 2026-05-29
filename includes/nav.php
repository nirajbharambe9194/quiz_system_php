<nav class="navbar navbar-default title1">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="dash.php?q=0"><b>Dashboard</b></a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li <?php
if (@$_GET['q'] == 0)
    echo 'class="active"';
?>><a href="dash.php?q=0">Home<span class="sr-only">(current)</span></a></li>
        <li <?php
if (@$_GET['q'] == 1)
    echo 'class="active"';
?>><a href="dash.php?q=1">Users</a></li>
    <li <?php
if (@$_GET['q'] == 2)
    echo 'class="active"';
?>><a href="dash.php?q=2">Leaderboard</a></li>
    <li <?php
if (@$_GET['q'] == 3)
    echo 'class="active"';
?>><a href="dash.php?q=3">Feedback</a></li>
        <li <?php
if (@$_GET['q'] == 4)
    echo 'class="active"';
?>><a href="dash.php?q=4">Add Quiz</a></li>
        <li <?php
if (@$_GET['q'] == 5)
    echo 'class="active"';
?>><a href="dash.php?q=5">Remove Quiz</a></li>

      </ul>
          </div>
  </div>
</nav>