
<?php
include_once 'database.php';
if (isset($_POST['post_id'])) {
	$id_update = $_POST['post_id'];
	$pro_type_update = $_POST['post_pro_type'];


	$sql = "UPDATE `product_type` SET `id`='$id_update',`type`='$pro_type_update' WHERE id='$id_update'";



	$result = mysqli_query($con,$sql);
	if($sql){
		echo 'data sucessfully updated';
	}
	else{
		echo 'failed to update Record';

	}
}

$id=$_POST['id'];
$sql = "SELECT * FROM product_type WHERE `id`='$id'";
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
<br><br><br>
	<div class="form-group">
		<label for="input" class="col-sm-4 control-label">Product Type</label>
		<div class="col-sm-8">
			<input type="text" class="form-control"name="branch_name" id="pro_type_update" type="text" value="<?php echo $assoc['type']; ?>" placeholder="Enter Youser Name" required="required">
		</div>
	</div>


	
	<?php
}

?>