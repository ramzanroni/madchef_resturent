<?php   
$username = "root";
$password = "iHelpBD@2017";
$hostname = "localhost";
//$hostname = "116.193.217.2";

//$username2 = "cron";    // crm,    complain,    fields    TABLES MOVED to ASTERISK Database 
//$password2 = "1234";
//$hostname2 = "103.239.253.139";

$con = mysql_connect($hostname, $username, $password) 
	or die("Unable to connect to MySQL");
mysql_select_db("restaurant",$con);

//$con2 = mysql_connect($username2, $password2, $hostname2) 
//	or die("Unable to connect to MySQL");
//mysql_select_db("asterisk",$con2);

if(!$con){
    die('Could not connect to database! Server ip - '.$hostname.' <br/>');
}
//if(!$con2){
//    die('Could not connect to database! Server ip - '.$hostname2.' <br/>');
//}







//mysql_close($connect);
?>