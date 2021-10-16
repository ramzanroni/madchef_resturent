
<?php
include_once 'database.php';
if (isset($_POST['post_id'])) {
	$id_update = $_POST['post_id'];
	$brand_update = $_POST['post_brand'];
	$branch_update = $_POST['post_branch'];


	$sql = "UPDATE `branch` SET `id`='$id_update',`brand`='$brand_update',`branch`='$branch_update' WHERE id='$id_update'";

echo $sql;


	$result = mysqli_query($con,$sql);
	if($sql){
		echo 'data sucessfully updated';
	}
	else{
		echo 'failed to update Record';

	}
}

$id=$_POST['id'];
$sql = "SELECT * FROM  branch WHERE `id`='$id'";
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
	<br><br>
		<div class="form-group">
		<label for="input" class="col-sm-3 control-label">Brand</label>
		<div class="col-sm-9">
			<input type="text" class="form-control"name="brand_update" id="brand_update" type="text" value="<?php echo $assoc['brand']; ?>" placeholder="Enter Youser Name" required="required" readonly>
		</div>
	</div>

<br><br>
	<div class="form-group">
		<label for="input" class="col-sm-3 control-label">Branch</label>
		<div class="col-sm-9">
			<input type="text" class="form-control"name="branch_update" id="branch_update" type="text" value="<?php echo $assoc['branch']; ?>" placeholder="Enter Youser Name" required="required">
		</div>
	


	
	<?php
}

?>