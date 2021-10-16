<?php
include_once 'database.php';

$search_cat =$_GET['search_cat'];
$typedata =$_GET['typedata'];
$brand_view =$_GET['brand_view'];
$branch_view =$_GET['branch_view'];
$status_view =$_GET['status_view'];
$start =$_GET['start'];
$end =$_GET['end'];




$Use_Title = 1;

$title = "  \t  \t  \t --- Ticket Report ---  " . "" . "\n \t  \t  \t I HELP BD\n \t  \t Customer Relationship Department\n\n \t  \t " . $now_date . "\n\n"; //"Dump For Table $DB_TBLName from Database $DB_DBName on $now_date";
$file_type = "vnd.ms-excel";
$file_ending = "xls";


header("Content-Type: application/$file_type");
header("Content-Disposition: attachment; filename=Report_(Ticket)_$now_date.$file_ending");
header("Pragma: no-cache");
header("Expires: 0");


if ($Use_Title == 1) {
    echo("$title\n");
}
$sep = " \t "; //tabbed character
echo ("SL  \t  Brand Name  \t  Branch Name  \t  Phone Number  \t  Customer Name  \t  STATUS \t Oeder ID \n");
   
        if ($search_cat=='All') {
          $results = mysqli_query($con,"SELECT * FROM `order` WHERE  `cart_time`>='$start 00:00:01' AND `cart_time`<='$end 23:59:59' ORDER BY `order`.`id` DESC");
        }
        elseif ($search_cat=='order_id') {
          $results = mysqli_query($con,"SELECT * FROM `order` WHERE  `cart_time`>='$start 00:00:01' AND `cart_time`<='$end 23:59:59' AND `id`='".$typedata."'  ORDER BY `order`.`id` DESC");
        }else if ($search_cat=='cus_contact') {
          $results = mysqli_query($con,"SELECT * FROM `order` WHERE  `cart_time`>='$start 00:00:01' AND `cart_time`<='$end 23:59:59' AND `id`='".$typedata."'  ORDER BY `order`.`id` DESC");
        }else if ($search_cat=='brand') {
          $results = mysqli_query($con,"SELECT * FROM `order` WHERE `cart_time`>='$start 00:00:01' AND `cart_time`<='$end 23:59:59' AND `brand`='".$brand_view."' ORDER BY `order`.`id` DESC");
        }else if ($search_cat=='branch') {
          $results = mysqli_query($con,"SELECT * FROM `order` WHERE `cart_time`>='$start 00:00:01' AND `cart_time`<='$end 23:59:59' AND `branch`='".$branch_view."' ORDER BY `order`.`id` DESC");
        }else if ($search_cat=='status') {
          $results = mysqli_query($con,"SELECT * FROM `order` WHERE `cart_time`>='$start 00:00:01' AND `cart_time`<='$end 23:59:59' AND `order_status`='".$status_view."'  ORDER BY `order`.`id` DESC");
        }

$sl=1;
while ($row =mysqli_fetch_assoc($results)) {

    echo $sl++ . " \t " . $row['brand'] . " \t " . $row['branch'] . " \t " . $row['phone'] . " \t "." \t " . $row['product'] . " \t " . $row['order_status'] . " \t " . $row['order_id'] . " \t ";
    echo $row['Create Date'] . " \t ";
    echo ("\n");
}