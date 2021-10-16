<?php  
session_start();
include_once "../libs/database.php";
if(isset($_POST['search_item'])) 
{
	if (isset($_POST['item']) && $_POST['item']=="all") 
	{
		?>
		<input type="text" name="search_key" id="search_key" class="form-control" readonly>
		<?php
	}
	elseif (isset($_POST['item']) && $_POST['item']=="order_no") 
	{
		?>
		<input type="text" name="search_key" id="search_key" class="form-control" placeholder="Enter Order Number">
		<?php
	}
	elseif (isset($_POST['item']) && $_POST['item']=="brand") 
	{
		?>
		<select class="form-control" id="search_key">
			<option value="">Select Brand</option>
			<?php 
			$brand_result=mysql_query("SELECT * FROM `brand` WHERE status=1");
			while ($row=mysql_fetch_assoc($brand_result)) 
			{
				?>
				<option value="<?php echo $row['brand']; ?>"><?php echo $row['brand']; ?></option>
				<?php
			}
			?>
		</select>
		<?php
	}
	elseif (isset($_POST['item']) && $_POST['item']=="branch") 
	{
		?>
		<select class="form-control" id="search_key">
			<option value="">Select Branch</option>
			<?php 
			$branch_result=mysql_query("SELECT `branch` FROM `branch` WHERE `status`=1");
			while($row=mysql_fetch_assoc($branch_result))
			{
				?>
				<option value="<?php echo $row['branch']; ?>"><?php echo $row['branch']; ?></option>
				<?php
			}
			?>
		</select>
		<?php
	}
	elseif (isset($_POST['item']) && $_POST['item']=="phone_number") 
	{
		?>
		<input type="number" name="search_key" id="search_key" class="form-control">
		<?php
	}
	elseif (isset($_POST['item']) && $_POST['item']=="status") 
	{
		?>
		<select class="form-control" id="search_key">
			<option value="">Select Status</option>
			<?php 
			$status_sql=mysql_query("SELECT * FROM `ticket_status`");
			while($row=mysql_fetch_assoc($status_sql))
			{
				?>
				<option <?php echo $row['order_status']; ?>><?php echo $row['order_status']; ?></option>
				<?php
			}
			?>
		</select>
		<?php
	}
}
if (isset($_POST['search_result'])) 
{
	$select_type=$_POST['select_type'];
	$search_key= $_POST['search_key'];
	$start_date=$_POST['start_date'];
	$end_date=$_POST['end_date'];
	if ($select_type=="all")
	{
		$sql_search="SELECT order_id, `brand`, `branch`, `phone`, `order_status`, `agent`, `order_status`, `address`, `additional_phone`, `cart_time` FROM `order` WHERE `cart_time`>='$start_date 00:00:01' AND `cart_time`<='$end_date 23:59:59' GROUP BY `order_id` ORDER BY `id` DESC";
	}
	elseif ($select_type=="order_no") 
	{
		$sql_search="SELECT `order_id`, `brand`, `branch`, `phone`, `order_status`, `agent`, `order_status`, `address`, `additional_phone`, `cart_time` FROM `order` WHERE  `order_id` LIKE '%".$search_key."%' AND `cart_time`>='$start_date 00:00:01' AND `cart_time`<='$end_date 23:59:59' GROUP BY `order_id` ORDER BY `id` DESC";
	}
	elseif ($select_type=="brand") 
	{
		$sql_search="SELECT `order_id`, `brand`, `branch`, `phone`, `order_status`, `agent`, `order_status`, `address`, `additional_phone`, `cart_time` FROM `order` WHERE  `brand`='$search_key' AND `cart_time`>='$start_date 00:00:01' AND `cart_time`<='$end_date 23:59:59' GROUP BY `order_id` ORDER BY `id` DESC";

	}
	elseif ($select_type=="branch") 
	{
		$sql_search="SELECT `order_id`, `brand`, `branch`, `phone`, `order_status`, `agent`, `order_status`, `address`, `additional_phone`, `cart_time` FROM `order` WHERE `branch`='$search_key' AND `cart_time`>='$start_date 00:00:01' AND `cart_time`<='$end_date 23:59:59' GROUP BY `order_id` ORDER BY `id` DESC";
	}
	elseif ($select_type=="phone_number") 
	{
		$sql_search="SELECT `order_id`, `brand`, `branch`, `phone`, `order_status`, `agent`, `order_status`, `address`, `additional_phone`, `cart_time` FROM `order` WHERE `phone`='$search_key' AND `cart_time`>='$start_date 00:00:01' AND `cart_time`<='$end_date 23:59:59' GROUP BY `order_id` ORDER BY `id` DESC";
	}
	elseif ($select_type=="status") 
	{
		$sql_search="SELECT `order_id`, `brand`, `branch`, `phone`, `order_status`, `agent`, `order_status`, `address`, `additional_phone`, `cart_time` FROM `order` WHERE `order_status`='$search_key' AND `cart_time`>='$start_date 00:00:01' AND `cart_time`<='$end_date 23:59:59' GROUP BY `order_id` ORDER BY `id` DESC";
	}
	$search_result=mysql_query($sql_search);
	?>
	<div class="mt-3">
		<p class="text-center text-white h3 pt-2 pb-2 bg-danger">Search Result</p>
		<div style="overflow-x: scroll;">
			<table class="table table-hover table-bordered p-2" style="font-size: 13px;">
				<thead>
					<th>SL</th>
					<th>Order ID</th>
					<th>Brand</th>
					<th>Branch</th>
					<th>Phone</th>
					<th>Total Price</th>
					<th>Order Status</th>
					<th>Agent</th>
					<th>Delivery Address</th>
					<th>Additional Phone</th>
					<th>Order Time</th>
					<th>Last Update Time</th>
					<th>Preview</th>
				</thead>
				<tbody>

					<?php
					$sl=1;
					while ($row=mysql_fetch_assoc($search_result)) 
					{
						?>
						<tr>
							<td><?php echo $sl; ?></td>
							<td><?php echo $row['order_id']; ?></td>
							<td><?php echo $row['brand']; ?></td>
							<td><?php echo $row['branch']; ?></td>
							<td><?php echo $row['phone']; ?></td>
							<td>
								<?php 
								$result_total_price=mysql_fetch_assoc(mysql_query("SELECT SUM(`total_price`) AS 'total_price' FROM `order` WHERE `order_id`='".$row['order_id']."'"));
								echo $result_total_price['total_price'];
								?>
							</td>
							<td><?php echo $row['order_status']; ?></td>
							<td><?php echo $row['agent']; ?></td>
							<td><?php echo $row['address']; ?></td>
							<td><?php echo $row['additional_phone']; ?></td>
							<td><?php echo $row['cart_time']; ?></td>
							<td><?php echo $row['last_update_time']; ?></td>
							<th>
								<div class="row p-1 m-1">
									<div class="col-md-6 float-left">
										<i class="fas fa-eye btn btn-danger float-left" onclick="order_preview('<?php echo $row['order_id']; ?>')"></i>
									</div>
									<div class="col-md-6 float-left">
										<a href="./create_pdf/thermal_printer_invoice.php?order_id=<?php echo $row['order_id']; ?>&phone=<?php echo $row['phone']; ?>" target='blank'><i class="fas fa-print btn btn-danger float-left"></i></a>

									</div>
								</div>
							</th>

						</tr>
						<?php
						$sl++;
					}
					?>
				</tbody>
			</table>
		</div>
	</div>
	<?php

}

?>

<script>
	function order_preview(order_id)
	{
		var order_id=order_id;


		$.ajax({
			url: "pages/order_details.php",
			type: "POST",
			data: {
				order_id:order_id  
			},
			success: function(response){
				$("#load_data").html(response);
				$('#myModal').modal('show');
			}
		});
	}
</script>