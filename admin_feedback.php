<?php include('includes/admin_header.php'); ?>
<?php include_once 'dbconnection/dbConnection.php'; ?>
<?php
{

$result = mysqli_query($con, "SELECT * FROM `feedback` ORDER BY `feedback`.`date` DESC") or die('Error');
    echo '<div class="panel"><table class="table table-striped title1">
<tr><td style="vertical-align:middle"><b>S.N.</b></td><td style="vertical-align:middle"><b>Subject</b></td><td style="vertical-align:middle"><b>Username</b></td><td style="vertical-align:middle"><b>Date</b></td><td style="vertical-align:middle"><b>Time</b></td><td style="vertical-align:middle"><b>By</b></td><td style="vertical-align:middle"></td><td style="vertical-align:middle"><b>Action</b></td></tr>';
    $c = 1;
    while ($row = mysqli_fetch_array($result)) {
        $date      = $row['date'];
        $date      = date("d-m-Y", strtotime($date));
        $time      = $row['time'];
        $subject   = $row['subject'];
        $name      = $row['name'];
        $username1 = $row['username'];
        $id        = $row['id'];
        echo '<tr><td style="vertical-align:middle">' . $c++ . '</td>';
        echo '<td style="vertical-align:middle"><a title="Click to open feedback" href="dash.php?q=3&fid=' . $id . '">' . $subject . '</a></td><td style="vertical-align:middle">' . $username1 . '</td><td style="vertical-align:middle">' . $date . '</td><td style="vertical-align:middle">' . $time . '</td><td style="vertical-align:middle">' . $name . '</td>
  <td style="vertical-align:middle"><a title="Open Feedback" href="dash.php?q=3&fid=' . $id . '"><b><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span></b></a></td>';
        echo '<td style="vertical-align:middle"><a title="Delete Feedback" href="update.php?fdid=' . $id . '"><b><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></b></a></td>

  </tr>';
    }
    echo '</table></div>';
}
if (@$_GET['fid']) {
    echo '<br />';
    $id = @$_GET['fid'];
    $result = mysqli_query($con, "SELECT * FROM feedback WHERE id='$id' ") or die('Error');
    while ($row = mysqli_fetch_array($result)) {
        $name     = $row['name'];
        $subject  = $row['subject'];
        $date     = $row['date'];
        $date     = date("d-m-Y", strtotime($date));
        $time     = $row['time'];
        $feedback = $row['feedback'];
        
        echo '<div class="panel"<a title="Back to Archive" href="update.php?q1=2"><b><span class="glyphicon glyphicon-level-up" aria-hidden="true"></span></b></a><h2 style="text-align:center; margin-top:-15px;font-family: "Ubuntu", sans-serif;"><b>' . $subject . '</b></h1>';
        echo '<div class="mCustomScrollbar" data-mcs-theme="dark" style="margin-left:10px;margin-right:10px; max-height:450px; line-height:35px;padding:5px;"><span style="line-height:35px;padding:5px;">-&nbsp;<b>DATE:</b>&nbsp;' . $date . '</span>
<span style="line-height:35px;padding:5px;">&nbsp;<b>Time:</b>&nbsp;' . $time . '</span><span style="line-height:35px;padding:5px;">&nbsp;<b>By:</b>&nbsp;' . $name . '</span><br />' . $feedback . '</div></div>';
    }
}

?>