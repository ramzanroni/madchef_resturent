<?php 
//session_start();


if(!isset($_SESSION)) 
{ 
    session_start(); 
}
if(!isset($_SESSION['user_name']) || !isset($_SESSION['user_pass'])){
    print "<meta http-equiv=\"refresh\" content=\"0; url=http://".$_SERVER['HTTP_HOST']."/madchef-admin\" />";
}
if (isset($_POST['notification_status'])) {
    $status = $_POST['notification_status'];
    if ($status == 0) {
        echo $_SESSION['notification_status'] = 0;
    }
    if ($status == 1) {
        echo $_SESSION['notification_status'] = 1;
    }
}
?>