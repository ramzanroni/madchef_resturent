<?php
// include'../session.php';
  include'../database.php';
  session_start();
$start = date('Y-m-d h:i:s');
if (isset($_POST['notification'])) {
	 $nsql = "SELECT count(*) as total FROM `order`WHERE `brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."' AND `order_status` = 'New' OR `order_status`='Re_order' ORDER BY `id` DESC LIMIT 10";
	 $new_ticket = mysqli_fetch_assoc(mysqli_query($con,$nsql));
	 echo $new_ticket['total'];
	 
	
	
	
}

if (isset($_POST['ticket_id'])) {
	$ticket_id = $_POST['ticket_id'];
	$sql = "UPDATE `order` SET `order_status`='Received',`last_update_time`='$start' WHERE `id`='$ticket_id'";
	echo $sql;
	if(mysqli_query($con,$sql)){
		echo "Order Accepted";
	}else{
		echo "Order Decline";
	}
}
if (isset($_POST['new_ticket'])) {?>
	<table class="table table-hover">
		<tbody>
			<?php
			$new_ticket = 0;
			$sl=0;
			$sql = "SELECT * FROM `order` WHERE `brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."' AND `order_status` = 'New' OR `order_status` = 'Re_order' ORDER BY `id` DESC";
			$data = mysqli_query($con,$sql);
			while ($row = mysqli_fetch_assoc($data)) {
				$new_ticket = $new_ticket+1;
				?>
				<tr onclick="request_receive(<?php echo $row['id'];?>)">
					<td> <?php echo ++$sl; ?></td>
					<td> <?php echo $row['agent']; ?></td>
					<td> <?php echo $row['phone']; ?></td>
					<td> <?php echo $row['order_id']; ?></td>
					<td> <?php echo $row['superiors']; ?></td>
					<td>
						<?php echo  $row['order_status']; ?>
					</td>
					<td> <?php echo $row['cart_time']; ?></td>
				</tr>
				<?php
			}
			?>
		</tbody>
	</table>
	<?php
}
?>
