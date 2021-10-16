
<?php
include_once 'database.php';
if (isset($_POST['post_id'])) {
	$id_update = $_POST['post_id'];
	$ticket_status_update = $_POST['post_ticket_status'];


	$sql = "UPDATE `ticket_status` SET `id`='$id_update',`status_name`='$ticket_status_update' WHERE id='$id_update'";



	$result = mysqli_query($con,$sql);
	if($sql){
		echo 'data sucessfully updated';
	}
	else{
		echo 'failed to update Record';

	}
}

$id=$_POST['id'];
$sql = "SELECT * FROM ticket_status WHERE `id`='$id'";
$result = mysqli_query($con,$sql);
$assoc=mysqli_fetch_assoc($result);

if (isset($_POST['id'])) {

	?>
		<div class="form-group">
<!-- 		<label for="input" class="col-sm-3 control-label">ID</label>
 -->		<div class="col-sm-9">
			<input type="hidden" class="form-control" name="id" id="id_update" type="text" value="<?php echo $assoc['id']; ?>" placeholder="Enter Youser Name" required="required" readonly>
		</div>
	</div>
<br>
	<div class="form-group">
		<label for="input" class="col-sm-3 control-label">Ticket Status</label>
		<div class="col-sm-9">
			<input type="text" class="form-control"name="ticket_status_update" id="ticket_status_update" type="text" value="<?php echo $assoc['status_name']; ?>" placeholder="Enter Youser Name" required="required">
		</div>
	</div>


	
	<?php
}

?>