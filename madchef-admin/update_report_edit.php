
<?php
include_once 'db.php';


if (isset($_POST['post_id'])) {
	$id_update = $_POST['post_id'];
	$branch_update = $_POST['post_branch'];


	$sql = "UPDATE `ticket` SET `id`='$id_update',`branch`='$branch_update' WHERE id='$id_update'";



	$result = mysql_query($sql);
	if($sql){
		echo 'data sucessfully updated';
	}
	else{
		echo 'failed to update Record';

	}
}

$id=$_POST['id'];
echo $id;
$sql = "SELECT * FROM  ticket WHERE `id`='$id'";
$result = mysql_query($sql);
$assoc=mysql_fetch_assoc($result);

if (isset($_POST['id'])) {

	?>
		<div class="form-group">
		<label for="input" class="col-sm-3 control-label">Customer Name</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" name="id" id="id_update" type="text" value="<?php echo $assoc['cus_name']; ?>" placeholder="Enter Youser Name" required="required" readonly>
		</div>
	</div>
<br><br><br>
	<div class="form-group">
		<label for="input" class="col-sm-3 control-label">Emaill</label>
		<div class="col-sm-9">
			<input type="text" class="form-control"name="branch_name" id="branch_update" type="text" value="<?php echo $assoc['email']; ?>" placeholder="Enter Youser Name" required="required">
		</div>
	</div>


	
	<?php
}

?>