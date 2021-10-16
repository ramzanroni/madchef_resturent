<?php
session_start();
include_once "../libs/database.php";
if(isset($_POST['order_id']))
{
    $order_id=$_POST['order_id'];
    $total_sum=0;
    $order_info_result=mysql_query("SELECT * FROM `order` WHERE `order_id`='$order_id'");
    ?>
    <p class="col-md-12 pt-4 pb-4 mb-2 text-center text-white bg-danger h3"><?php echo $order_id; ?></p>
    <?php 
    while($row=mysql_fetch_assoc($order_info_result))
    {
        $total_sum +=$row['total_price'];
        $total_sd +=$row['sd'];
        $total_vat += $row['vat'];
        ?>
        <div class="col-md-12 p-2 m-2">
            
            <div class="col-md-8 float-left">
            <p class="h6 text-danger"><?php echo $row['quantity']." x ".$row['product'];?></p>
            <?php  
             $subproduct_result=mysql_fetch_assoc(mysql_query("SELECT `sub_product` FROM `order` WHERE `order_id`='$order_id'"));
             $subproducts=explode(',',$subproduct_result['sub_product']);
             foreach ($subproducts as $key => $subproduct) {
                
                 $sql_subproduct_name=mysql_fetch_assoc(mysql_query("SELECT `name` FROM `su_product` WHERE `id`='$subproduct'"));
                 if($sql_subproduct_name['name']!=null)
                 {
                ?>
                    <p class="ml-3 p-0 mt-0 mb-0"><?php echo "+".$sql_subproduct_name['name']; ?></p>
                <?php
                 }
             }

             $adons_product_result=mysql_fetch_assoc(mysql_query("SELECT `adons_product` FROM `order` WHERE `order_id`='$order_id'"));
             $adons_products=explode(',',$adons_product_result['adons_product']);
             foreach ($adons_products as $key => $adons_product) {
                
                 $sql_adons_product_name=mysql_fetch_assoc(mysql_query("SELECT `name` FROM `adons_product` WHERE `id`='$adons_product'"));
                 if($sql_adons_product_name['name']!=null)
                 {
                ?>
                    <p class="ml-3 p-0 mt-0 mb-0"><?php echo "+".$sql_adons_product_name['name']; ?></p>
                <?php
                 }
             }
            
            ?>
            </div>
            <div class="col-md-4 float-left ml-0 pl-4">
                <p class="float-rigth">Tk - <?php echo $row['total_price']; ?></p>
            </div>
        </div>
        <div class="col-md-12 mt-2 mb-2">
            <hr>
        </div>

<?php
    }
    ?>
    <div class="col-md-12">
        <div class="col-md-9 p-0 m-0 float-left">
            <p align="right">Subtotal <span class="m-2"> = </span></p>
        </div>
        <div class="col-md-3 p-0 m-0 float-left">
            <p><?php echo $total_sum." TK"; ?></p>
        </div>
        <div class="col-md-9 p-0 m-0 float-left">
        <p align="right">SD (10%) <span class="m-2"> = </span></p>
        </div>
        <div class="col-md-3 p-0 m-0 float-left">
            <p><?php echo $total_sd." TK"; ?></p>
        </div>
        <div class="col-md-9 p-0 m-0 float-left">
        <p align="right">VAT (10%) <span class="m-2"> = </span></p>
        </div>
        <div class="col-md-3 p-0 m-0 float-left">
            <p><?php echo $total_vat." TK"; ?></p>
        </div>
        <div class="col-md-9 p-0 m-0 float-left">
        <?php 
            $discount=mysql_fetch_assoc(mysql_query("SELECT * FROM `discount` WHERE `order_id`='$order_id'"));
            $discount_value= $discount['discount'];
            $discount_type=$discount['discount_type'];
            $total_payable_amount = ($total_sum+$total_vat+$total_sd);
            if($discount_type=="TK")
            {
                $discount_amount=$discount_value;
            }
            else
            {
                $discount_amount=$total_payable_amount*($discount_value/100);
            }
            ?>
            <p align="right"> Discount ( <?php echo $discount_type?> ) <span class="m-2">= </span></p>
        </div>
        <div class="col-md-3 p-0 m-0 float-left">
            <p>
            <?php
            echo $discount_amount." TK";
            ?>
            </p>
        </div>
        <div class="col-md-12">
            <hr>
        </div>
        <div class="col-md-9 p-0 m-0 float-left">
            <p align="right">Total Payable Amount <span class="m-2"> = </span></p>
        </div>
        <div class="col-md-3 p-0 m-0 float-left">
            <p><?php echo round(($total_sum+$total_vat+$total_sd)-$discount_amount)." TK"; ?></p>
        </div>
    </div>
    <?php
}
?>
