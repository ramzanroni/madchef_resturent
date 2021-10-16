<?php
include_once 'database.php';
      session_start();


if (isset($_REQUEST['quiz_deactivate_id'])) {
	$user_deactivate_id = $_REQUEST['quiz_deactivate_id'];
	$sql = "UPDATE `product` SET active = 'N' WHERE `id` = ". $user_deactivate_id;
	$result_del_uer =  mysqli_query($con,$sql);
	if($result_del_uer){
		echo "Deactivate Successfully";
	}else{
		echo "Not Deactivate";
	}
}