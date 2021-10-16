<?php 
session_start();
unset($_SESSION['user_name']);
unset($_SESSION['user_pass']);
unset($_SESSION['previlege']);
unset($_SESSION['brand']);
unset($_SESSION['branch']);
if (!isset($_SESSION['user_name']) && !isset($_SESSION['user_pass']) && !isset($_SESSION['previlege']) && !isset($_SESSION['brand']) && !isset($_SESSION['branch'])) 
{
	header("Location: http://36.255.69.216/madchef-admin/index.php");
}
else
{
	echo "Seeion don't destroy";
}
?>