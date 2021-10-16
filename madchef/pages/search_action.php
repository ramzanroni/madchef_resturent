<?php 
session_start();
include_once "../libs/database.php";
if (isset($_POST['search_key'])) 
{
	$search_key=$_POST['search_key'];

	$search_data=mysql_query("SELECT * FROM `order` WHERE `order_id` LIKE '%".$search_key."%' AND `brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."'");

	?>
	<p class="text-center text-white h3 bg-danger mt-2 mb-2 pt-2 pb-2">Order Details</p>
	<table class="table table-hover table-bordered" style="font-size: 12px; overflow: scroll;">
		<thead class="thead-dark">
			<th>SL</th>
			<th>Order ID</th>
			<th>Product Name</th>
			<th>Sub Product</th>
			<th>Adons Product</th>
			<th>Size</th>
			<th>Quantity</th>
			<th>Discount</th>
			<th>Total Price</th>
			<th>Delivery Address</th>
			<th>Order Status</th>
			<th>Agent</th>
			<th>Brand</th>
			<th>Branch</th>
			<th>Date</th>
		</thead>
		<tbody>
			<?php 
			$sl=1;
			while ($row=mysql_fetch_assoc($search_data)) 
			{
				?>
				<tr>
					<td><?php echo $sl; ?></td>
					<td><?php echo $row['order_id']; ?></td>
					<td><?php echo $row['product']; ?></td>
					<td>
						<?php 
						$sub_products=explode(',',$row['sub_product']); 
						foreach ($sub_products as $key => $sub) 
					 {
					 	$sub_product_data=mysql_fetch_assoc(mysql_query("SELECT name FROM `su_product` WHERE id='$sub'"));
					 	echo $sub_product_data['name']."<br><br>";
					 }
						?>
							
					</td>
					<td>
					<?php
					 $adons=explode(',', $row['adons_product']); 
					 foreach ($adons as $key => $adons_product) 
					 {
					 	$adons_data=mysql_fetch_assoc(mysql_query("SELECT name FROM `adons_product` WHERE id='$adons_product'"));
					 	echo $adons_data['name']."<br><br>";
					 }
					 ?>
					 	
					 </td>
					<td><?php echo $row['size']; ?></td>
					<td><?php echo $row['quantity']; ?></td>
					<td><?php echo $row['discount']; ?></td>
					<td><?php echo $row['total_price']; ?></td>
					<td><?php echo $row['address']; ?></td>
					<td><?php echo $row['order_status']; ?></td>
					<td><?php echo $row['agent']; ?></td>
					<td><?php echo $row['brand']; ?></td>
					<td><?php echo $row['branch']; ?></td>
					<td><?php echo $row['cart_time']; ?></td>
				</tr>
				<?php
				$sl++;
			}
			?>
		</tbody>
	</table>

	<?php
}

?>