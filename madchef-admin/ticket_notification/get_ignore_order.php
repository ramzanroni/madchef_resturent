<?php
include 'libs/db.php';
if (isset($_POST['brand']) && isset($_POST['branch'])) {
	$today =date("Y-m-d");
	$sql = "SELECT `id`,`brand`,`branch`,`order_id`,`cart_time` FROM `order` WHERE `cart_time`>='".$today."' AND `status`='New' AND `brand`='".$_POST['brand']."' AND `branch`='".$_POST['branch']."' AND `message_status`='0'";

	$data = mysqli_query($con,$sql);
	while ($row = mysqli_fetch_assoc($data)) {
		$now = strtotime(date("Y-m-d H:i:s"));
		$create_at = strtotime($row['date']);
		$expaire_at =strtotime('+1 minutes',$create_at);
		if($expaire_at < $now){
			send_message($row['id'],$row['brand'],$row['branch'],$row['order_id']);
		}
	}	
}


function send_message ($ticket_id,$brand,$branch,$order_id){
	$message = urlencode("Restaurant manager did not take order yet. Brand =".$brand." Branch =".$branch." Order ID =".$order_id);
	// $branch_contact = mysql_fetch_assoc(myqsl_query("SELECT `phone` FROM `asterisk`.`sms_template` WHERE `brand`='Cheez' AND `branch`='Dhanmondi'"));
	// $phone = "+88".$branch_contact['phone'];
	// $phone = "+8801639199218";
	$phone_number = "01711084673,01733788309,01305785585,01937428628,01715568511,01710454086,01639199218";
	// $phone_number = "01639199218";
	$phone_array = explode(",", $phone_number);
	foreach ($phone_array as $key => $phone) {
		$contact ="+88".$phone;
		$url = "http://sms.brilliant.com.bd:6005/api/v2/SendSMS?ApiKey=TqKYEIuJQKAEVf2zCR0yvTNEWOaD2XB1WTmmrjOO8l0=&ClientId=d3b4c920-0bee-49e5-8a7c-a104f940323a&SenderId=8809638050505&Message=$message&MobileNumbers=$contact";
		$ch = curl_init(); 
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
		curl_setopt($ch, CURLOPT_URL, $url); 
		$response = curl_exec($ch);
		curl_close($ch);
		if (empty($response)){
			echo  "Failed to send Message";
		}
		else{
			echo "Notified to head office successfully";
		}
	}
	update_status($ticket_id);
}

function update_status($ticket_id){
	$sql = "UPDATE `order` SET `message_status`='1' WHERE `id`='".$ticket_id."'";
	$data = mysqli_query($con,$sql);

}
?>