<?php
include 'fpdf183/fpdf.php';
include 'db.php';

class mypdf extends FPDF
{

	function myCell($w,$h,$x,$t)
	{
		$height = $h/3;
		$first = $height+2;
		$secound = $height+$height+$height+3;
		$len = strlen($t);
		if($len >15){
			$text = str_split($t,15);
			$this->SetX($x);
			$this ->cell($w,$first,$text[0],0,0,'L');
			$this->SetX($x);
			$this ->cell($w,$secound,$text[1],0,0,'L');
			$this->SetX($x);
			$this ->cell($w,$h,'',0,0,'L');
		}else{
			$this->SetX($x);
			$this ->cell($w,$h,$t,0,0,'L');
		}
	}



	function myAddress($w,$h,$x,$t)
	{
		$height = $h/3;
		$first = $height+2;
		$secound = $height+$height+3;
		$third = $height+$height+$height+4;
		$fourth = $height+$height+$height+$height+5;
		$fifth = $height+$height+$height+$height+$height+6;
		$sixth = $height+$height+$height+$height+$height+$height+7;
		$len = strlen($t);
		if($len >25){
			$text = str_split($t,25);

			$this->SetX($x);
			$this ->cell($w,$first,$text[0],0,0);

			$this->SetX($x);
			$this ->cell($w,$secound,$text[1],0,0);

			$this->SetX($x);
			$this ->cell($w,$third,$text[2],0,0);

			$this->SetX($x);
			$this ->cell($w,$fourth,$text[3],0,0);

			$this->SetX($x);
			$this ->cell($w,$fifth,$text[4],0,0);


			$this->SetX($x);
			$this ->cell($w,$sixth,$text[5],0,0);

			$this->SetX($x);
			$this ->cell($w,$h,'',0,0);
		}else{
			$this->SetX($x);
			$this ->cell($w,$h,$t,'',0,0);
		}		
	}

	function dynamic_cell($w,$h,$x,$t){
		$len     = strlen($t);
		$i=1;
		if($len >25){
			$text = str_split($t,25);
			foreach ($text as $key => $text) {
				$this->SetX($x);
				$this ->cell($w,$h,$text,0,1);			}
		}else{
			$this->SetX($x);
			$this ->cell($w,$h,$t,0,0);
		}

	}
}

$pdf = new mypdf('P','mm',array(150,80));
$pdf->AddPage();
$pdf->SetFont('Arial','B',8);
$pdf->Ln();
$w=25;
$h =5;

//##################### Company information Start ####################
$pdf->Cell(25	,3,'MadDelivery',0,0);
$pdf->Ln();


if (isset($_GET['order_id']) && isset($_GET['phone'])) {
	$order_id = $_GET['order_id'];
	$phone = $_GET['phone'];

	$branch_info_sql = "SELECT * FROM `order` WHERE `order_id`='".$order_id."'";
	$branch_info = mysqli_fetch_assoc(mysqli_query($con,$branch_info_sql));
	$brand = $branch_info['brand'];
	$branch = $branch_info['branch'];

	$data = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM `asterisk`.`sms_template` WHERE `brand`='".$brand."' AND `branch`='".$branch."'"));



	$pdf->Cell(25,3,$data['brand'].'!'.$data['branch'],0,0);
	$pdf->Ln();
	$pdf->SetFont('Arial','',8);

	$pdf->Cell(13,3,'Hotline',0,0);
	$pdf->Cell(5,3,':',0,0);
	$pdf->Cell(10,3,$data['Hotline'],0,0);
	$pdf->Ln();

	$pdf->Cell(13,3,'Address',0,0,'MT');
	$pdf->Cell(5,3,':',0,0);
	$x =$pdf->getX();
	$pdf->dynamic_cell(40,3,$x,$data['address']);
	$pdf->Ln();


	// $pdf->Cell(13,7,'Address',0,0,'MT');
	// $pdf->Cell(5,7,':',0,0);
	// $x =$pdf->getX();
	// $pdf->myAddress(10,16,$x,$data['address'],0,0);
	// $pdf->Ln();



	$pdf->Cell(13,3,'Phone',0,0);
	$pdf->Cell(5,3,':',0,0);
	$pdf->Cell(10,3,$data['phone'],0,0);
	$pdf->Ln();

	$pdf->Cell(13,3,'Date',0,0);
	$pdf->Cell(5,3,':',0,0);
	$pdf->Cell(10,3,date('Y-m-d H:s:i'),0,0);
	$pdf->Ln();


	$pdf->Cell(13,3,'Order ID',0,0);
	$pdf->Cell(5,3,':',0,0);
	$pdf->Cell(10,3,$order_id,0,0);
	$pdf->Ln();
	//##################### Company information End ####################



	$sql1 = "SELECT `name`, `email`, `address`,`other_phone` FROM `asterisk`.`crm_durbiin` WHERE `phone`='".$phone."' ORDER BY ID DESC LIMIT 1";
	$cu_details = mysqli_fetch_assoc(mysqli_query($con,$sql1));


	//##################### Bill to Start ####################
	$pdf->Ln();
	$pdf->SetFont('Arial','B',8);
	$pdf->Cell(25,3,'Bill To',0,0);
	$pdf->Ln();

	$pdf->SetFont('Arial','',8);

	$pdf->Cell(13,3,'Name',0,0);
	$pdf->Cell(5,3,':',0,0);
	$pdf->Cell(10,3,$cu_details['name'],0,0);
	$pdf->Ln();


	$pdf->Cell(13,3,'Email',0,0);
	$pdf->Cell(5,3,':',0,0);
	$pdf->Cell(10,3,$cu_details['email'],0,0);
	$pdf->Ln();

	// $pdf->Cell(13,3,'Address',0,0);
	// $pdf->Cell(5,3,':',0,0);
	// $pdf->Cell(20,3,$cu_details['address'],0,0);
	// $pdf->Ln();

	$pdf->Cell(13,3,'Address',0,0,'MT');
	$pdf->Cell(5,3,':',0,0);
	$x =$pdf->getX();
	$pdf->dynamic_cell(40,3,$x,$cu_details['address']);
	$pdf->Ln();

	$pdf->Cell(13,3,'Phone',0,0);
	$pdf->Cell(5,3,':',0,0);
	$pdf->Cell(10,3,$phone,0,0);
	$pdf->Ln();

	$pdf->Cell(13,3,'Other Phn',0,0);
	$pdf->Cell(5,3,':',0,0);
	$pdf->Cell(10,3,$cu_details['other_phone'],0,0);
	$pdf->Ln();


	$pdf->Cell(13,3,'Order ID',0,0);
	$pdf->Cell(5,3,':',0,0);
	$pdf->Cell(10,3,$order_id,0,0);
	$pdf->Ln();
	$pdf->Ln();
	//##################### Bill to End ####################



	$pdf->SetFont('Arial','B',8);
	$pdf->Cell(25,3,'Product List',0,0);
	$pdf->Ln();


	

	if (isset($order_id)) {
		$sql = "SELECT * FROM `order` WHERE `order_id`='".$order_id."'";
		$result = mysqli_query($con,$sql);

		$x = $pdf->getX();
		$pdf->Cell($w,3,'Product Name',0,0,'L');

		$pdf->Cell(10,3,'Size',0,0,'L');
		$pdf->Cell(10,3,'QTY',0,0,'L');
		$pdf->Cell(10,3,'Total',0,0,'L');
		$pdf->Ln();

		while($row = mysqli_fetch_assoc($result)){
			$x = $pdf->getX();
			$pdf->dynamic_cell($w,$h,$x,$row['product'],0,0,'L');
			$pdf->Cell(10,7,$row['product_size'],0,0,'L');
			$pdf->Cell(10,7,$row['quantity'],0,0,'L');
			$pdf->Cell(10,7,$row['total_price'],0,0,'L');
			$pdf->Ln();


			$pdf->SetFont('Arial','',6);

			$subproducts=explode(',',$row['sub_product']);
			foreach ($subproducts as $key => $subproduct) {

				$sql_subproduct_name=mysqli_fetch_assoc(mysqli_query($con, "SELECT `name` FROM `su_product` WHERE `id`='$subproduct'"));

				$x = $pdf->getX();
				$pdf->Cell(10,3,"+".$sql_subproduct_name['name'],0,0,'L');
				$pdf->Cell(10,3,'',0,0);
				$pdf->Cell(10,3,'',0,0,'L');
				$pdf->Cell(10,3,'',0,0,'L');
				$pdf->Ln();
				
			}

			$adons_product_result=mysqli_fetch_assoc(mysqli_query($con, "SELECT `adons_product` FROM `order` WHERE `order_id`='$order_id'"));
			$adons_products=explode(',',$adons_product_result['adons_product']);
			foreach ($adons_products as $key => $adons_product) {

				$sql_adons_product_name=mysqli_fetch_assoc(mysqli_query($con, "SELECT `name` FROM `adons_product` WHERE `id`='$adons_product'"));
				$x = $pdf->getX();
				$pdf->Cell(10,3,"+".$sql_adons_product_name['name'],0,0,'L');
				$pdf->Cell(10,3,'',0,0);
				$pdf->Cell(10,3,'',0,0,'L');
				$pdf->Cell(10,3,'',0,0,'L');
				$pdf->Ln();
			}
			$pdf->SetFont('Arial','B',8);
			$total_price += $row['total_price'];
			$total_sd  += $row['sd'];
			$total_vat += $row['vat'];
		}
		
		$discount_data = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM `restaurant`.`discount` WHERE `order_id` ='".$order_id."' "));
		$discount_value= $discount_data['discount'];
		$discount_type=$discount_data['discount_type'];
		if($discount_type=="TK")
		{
			$discount_amount=$discount_value;
		}
		else
		{
			$discount_amount=($total_price+$total_vat+$total_sd)*($discount_value/100);
		}

		$x = $pdf->getX();
		$pdf->Cell(60,0,'',1,0);
		$pdf->Ln(1);

		//summary
		$pdf->Cell(25,2,'',0,0);
		$pdf->Cell(15,2,'Subtotal',0,0);
		$pdf->Cell(5,2,'=',0,0);
		$pdf->Cell(10,2,$total_price,0,1,'R');
		$pdf->Ln();

		$pdf->Cell(25,2,'',0,0);
		$pdf->Cell(15,2,'Vat 10%',0,0);
		$pdf->Cell(5,2,'=',0,0);
		$pdf->Cell(10,2,$total_vat,0,1,'R');
		$pdf->Ln();


		$pdf->Cell(25,2,'',0,0);
		$pdf->Cell(15,2,'SD 10%',0,0);
		$pdf->Cell(5,2,'=',0,0);
		$pdf->Cell(10,2,$total_sd,0,1,'R');
		$pdf->Ln();

		$pdf->Cell(25,2,'',0,0);
		$pdf->Cell(15,2,'Discount'.$discount_type,0,0);
		$pdf->Cell(5,2,'=',0,0);
		$pdf->Cell(10,2,round($discount_amount),0,1,'R');
		$pdf->Ln();

		$x = $pdf->getX();
		$pdf->Cell(60,0,'',1,0);
		$pdf->Ln(1);


		$pdf->Cell(20,2,'',0,0);
		$pdf->Cell(20,2,'Total Payable',0,0);
		$pdf->Cell(5,2,'=',0,0);
		$pdf->Cell(10,2,round(($total_price+$total_vat+$total_sd)-$discount_amount),0,1,'R');//end of line
		$pdf->Ln();
		$pdf->Output();
	}
}
?>