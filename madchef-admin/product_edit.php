
<?php
include_once 'database.php';
if (isset($_POST['post_id'])) {
  $id_update = $_POST['post_id'];
  $brand_update = $_POST['post_brand'];
  $branch_update = $_POST['post_branch'];
  $deatails_update = $_POST['post_deatails'];
  $name_update = $_POST['post_name'];
  $price_update = $_POST['post_price'];
  $vat_update = $_POST['post_vat'];
  $sd_update = $_POST['post_sd'];
  $dicount_update = $_POST['post_dicount'];


  $sql = "UPDATE `product` SET `brand`='$brand_update',`branch`='$branch_update',`deatails`='$deatails_update',`name`='$name_update',`price`='$price_update',`vat`='$vat_update',
  `sd`='$sd_update',`dicount`='$dicount_update' WHERE `id`='$id_update'";

  echo $sql;

  $result = mysqli_query($con,$sql);
  if($sql){
    echo 'data sucessfully updated';
  }
  else{
    echo 'failed to update Record';

  }
}

$id=$_POST['id'];
$sql = "SELECT * FROM  product WHERE `id`='$id'";
$result = mysqli_query($con,$sql);
$assoc=mysqli_fetch_assoc($result);

if (isset($_POST['id'])) {

  ?>
    <div class="form-group">
<!--     <label for="input" class="col-sm-3 control-label">Id</label>
 -->    <div class="col-sm-9">
      <input type="hidden" class="form-control" name="id" id="id_update" type="text" value="<?php echo $assoc['id']; ?>" placeholder="Enter Youser Name" required="required" readonly>
    </div>
  </div>
    <br><br>

    <div class="form-group">
    <label for="input" class="col-sm-3 control-label">Brand</label>
    <div class="col-sm-9">
      <input type="text" class="form-control"name="brand_update" id="brand_update" type="text" value="<?php echo $assoc['brand']; ?>" placeholder="Enter Youser Name" required="required" readonly>
    </div>
  </div>
    <br><br>

  <div class="form-group">
    <label for="input" class="col-sm-3 control-label">Branch</label>
    <div class="col-sm-9">
      <input type="text" class="form-control"name="branch_update" id="branch_update" type="text" value="<?php echo $assoc['branch']; ?>" placeholder="Enter Youser Name" required="required" readonly>
    </div>
  </div>
   <br><br> 

    <div class="form-group">
    <label for="input" class="col-sm-3 control-label">Details</label>
    <div class="col-sm-9">
      <input type="text" class="form-control"name="deatails_update" id="deatails_update" type="text" value="<?php echo $assoc['deatails']; ?>" placeholder="Enter Youser Name" required="required">
    </div>
  </div>
   <br><br>
  <div class="form-group">
    <label for="input" class="col-sm-3 control-label">Name</label>
    <div class="col-sm-9">
      <input type="text" class="form-control"name="name_update" id="name_update" type="text" value="<?php echo $assoc['name']; ?>" placeholder="Enter Youser Name" required="required">
    </div>
  </div>
  <br><br>

  <div class="form-group">
    <label for="input" class="col-sm-3 control-label">Price</label>
    <div class="col-sm-9">
      <input type="text" class="form-control"name="price_update" id="price_update" type="text" value="<?php echo $assoc['price']; ?>" placeholder="Enter Youser Name" required="required">
    </div>
  </div>
  <br><br> 
   <div class="form-group">
    <label for="input" class="col-sm-3 control-label">Vat</label>
    <div class="col-sm-9">
      <input type="text" class="form-control"name="vat_update" id="vat_update" type="text" value="<?php echo $assoc['vat']; ?>" placeholder="Enter Youser Name" required="required">
    </div>
  </div>
  <br><br>  
  <div class="form-group">
    <label for="input" class="col-sm-3 control-label">Sd</label>
    <div class="col-sm-9">
      <input type="text" class="form-control"name="sd_update" id="sd_update" type="text" value="<?php echo $assoc['sd']; ?>" placeholder="Enter Youser Name" required="required">
    </div>
  </div>
  <br><br> 
   <div class="form-group">
    <label for="input" class="col-sm-3 control-label">Dsicount</label>
    <div class="col-sm-9">
      <input type="text" class="form-control"name="dicount_update" id="dicount_update" type="text" value="<?php echo $assoc['dicount']; ?>" placeholder="Enter Youser Name" required="required">
    </div>
  </div>
  <br><br>




  
  <?php
}

?>