<?php

include_once 'database.php';

if (isset($_POST['get_option'])) {
	$type = $_POST['get_option'];
	$sql=$con->query("SELECT subcategory FROM subcategory WHERE category='$type'");
	?>
	<select name="sub_category_name" id="sub_category_name" class="form-control"  style="padding: 0px;" >
		<option value="">Select A Sub Category</option>
		<?php
		while($row=mysqli_fetch_assoc($sql))
		{
			?>
			<option value="<?php echo $row['subcategory']; ?>"><?php echo $row['subcategory']; ?></option>
			<?php
		}
		?>
	</select>
	<?php
}



if (isset($_POST['branch'])) {
	$type = $_POST['branch'];
	$sql=$con->query("SELECT branch FROM branch WHERE brand='$type'");
	?>
	<select name="branch" id="branch" class="form-control"  style="padding: 0px;" >
		<option value="">Select A Branch</option>
		<?php
		while($row=mysqli_fetch_assoc($sql))
		{
			?>

			<option value="<?php echo $row['branch']; ?>"><?php echo $row['branch']; ?></option>

			<?php
		}
		?>
	</select>
	<?php
}





if (isset($_POST['all_product'])) {
	$type = $_POST['all_product'];
	$sql=$con->query("SELECT name FROM su_product WHERE category='$type'");
	?>
	<select name="branch" id="branch" class="form-control"  style="padding: 0px;" >
		<option value="">Select A Branch</option>
		<?php
		while($row=mysqli_fetch_assoc($sql))
		{
			?>

			<option value="<?php echo $row['name']; ?>"><?php echo $row['name']; ?></option>

			<?php
		}
		?>
	</select>
	<?php
}
