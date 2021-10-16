<?php
session_start();
include_once "../libs/database.php";
$brand=$_SESSION['brand'];
$branch=$_SESSION['branch'];
$phone=$_POST['phone_number'];
$sql=mysql_query("SELECT * FROM `cart`  WHERE `phone`='$phone' ORDER BY `cart`.`product` ASC");
$count=mysql_num_rows($sql);
$sub_total = 0;


$result_crm=mysql_query("SELECT * FROM `asterisk`.`crm_durbiin` WHERE phone='$phone' ORDER BY `id` DESC");
$count_crm_data=mysql_num_rows($result_crm);
// while ($row=mysql_fetch_assoc($result_crm)) 
// {
// 	echo $row['id'].'<br>';
// }


if ($count>0) 
{
	?>
	<div class="row m-3 p-3">

		<?php
		while ($row=mysql_fetch_assoc($sql)) 
		{
			?>

			<div class="col-md-12">
				<div class="col-md-6 float-left">
					<p class="h6" id="product_name" style="background: white;color: #d70f64;"><?php echo $row['product']; ?></p>
				</div>
				<div class="col-md-6 float-left">
					<p class="float-right h5">Tk = <?php echo $row['total_price']; ?></p>
				</div>
			</div>
			<div class="col-md-12">
				<div class="col-md-6 float-left">
					<?php 
					$sub_product_id=explode(",",$row['sub_product']);;
					foreach ($sub_product_id as $key => $sub_product) {
						$sql_sub_product=mysql_query("SELECT name FROM `su_product` WHERE `id`='$sub_product'");
						$row_sum_product_name=mysql_fetch_assoc($sql_sub_product);
						if($row_sum_product_name['name']!=null)
						{
						?>
						<div class="product-toppings ml-3" style="font-size: 12px;"><span><?php echo "+".$row_sum_product_name['name']; ?> </span></div>
						<?php
						}
					}
					$adons_product_id=explode(",",$row['adons_product']);
					foreach ($adons_product_id as $key => $adons_product) {
						$sql_adons_product=mysql_query("SELECT name FROM `adons_product` WHERE `id`='$adons_product'");
						$row_sum_adons_product_name=mysql_fetch_assoc($sql_adons_product);
						if($row_sum_adons_product_name['name']!=null)
						{
						?>
						<div class="product-toppings ml-3" style="font-size: 12px;"><span><?php echo $row_sum_adons_product_name['name']; ?> </span></div>
						<?php
						}
					}
					?>
				</div>
			</div>

			<?php
			$sub_total += $row['total_price'];
			$sd += $row['sd'];
			$vat += $row['vat'];
		}
		$total_pay_able_amount=($sub_total + $sd + $vat);
		?>
		<div class="col-md-12 border-top border-bottom pb-1 pt-1 text-right mt-2">
			<div class="col-md-7 float-left pt-1 p-0">
				<p class="h6">Subtotal</p>
			</div>
			<div class="col-md-1 float-left p-0">
				<p class="h6"> = </p>
			</div>
			<div class="col-md-4 float-left pt-1 p-0">
				<p class="h6 float-right"><?php echo $sub_total;?> TK</p>
			</div>               
		</div>

		<div class="col-md-12  border-bottom pb-1 pt-1 text-right mt-2">
			<div class="col-md-7 float-left pt-1 p-0">
				<p class="h6">Discount</p>
			</div>
			<div class="col-md-1 float-left p-0">
				<p class="h6"> = </p>
			</div>
			<div class="col-md-4 float-left pt-1 p-0">
				
				<div class="col-md-4 float-right">
					<div class="from-group float-right">
						<select id="discount_type" name="discount_type" class="from-control" style="height: 23px;" onchange="calculate_discount()">
							<option selected>TK</option>
							<option>%</option>
						</select>
					</div>
				</div>
				<div class="col-md-3 float-right">
					<p class="h6 float-left">
						<div class="from-group">
							<input style="width: 64px;" value="0" type="number" name="discount" id="discount" class="from-control" onchange="calculate_discount()">
						</div>
					</p>
				</div>
			</div>               
		</div>


		<div class="col-md-12 border-bottom pb-1 text-right">
			<div class="col-md-7 float-left pt-1 p-0">
				<p class="h6">SD 10 % </p>
			</div>
			<div class="col-md-1 float-left pt-1 p-0">
				<p class="h6"> = </p>
			</div>
			<div class="col-md-4 float-left pt-1 p-0">
				<p class="h6 float-right"><?php echo $sd;?> TK</p>
			</div>               
		</div>

		<div class="col-md-12 border-bottom pb-1 text-right">
			<div class="col-md-7 float-left pt-1 p-0">
				<p class="h6">VAT 10%</p>
			</div>
			<div class="col-md-1 float-left pt-1 p-0">
				<p class="h6"> = </p>
			</div>
			<div class="col-md-4 float-left pt-1 p-0">
				<p class="h6 float-right"><?php echo $vat;?> TK</p>
			</div>               
		</div>

		<div class="col-md-12 border-bottom pb-1 text-right">
			<div class="col-md-7 float-left pt-1 p-0">
				<p class="h6">Total amount (With VAT & SD )</p>
			</div>
			<div class="col-md-1 float-left pt-1 p-0">
				<p class="h6"> = </p>
			</div>
			<div class="col-md-4 float-left pt-1 p-0">
				<input type="hidden" value="<?php echo  $total_pay_able_amount;?>" readonly>
				<p class="h6 float-right"><span><?php echo $total_pay_able_amount;?></span> TK</p>
			</div>               
		</div>

		<div class="col-md-12 border-bottom pb-1 text-right">
			<div class="col-md-7 float-left pt-1 p-0">
				<p class="h6">Net Payable (After Discount)</p>
			</div>
			<div class="col-md-1 float-left pt-1 p-0">
				<p class="h6"> = </p>
			</div>
			<div class="col-md-4 float-left pt-1 p-0">
				<input type="hidden" name="total_price" id="total_price" value="<?php echo  $total_pay_able_amount;?>" readonly>
				<p class="h6 float-right"><span id="total_amount"><?php echo $total_pay_able_amount;?></span> TK</p>
			</div>               
		</div>
		<div class="col-md-12 mt-2">
			
			
				<?php  

				if ($count_crm_data>0) 
				{
					$row_crm_data=mysql_fetch_assoc($result_crm);
					?>
					<div class="form-group">
					<input type="text" class="form-control" name="customer_name" id="customer_name"  placeholder="Enter Customer Name" value="<?php echo $row_crm_data['name']; ?>">
					</div>
					<div class="form-group">
					<textarea class="form-control" id="address" rows="3" placeholder="Enter Customer Delivery Address"><?php echo $row_crm_data['location']; ?></textarea>
					</div>
					<div class="text-danger m-1" id="address_error"></div>
					
					<?php
				}
				else
				{
					?>
					<div class="form-group">
					<input type="text" class="form-control" name="customer_name" id="customer_name" placeholder="Enter Customer Name">
					</div>
					<div class="form-group">
					<textarea class="form-control" id="address" rows="3" placeholder="Enter Customer Delivery Address"></textarea>
					</div>
					<div class="text-danger m-1" id="address_error"></div>
					<?php
				}
				?>
				
			
			
			<div class="form-group">
				<input type="number" class="form-control" id="additional_phone" placeholder="Enter Additional Phone Number">
			</div>
			<div class="form-group">
				<select class="form-control" id="brand" onchange="select_branch()" hidden>
					<option value="">Select Brand</option>
					<?php  
					$select_brand=mysql_query("SELECT * FROM `brand` WHERE `status`=1");
					while($row=mysql_fetch_assoc($select_brand)){
						?>
						<option <?php if($brand ==$row['brand']){ echo 'selected';}?> value="<?php echo $row['brand']; ?>"><?php echo $row['brand']; ?></option>
						<?php
					}
					?>					
				</select>
				<div class="text-danger" id="brand_error"></div>
			</div>
			
			<div class="form-group">
				<select class="form-control" id="branch" hidden>
					<?php
					if(isset($branch)){
						echo "<option value='".$branch."'>".$branch."</option>";
					}else{
						?>
						<option value="">Select Branch</option>
						<?php
					}
					?>
				</select>
				<div class="text-danger" id="branch_error"></div>
			</div>
			
		</div>

		<div class="col-md-12 pt-3 pb-3">
			<button type="button" onclick="place_order('<?php echo $_POST['phone_number']; ?>','<?php echo $_POST['agent'];?>')" class="btn btn-danger btn-lg btn-block">Confirm Order</button>
			<!-- <button type="button" class="btn btn-danger btn-lg btn-block">Place Order</button> -->
		</div>
	</div>
	<?php
}
else
{
	?>
	<div class="row p-3 m-3">
		

		<div class="col-md-12">
			<p class="text-center">No Product selected </p>
		</div>
		<div class="col-md-12 border-top border-bottom pb-1 pt-1 text-right mt-2">
			<div class="col-md-7 float-left pt-1 p-0">
				<p class="h6">Subtotal</p>
			</div>
			<div class="col-md-1 float-left p-0">
				<p class="h6"> = </p>
			</div>
			<div class="col-md-4 float-left pt-1 p-0">
				<p class="h6 float-right">0 TK</p>
			</div>               
		</div>

		<div class="col-md-12 border-bottom pb-1 text-right">
			<div class="col-md-7 float-left pt-1 p-0">
				<p class="h6">SD</p>
			</div>
			<div class="col-md-1 float-left pt-1 p-0">
				<p class="h6"> = </p>
			</div>
			<div class="col-md-4 float-left pt-1 p-0">
				<p class="h6 float-right">0 TK</p>
			</div>               
		</div>

		<div class="col-md-12 border-bottom pb-1 text-right">
			<div class="col-md-7 float-left pt-1 p-0">
				<p class="h6">VAT 10%</p>
			</div>
			<div class="col-md-1 float-left pt-1 p-0">
				<p class="h6"> = </p>
			</div>
			<div class="col-md-4 float-left pt-1 p-0">
				<p class="h6 float-right">0 TK</p>
			</div>               
		</div>

		<div class="col-md-12 border-bottom pb-1 text-right">
			<div class="col-md-7 float-left pt-1 p-0">
				<p class="h6">Total Payable</p>
			</div>
			<div class="col-md-1 float-left pt-1 p-0">
				<p class="h6"> = </p>
			</div>
			<div class="col-md-4 float-left pt-1 p-0">
				<p class="h6 float-right">0 TK</p>
			</div>               
		</div>
	</div>

	<?php
}

if (isset($_POST['brand_check'])) 
{
	$brand=$_POST['brand'];
	$sql_select_branch=mysql_query("SELECT `branch` FROM `branch` WHERE `brand`='$brand' AND `status`=1");
	while($row=mysql_fetch_assoc($sql_select_branch))
	{
		?>
		<option value="<?php echo $row['branch']; ?>"><?php echo $row['branch']; ?></option>
		<?php
	}
}
?>

<script type="text/javascript">
	$( document ).ready(function() {
		calculate_discount();
	});
</script>