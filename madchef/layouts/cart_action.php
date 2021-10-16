	
<?php  
include_once "../libs/database.php";
$phone=$_POST['phone'];
// echo $phone;
$sql=mysql_query("SELECT * FROM `cart`  WHERE `phone`='$phone' ORDER BY `cart`.`product` ASC");
$count=mysql_num_rows($sql);
$sub_total = 0;


if ($count>0) 
{
	while ($row=mysql_fetch_assoc($sql)) 
	{
		?>
		<div class="col-md-12">
			<div class="col-md-6 float-left">
				<p class="h6" id="product_name" style="background: white;color: #d70f64;"><?php echo $row['product']; ?></p>
			</div>
			<div class="col-md-6 float-left">
				<p class="float-right h5">Tk - <?php echo $row['total_price']; ?></p>
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
				$adons_product_id=explode(",",$row['adons_product']);;
				foreach ($adons_product_id as $key => $adons_product) {
					$sql_adons_product=mysql_query("SELECT name FROM `adons_product` WHERE `id`='$adons_product'");
					$row_sum_adons_product_name=mysql_fetch_assoc($sql_adons_product);
					if($row_sum_adons_product_name['name']!=null)
					{
					?>
					<div class="product-toppings ml-3" style="font-size: 12px;"><span><?php echo "+".$row_sum_adons_product_name['name']; ?> </span></div>
					<?php
					}
				}
				?>
			</div>
			<div class="col-md-6 float-left">
				<p class="float-right">
					<i style="cursor: pointer;" onclick="product_decrement('<?php echo $row['id']; ?>','<?php echo $row['quantity']; ?>')" class="fas fa-minus text-danger pl-1"></i>
					<span id="quantity_product"><?php echo $row['quantity']; ?></span>
					<i style="cursor: pointer;" onclick="product_increment('<?php echo $row['id'];?>','<?php echo $row['quantity'];?>')" class="fas fa-plus text-danger pl-1"></i>&nbsp;&nbsp;&nbsp;&nbsp;
					<i onclick="delete_cart_item('<?php echo $row['id']; ?>')" class="far fa-trash-alt text-danger pr-1"></i>
				</p>
			</div>
		</div>

		<?php
		$sub_total += $row['total_price'];
		$sd += $row['sd'];
		$vat += $row['vat'];
	}
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

	<div class="col-md-12 border-bottom pb-1 text-right">
		<div class="col-md-7 float-left pt-1 p-0">
			<p class="h6">SD</p>
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
			<p class="h6">Total Payable</p>
		</div>
		<div class="col-md-1 float-left pt-1 p-0">
			<p class="h6"> = </p>
		</div>
		<div class="col-md-4 float-left pt-1 p-0">
			<p class="h6 float-right"><?php echo ($sub_total + $sd + $vat);?> TK</p>
		</div>               
	</div>
	<?php
}
else
{
	?>
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

	<?php
}
?>