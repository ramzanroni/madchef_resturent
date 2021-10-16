 <?php 
 include 'database.php';


$id = $_POST['id'];


  $sql = mysqli_query($con,"SELECT * FROM `restaurant`.`order` WHERE  id='". $id."' ");

  $order = mysqli_fetch_assoc($sql)
   

 ?>


 <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-info">
        <h5 class="modal-title" id="exampleModalLabel">Order Update</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-left: 345px;color: red;"> 
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-group">
      <div class="row">
      <div class="col-md-2" style="font-size: 11px;"> <label>Customer Name</label></div>
     <div class="col-md-10">
       <input type="text" name="address" id="address" class="form-control"   value="<?php echo $order['customer_name'] ?>"
       placeholder="" readonly>
     </div>
     <br><br>
      <div class="col-md-2" style="font-size: 11px;"> <label>Product</label></div>
     <div class="col-md-10">
       <input type="text" name="address" id="address" class="form-control"   value="<?php echo $order['product'] ?>"
       placeholder="" readonly>
     </div>
     <br><br>
      <div class="col-md-2" style="font-size: 12px;"> <label>Brand</label></div>
     <div class="col-md-10">
       <input type="text" name="address" id="address" class="form-control"   value="<?php echo $order['brand'] ?>"
       placeholder="" readonly>
     </div>

     <br><br>
      <div class="col-md-2" style="font-size: 12px;"> <label>Branch</label></div>
     <div class="col-md-10">
       <input type="text" name="address" id="address" class="form-control"   value="<?php echo $order['branch'] ?>"
       placeholder="" readonly>
     </div>
     <br><br>
      <div class="col-md-2" style="font-size: 12px;"> <label>Phone</label></div>
     <div class="col-md-10">
       <input type="text" name="address" id="address" class="form-control"   value="<?php echo $order['phone'] ?>"
       placeholder="" readonly>
     </div> 
     <br><br>
      <div class="col-md-2" style="font-size: 12px;"> <label>Order Id</label></div>
     <div class="col-md-10">
       <input type="text" name="address" id="address" class="form-control"   value="<?php echo $order['order_id'] ?>"
       placeholder="" readonly>
     </div>

<?php
include 'database.php';

session_start();

  if(isset($_POST['order_id']))
{
    $order_id=$_POST['order_id'];
    $total_sum=0;
    $order_info_result=mysqli_query($con,"SELECT * FROM `order` WHERE `order_id`='$order_id'");
    while($row=mysqli_fetch_assoc($order_info_result))
    {
        $total_sum +=$row['total_price'];
        $total_sd +=$row['sd'];
        $total_vat += $row['vat'];
        ?>
        <div class="col-md-12 p-2 m-2">
            <div class="col-md-8 float-left">
            <p class="h6 text-danger"><?php echo $row['quantity']." x ".$row['product'];?></p>
            <?php  
             $subproduct_result=mysqli_fetch_assoc(mysqli_query($con,"SELECT `sub_product` FROM `order` WHERE `order_id`='$order_id'"));
             $subproducts=explode(',',$subproduct_result['sub_product']);
             foreach ($subproducts as $key => $subproduct) {
                
                 $sql_subproduct_name=mysql_fetch_assoc(mysql_query($con,"SELECT `name` FROM `su_product` WHERE `id`='$subproduct'"));
                 if ($sql_subproduct_name['name']!=null) 
                 {
                   
                ?>
                    <p class="ml-3 p-0 mt-0 mb-0"><?php echo "+".$sql_subproduct_name['name']; ?></p>
                <?php
              }
             }

             $adons_product_result=mysqli_fetch_assoc(mysqli_query($con,"SELECT `adons_product` FROM `order` WHERE `order_id`='$order_id'"));
             $adons_products=explode(',',$adons_product_result['adons_product']);
             foreach ($adons_products as $key => $adons_product) {
                
                 $sql_adons_product_name=mysqli_fetch_assoc(mysqli_query($con,"SELECT `name` FROM `adons_product` WHERE `id`='$adons_product'"));

                 if ($sql_adons_product_name['name']!=null) 
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
            $discount=mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM `discount` WHERE `order_id`='$order_id'"));
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
   </div>
 </div>
      </div>
      <div class="modal-footer">
      <button type="button"  class="btn btn-primary btnReload" data-dismiss="modal">Update</button>
      </div>
    </div>
  </div>







