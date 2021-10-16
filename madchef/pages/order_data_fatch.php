<?php  
include_once "../libs/database.php";
if (isset($_POST['phone_number']) && isset($_POST['agent']) && isset($_POST['additional_phone']) && isset($_POST['address'])) 
{
	$phone_number=$_POST['phone_number'];
	$agent=$_POST['agent'];
	$additional_phone=$_POST['additional_phone'];
	$address=$_POST['address'];
	$discount_type=$_POST['discount_type'];
	$discount_value=$_POST['discount_value'];
	$brand=$_POST['brand'];
	$branch=$_POST['branch'];
	$customer_name=$_POST['customer_name'];
	$order_id=$phone_number.time();
	$data_from_cart=mysql_query("SELECT * FROM `cart` WHERE `phone`='$phone_number'");
	while ($row=mysql_fetch_assoc($data_from_cart)) 
	{
		$order_insert_sql="INSERT INTO `order`(`order_id`, `customer_name`, `phone`, `product`, `product_id`, `sub_product`, `adons_product`, `size`, `unit_price`, `quantity`, `discount`, `sd`, `vat`, `total_price`, `extra_instruction`, `product_not_available`, `agent`, `address`, `additional_phone`, `brand`, `branch`) VALUES ('$order_id', '$customer_name','$phone_number','".$row['product']."','".$row['product_id']."','".$row['sub_product']."', '".$row['adons_product']."','".$row['size']."','".$row['unit_price']."','".$row['quantity']."','".$row['discount']."','".$row['sd']."' ,'".$row['vat']."' ,'".$row['total_price']."' ,'".$row['extra_instruction']."','".$row['product_not_available']."', '$agent', '$address', '$additional_phone', '$brand', '$branch')";
		$result=mysql_query($order_insert_sql);
		if ($result) 
		{
			$cart_data_delete=mysql_query("DELETE FROM `cart` WHERE `phone`='$phone_number'");
			echo $order_id;
		}
		else
		{
			
			echo mysql_error();
		}
	}
	$discount_insert=mysql_query("INSERT INTO `discount`(`order_id`, `discount`, `discount_type`) VALUES ('$order_id','$discount_value','$discount_type')");
}

?>