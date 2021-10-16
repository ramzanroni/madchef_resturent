<?php 
include_once "../libs/database.php";

if (isset($_POST['adons_id'])) {
	$adons_id = $_POST['adons_id'];
	$addons_price_sum = 0;
	foreach ($adons_id as $key => $id) {
		$sql = "SELECT `price` FROM `adons_product` WHERE `id`='$id'";
		$data = mysql_fetch_assoc(mysql_query($sql));
		$price =$data[price];
		$addons_price_sum += $price;
	}
	echo $addons_price_sum;
}



if (isset($_POST['val'])) 
{
	$adons_price=($_POST['val']);
	$sum= $_POST['product_price'];
	if (empty($adons_price))
	{
		echo $_POST['product_price'];
	}
	else
	{
		foreach ($adons_price as $adons_product_price) 
		{
			$sum=$sum+$adons_product_price;
		}
		echo $sum;
	}
	// $previous_total=$_POST['previous_total'];
	// $sum=0;
	
}
if (isset($_POST['quantity_increment']) && $_POST['quantity_increment']=="quantity_increment") 
{
	$final_price=0;
	$quantity= $_POST['quantity'];
	$previous_total=$_POST['previous_total'];
	$main_product_price=$_POST['main_product_price'];
	$other_product_price=$previous_total-($main_product_price*($quantity-1));
	$after_increment=$main_product_price*$quantity;
	echo $final_price=$other_product_price+$after_increment;

}

if (isset($_POST['decrement_indetify']) && $_POST['decrement_indetify']=='decrement_indetify') 
{
	 // $previous_total_price=$_POST['previous_total_price'];
	$main_product_price= $_POST['main_product_price'];
	$previous_total_price=$_POST['previous_total_price'];
	$adons=$previous_total_price-$main_product_price;


	if ($_POST['quantity']==1) 
	{
		echo $adons;
		// echo $final_price=$main_product_price+$adons;
		// $adons=$previous_total_price-$main_product_price;
		// echo $final=$main_product_price+$adons;
		
	}
	elseif ($_POST['quantity'] >1) {
		$main_product_price=$_POST['main_product_price'];
		$previous_total_price=$_POST['previous_total_price'];
		echo $final_dec_price=$previous_total_price-$main_product_price;
	}
	// else 
	// {

	// 	echo $_POST['previous_total_price'];
	// }
	
	// elseif ($_POST['quantity'] >1) {
	// 	echo $quantity=$_POST['quantity'];
	// }
	
	

		// $main_product_price=$_POST['main_product_price'];
		// $previous_total=$_POST['previous_total'];
		// echo $final_dec_price=$previous_total-$main_product_price;
	

	
}
if (isset($_POST['indenty_1'])) 
{
	if ($_POST['main_product_price']>$_POST['total']) {
		echo $_POST['total'];
	}
	
}


if (isset($_POST['cart_identy']) && $_POST['cart_identy']=='cart_funtion') 
{
	$phone=$_POST['phone'];
	$product_name=$_POST['product_name'];
	$product_id=$_POST['product_id'];
	$sub_product=implode(',',$_POST['extra_choice']);



	$adons_product_id=implode(',',$_POST['adons_product_id']);


	$product_unit_price=$_POST['product_unit_price'];
	$product_quantity=$_POST['product_quantity'];
	$total_product_price=$_POST['total_product_price'];
	$extra_instruction=$_POST['extra_instruction'];
	$product_not_available=$_POST['product_not_available'];
	$product_vat=$_POST['product_vat'];
	$product_sd=$_POST['product_sd'];


	$main_product_sd=(($product_unit_price*$product_quantity)*($product_sd/100));
	$main_product_vat=((($product_unit_price*$product_quantity)+$main_product_sd)*($product_vat/100));
	$adons_sd=0;
	$adons_vat=0;
	foreach ($_POST['adons_product_id'] as $key => $adons_product_individual_id) 
	{
		$data_adons=mysql_fetch_assoc(mysql_query("SELECT sd, vat, price FROM `adons_product` WHERE id='$adons_product_individual_id'"));
		$adons_sd_value=($data_adons['price']*$product_quantity)*($data_adons['sd']/100);
		$adons_vat_value=(($data_adons['price']*$product_quantity)+$adons_sd_value)*($data_adons['vat']/100);
		$adons_sd +=$adons_sd_value;
		$adons_vat += $adons_vat_value;
	}
	$final_sd=$main_product_sd+$adons_sd;
	$final_vat=$main_product_vat+$adons_vat;
	
	$sql=mysql_query("INSERT INTO `cart`(`phone`, `product`, `product_id`, `sub_product`, `adons_product`, `size`, `unit_price`, `quantity`, `discount`, `sd`, `vat`, `total_price`, `extra_instruction`, `product_not_available`) VALUES ('$phone','$product_name','$product_id','$sub_product','$adons_product_id','','$product_unit_price','$product_quantity','','$final_sd','$final_vat','$total_product_price','$extra_instruction','$product_not_available')");
	if ($sql) 
	{
		echo "Product Cart Successfully Done....";
	}
	else
	{
		echo "Something is Worng...";
	}
}

if (isset($_POST['product_decrement_update']) && $_POST['product_decrement_update']=='product_decrement_update') 
{
	$cart_id =$_POST['cart_id'];
	$new_quantity=$_POST['new_quantity'];
	$cartsql = "SELECT `product_id`, `adons_product` FROM `cart` WHERE `id`='$cart_id'";
	$cart_data = mysql_fetch_assoc(mysql_query($cartsql));

	$product_data = mysql_fetch_assoc(mysql_query("SELECT `price`, `vat`, `sd` FROM `product` WHERE `id`='".$cart_data['product_id']."'"));
	$product_price = $product_data['price']*$new_quantity;
	$product_sd =$product_price*($product_data['sd']/100);
	$product_vat =($product_price + $product_sd)*($product_data['sd']/100);

	$total_adons_product_sd=0;
	$total_adons_product_vat=0;
	$total_adons_product_price = 0;

	$adons_product_id = explode(",", $cart_data['adons_product']);
	foreach ($adons_product_id as $key => $adons_id) {
		$adons_data = mysql_fetch_assoc(mysql_query("SELECT `price`, `vat`, `sd` FROM `adons_product` WHERE `id`='$adons_id'"));

		$adons_product_price = $adons_data['price']*$new_quantity;
		$adons_product_sd =$adons_product_price*($adons_data['sd']/100);
		$adons_product_vat =($adons_product_price + $adons_product_sd)*($adons_data['sd']/100);

		$total_adons_product_price +=$adons_product_price;
		$total_adons_product_sd +=$adons_product_sd;
		$total_adons_product_vat +=$adons_product_vat;

		echo $adons_product_price."<br>";
	}
	$total_price = $product_price+$total_adons_product_price;
	$total_sd = $product_sd +$total_adons_product_sd;
	$total_vat = $product_vat +$total_adons_product_vat;
	mysql_query("UPDATE `cart` SET `quantity`='$new_quantity',`sd`='$total_sd', `vat`='$total_vat', `total_price`='$total_price' WHERE `id`='$cart_id'");

}

if (isset($_POST['delete_cart_id'])) {
	$cart_id = $_POST['delete_cart_id'];
	$sql_cart=mysql_query("DELETE FROM `cart` WHERE `id`='$cart_id'");
}

?>