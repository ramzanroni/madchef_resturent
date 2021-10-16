<?php
namespace Dompdf;
require_once 'dompdf/autoload.inc.php';
include 'db.php';

if (isset($_GET['id'])) {
	$order_id = $_GET['id'];
	$phone = explode('_', $order_id);

	$sql1 = "SELECT `name`, `email`, `address` FROM `asterisk`.`crm_durbiin` WHERE `phone`='".$phone[0]."' LIMIT 1";
	$cu_details = mysqli_fetch_assoc(mysqli_query($con,$sql1));
	$dompdf = new Dompdf();

	$table_header = "<table align=center width=100%><tr><td>Name : </td><td>".$cu_details['name']."</td></tr><tr><td>Email : </td><td>".$cu_details['email']."</td></tr><tr><td>Address : </td><td>".$cu_details['address']."</td></tr><tr><td>Phone : </td><td>".$phone[0]."</td></tr></table>";
	
	$table_head = "<table><thead><tr><th>Product Name</th><th>QTY</th><th>Total</th></tr></thead><tbody>";
	// $table_body = 0;
	$sql = "SELECT * FROM `order_list` WHERE `order_id`='".$order_id."'";
	$result = mysqli_query($con,$sql);
	while($row = mysqli_fetch_assoc($result)){
		$table_body += "<tr><td>".$row['product_name']."></td><td>".$row['qty']."</td><td>".$row['total_price']."</td></tr>";
		$total_price += $row['total_price'];
		$total_vat = $total_price*(10/100);
		$total_sd  += $row['sd'];
	}

	$table_footer = "<tr><td colspan='2'>Subtotal = </td><td>".$total_pric."></td></tr><tr><td colspan='2'>Vat 10%</td><td". $total_vat."</td></tr><tr><td colspan='2'>SD =</td><td>".$total_sd."</td></tr><tr><td colspan='2'>Total = </td><td".$total_price+$total_vat+$total_sd."</td></tr></tbody></table>";

	$invoice = $table_header.$table_head.$table_body.$table_footer;

	$dompdf->loadHtml($table_body);
	$dompdf->setPaper('A4', 'l','ndscape');
	// $customPaper = array(0,0,340,650);
	// $dompdf->set_paper($customPaper);
	$dompdf->render();
	$dompdf->stream("",array("Attachment" => false));
	exit(0);
}
?>