<?php 
session_start();
include_once "../libs/database.php";
if (isset($_POST['id'])) 
{
	$product_id=$_POST['id'];
	$sql=mysql_query("SELECT * FROM `product` WHERE `id`='$product_id'");
	$row=mysql_fetch_assoc($sql);
	?>
	<div class="modelImg">
		<img class="model_img" src="../../madchef-admin/productimage/<?php echo $row['image']; ?>"/>
	</div>
	<div class="modal-body">
		<div class="col-md-12">
			<div class="col-md-9 float-left">
				<p class="h3"><?php echo $row['name']; ?></p>
				<p><?php echo $row['deatails']; ?></p>
				<input type="text" name="product_id" id="product_id" hidden value="<?php echo $row['id']; ?>" >
				<input type="text" name="product_vat" id="product_vat" hidden value="<?php echo $row['vat']; ?>">
				<input type="text" name="product_sd" id="product_sd" hidden value="<?php echo $row['sd']; ?>">
			</div>
			<div class="col-md-3 float-left">
				<p class="h5">Tk = <?php echo $row['price']; ?></p>
			</div>
		</div> 
		<div class="col-md-12">
			
			<?php 
			$extra_item= $row['subcategory'];
			$explode_extra_item=explode(",",$extra_item);

			foreach ($explode_extra_item as $value) 
			{
				?>
				<div class="col-md-12">
					<h6><?php echo $value; ?></h6>
					<div class="left" style="float:left; margin-left: 30px;">
						<?php 
						$brand=$row['brand'];
						$branch=$row['branch'];
						$sql_sp=mysql_query("SELECT * FROM `su_product` WHERE `brand`='$brand' AND `branch`='$branch' AND `category`='$value'");
						while ($row_sp=mysql_fetch_assoc($sql_sp)) 
						{
							// echo $row_sp['name'];
							?>

							<div class="radio" id="sub_product">
								<label><input class="m-2" value="<?php echo $row_sp['id'];?>" type="radio" id="sub_product_id" name="<?php echo $value;?>" ><?php echo $row_sp['name']; ?></label><br>

							</div>


							<?php
						}

						?>
					</div>
				</div>
				<?php
			}
			?>
			<div class="col-md-12">
				<?php 
					$sql_adons_status_result=mysql_query("SELECT `adons_status` FROM `product` WHERE `id`='$product_id' AND `adons_status`='Yes'");
					$row_adons_status=mysql_fetch_assoc($sql_adons_status_result);
					if($row_adons_status['adons_status']=='Yes')
					{
						?>
						<h6>Add On's</h6>
				<div class="">
					<table style="width: 100%; margin-left: 30px;">
						<?php  
						$sql_addons=mysql_query("SELECT * FROM `adons_product` WHERE brand='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."'");
						while ($row_addons=mysql_fetch_assoc($sql_addons)) 
						{
							?>
							<tr>
								<td>

									<input type="checkbox" value="<?php echo $row_addons['price'].".".$row_addons['id']; ?>" id="<?php echo $row_addons['id']; ?>" name="add_ons" onclick="adons_product('<?php echo  $row['price']; ?>')"  />										
									<label> <?php echo $row_addons['name']; ?></label>
								</td>
								<td class="float-right mr-5"><p>Tk <?php echo $row_addons['price']; ?></p></td>
							</tr>

							<?php
						}
						?>

					</table>
				</div>
						<?php
					}
				
				?>
				<div class="col-md-12">
						<hr>
					</div>
				<div class="col-md-12">
					<p  class="float-right" style="margin-right: 0px;"> Total Tk = <span id="total_product_price"><?php echo $row['price']; ?></span></p>
				</div>
				<div class="col-md-12" style="visibility: hidden; height: 0px; overflow: hidden;">
					<p class="h3">Special instructions</p>
					<p>Any specific preferences? Let the restaurant know.</p>
					<div class="form-group">
						<textarea class="form-control" id="extra_instruction" rows="3" placeholder="e.g. no mayo"></textarea>
					</div>
				</div>
				<div class="col-md-12" style="visibility: hidden; height: 0px; overflow: hidden;">
					<p class="h3">If this product is not available</p>
					<div class="form-group">
						<select class="form-control" id="product_not_available">
							<option value="Remove it from my order">Remove it from my order</option>
							<option value="Cancel whole order">Cancel whole order</option>
							<option value="Call me">Call me</option>
						</select>
					</div>
				</div>
			</div>
			<div class="col-md-12 shadow p-3 mb-5 bg-white rounded">
				<div class="col-md-2 mt-2 float-left">
					<!-- <p class="h5"><span class="p-1">-</span> <span class="p-1">6</span> <span class="p-1">+</span></p> -->
					<button onclick="decrement('<?php echo $row['price']; ?>')" class="float-left">-</button>
					<input readonly style="width: 39px;margin-left: 2px;margin-right: 2px;" id="quantity" value="1"  type="number" min=1 max=110>				

					<button onclick="increment('<?php echo $row['price']; ?>')" class="float-right"><span>+</span></button>
				</div>
				<div class="col-md-10 float-left">
					<div class="col-md-12">
						<button type="button" onclick="add_to_cart('<?php echo $row['name'];?>', <?php echo $row['price']; ?> )" class="btn btn-danger btn-lg btn-block">Add To Cart</button>
					</div>
				</div>
			</div>
		</div>
	</div> 

	<?php
}
?>
