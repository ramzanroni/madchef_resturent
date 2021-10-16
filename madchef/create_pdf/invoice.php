<?php
namespace Dompdf;
require_once 'dompdf/autoload.inc.php';
include 'db.php';

?>
<?php

if (isset($_GET['id'])) {
	$order_id = $_GET['id'];
	// $order_id = '01792788718_1632823290';
	$phone = explode('_', $order_id);

	$sql1 = "SELECT `name`, `email`, `address` FROM `asterisk`.`crm_durbiin` WHERE `phone`='".$phone[0]."' LIMIT 1";
	$discount_data = mysqli_fetch_assoc(mysqli_query($con,"SELECT `discount` FROM `discount` WHERE `order_id` ='".$order_id."' "));
	$discount = $discount_data['discount'];
	$cu_details = mysqli_fetch_assoc(mysqli_query($con,$sql1));
	$dompdf = new Dompdf();

	$branch_info_sql = "SELECT * FROM `order_list` WHERE `order_id`='".$order_id."'";
	$branch_info = mysqli_fetch_assoc(mysqli_query($con,$branch_info_sql));
	$brand = $branch_info['brand'];
	$branch = $branch_info['branch'];


	$data = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM `asterisk`.`sms_template` WHERE `brand`='".$brand."' AND `branch`='".$branch."'"));
	$comapny_info = "<table>
		<tr><td colspan='3'>Mad Delivery</td></tr>
		<tr><td colspan='3'>".$data['brand']."!".$data['branch']."</td></tr>
		<tr><td>Hotline</td><td>:</td><td>".$data['Hotline']."</td></tr>
		<tr><td>Address</td><td>:</td><td>".$data['address']."</td></tr>
		<tr><td>Phone</td><td>:</td><td>".$data['phone']."</td></tr>
		<tr><td>Date</td><td>:</td><td>".date('Y-m-d H:s:i')."</td></tr>
		<tr><td>Invoice No</td><td>:</td><td>".$order_id."</td></tr>
		<tr><td colspan='3'></td></tr></table>";

	$billto = "<table class='table' width=45%><tr><td colspan='2'><b>Bill To:</b></td></tr><tr><td align='right'>Name : </td><td>".$cu_details['name']."</td></tr><tr><td align='right'>Email : </td><td>".$cu_details['email']."</td></tr><tr><td align='right'>Address : </td><td>".$cu_details['address']."</td></tr><tr><td align='right'>Phone : </td><td>".$phone[0]."</td></tr><tr><td align='right'>Order ID : </td><td>".$order_id."</td></tr><tr><td colspan='2'></td></tr></table>";

	$table_head = "<table width=100% bgcolor = '#f1f1f1'><thead align='left'><tr><th>Product Name</th><th>Size</th><th>QTY</th><th>Total</th></tr></thead><tbody>";
	$sql = "SELECT * FROM `order_list` WHERE `order_id`='".$order_id."'";
	$result = mysqli_query($con,$sql);
	while($row = mysqli_fetch_assoc($result)){
		$table_body = $table_body."<tr><td>".$row['product_name']."</td><td>".$row['product_size']."</td><td>".$row['qty']."</td><td>".$row['total_price']."</td></tr>";
		$total_price += $row['total_price'];
		$vat+= $row['vat'];
		$sd+= $row['sd'];
	}



	$table_footer = "<tr><td colspan='4'><hr><td></tr>
	<tr><td colspan='3' align='right'>Subtotal = </td><td>".$total_price." TK</td></tr>
	<tr><td colspan='3' align='right'>Vat 10% = </td><td>".$vat." TK</td></tr>
	<tr><td colspan='3' align='right'>SD =</td><td>".$sd." TK</td></tr>
	<tr><td colspan='3' align='right'>Discount =</td><td>".$discount." TK</td></tr>
	<tr><td colspan='4'><hr><td></tr>
	<tr><td colspan='3' align='right'>Total Payable= </td><td>".($total_price+$vat+$sd-$discount)." TK</td></tr>
	</tbody></table>";

	$invoice = $comapny_info.$billto.$table_head.$table_body.$table_footer;
	$dompdf->loadHtml($invoice);
	$dompdf->setPaper('A4', 'l','ndscape');
	// $customPaper = array(0,0,80,72);
	// $dompdf->set_paper($customPaper);
	$dompdf->render();
	$dompdf->stream("",array("Attachment" => false));
	exit(0);
}
?>