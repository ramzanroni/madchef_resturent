<?php
include 'fpdf183/fpdf.php';
include 'db.php';
$pdf = new FPDF('P','mm','A4');
// $pdf = new FPDF('P','mm',array(100,80));

$pdf->AddPage();

//set font to arial, bold, 14pt
$pdf->SetFont('Arial','B',10);

//Cell(width , height , text , border , end line , [align] )

$pdf->Cell(120	,5,'MadCheaf',0,0);
$pdf->Cell(59	,5,'INVOICE',0,1);//end of line

//set font to arial, regular, 12pt
$pdf->SetFont('Arial','',10);

$pdf->Cell(120	,5,'[Street Address]',0,0);
$pdf->Cell(59	,5,'',0,1);//end of line

$pdf->Cell(120	,5,'[City, Country, ZIP]',0,0);
$pdf->Cell(25	,5,'Date',0,0);
$pdf->Cell(34	,5,date('Y/m/d H:i:s'),0,1);//end of line

$pdf->Cell(120	,5,'Phone [+12345678]',0,0);
$pdf->Cell(25	,5,'Invoice #',0,0);
$pdf->Cell(34	,5,time(),0,1);//end of line


$pdf->Cell(120	,5,'Fax [+12345678]',0,0);
$pdf->Cell(25	,5,'Order ID',0,0);
$pdf->Cell(30	,5,$_GET['id'],0,1);//end of line

//make a dummy empty cell as a vertical spacer
$pdf->Cell(189	,10,'',0,1);//end of line


if (isset($_GET['id'])) {
	$order_id = $_GET['id'];
	$phone = explode('_', $order_id);

	$sql1 = "SELECT `name`, `email`, `address` FROM `asterisk`.`crm_durbiin` WHERE `phone`='".$phone[0]."' LIMIT 1";
	$cu_details = mysqli_fetch_assoc(mysqli_query($con,$sql1));
	//billing address
	$pdf->Cell(100	,5,'Bill to',0,1);//end of line

	//add dummy cell at beginning of each line for indentation
	$pdf->Cell(10	,5,'',0,0);
	$pdf->Cell(90	,5,'Name:'.$cu_details['name'],0,1);

	$pdf->Cell(10	,5,'',0,0);
	$pdf->Cell(90	,5,'Email:'.$cu_details['email'],0,1);

	$pdf->Cell(10	,5,'',0,0);
	$pdf->Cell(90	,5,'Address:'.$cu_details['address'],0,1);

	$pdf->Cell(10	,5,'',0,0);
	$pdf->Cell(90	,5,'Phone:'.$phone[0],0,1);

	//make a dummy empty cell as a vertical spacer
	$pdf->Cell(189	,10,'',0,1);//end of line

	//invoice contents

	$pdf->Cell(47,5,'Product Name',1,0);
	$pdf->Cell(47,5,'Unite Price',1,0);
	$pdf->Cell(47,5,'Quantity',1,0);
	$pdf->Cell(47,5,'Total Amount',1,1);//end of line

	$pdf->SetFont('Arial','',10);

	//Numbers are right-aligned so we give 'R' after new line parameter
	$sql = "SELECT * FROM `order_list` WHERE `order_id`='".$order_id."'";
	$result = mysqli_query($con,$sql);
	while($row = mysqli_fetch_assoc($result)){
		$pdf->Cell(47,5,$row['product_name'],1,0);
		$pdf->Cell(47,5,$row['product_price'],1,0);
		$pdf->Cell(47,5,$row['qty'],1,0);
		$pdf->Cell(47,5,$row['total_price'],1,0);
		$pdf->Ln(5);
		$total_price += $row['total_price'];
		$total_vat = $total_price*(10/100);
		$total_sd  += $row['sd'];
	}

	//summary
	$pdf->Cell(130	,5,'',0,0);
	$pdf->Cell(20	,5,'Subtotal',0,0);
	$pdf->Cell(10	,5,'TK',1,0);
	$pdf->Cell(28	,5,$total_price,1,1,'R');//end of line

	//summary
	$pdf->Cell(130	,5,'',0,0);
	$pdf->Cell(20	,5,'Vat 10%',0,0);
	$pdf->Cell(10	,5,'TK',1,0);
	$pdf->Cell(28	,5,$total_vat,1,1,'R');//end of line


	//summary
	$pdf->Cell(130	,5,'',0,0);
	$pdf->Cell(20	,5,'SD',0,0);
	$pdf->Cell(10	,5,'TK',1,0);
	$pdf->Cell(28	,5,$total_sd,1,1,'R');//end of line


	$pdf->Cell(130	,5,'',0,0);
	$pdf->Cell(20	,5,'Total Due',0,0);
	$pdf->Cell(10	,5,'TK',1,0);
	$pdf->Cell(28	,5,$total_price+$total_vat+$total_sd,1,1,'R');//end of line
	$pdf->Output();
}
?>