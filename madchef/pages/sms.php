<?php
session_start();
include_once "../libs/database.php";
$brand = $_SESSION['brand'];
$branch = $_SESSION['branch'];
if (isset($_POST['phone_number']) && isset($_POST['order_id'])) {

	$phone = $_POST['phone_number'];
	$order_id = $_POST['order_id'];


	$order_info_sql = "SELECT `order_id`,SUM(`vat`) as vat,SUM(`sd`) as sd,SUM(`total_price`) as total_price FROM `order` WHERE `order_id` LIKE '$order_id'";
	$order_info = mysql_fetch_assoc(mysql_query($order_info_sql));
	$total_Cost = ($order_info['vat'] + $order_info['sd'] + $order_info['total_price']);




	$discount_sql = "SELECT `discount` FROM `discount` WHERE `order_id` = '".$order_data['order_id']."'";
	$discount = mysql_fetch_assoc(mysql_query($discount_sql));
	$discount_price = ($total_Cost - $discount['discount']);



	$msg = "Your Order ID ".$order_info['order_id']." Total Amount = ".$order_info['total_price']." Total Discount ".$discount['discount']." Total Payable Amount = ".$discount_price." -- Regards, MadDelivery (".$branch."-".$brand.")";
	$phone = "+88".$phone;
	$message = urlencode($msg);
	// $message = $msg;
	// echo $message;
	$url = "http://sms.brilliant.com.bd:6005/api/v2/SendSMS?ApiKey=TqKYEIuJQKAEVf2zCR0yvTNEWOaD2XB1WTmmrjOO8l0=&ClientId=d3b4c920-0bee-49e5-8a7c-a104f940323a&SenderId=8809638050505&Message=$message&MobileNumbers=$phone";	
	$c = curl_init(); 
	curl_setopt($c, CURLOPT_RETURNTRANSFER, 1); 
	curl_setopt($c, CURLOPT_URL, $url); 
	$response = curl_exec($c);
	if ($response) {
		echo 'success';
	}else{
		echo 'Curl error: ' . curl_error($c);
	}
}
?>
