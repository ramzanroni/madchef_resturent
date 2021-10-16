<?php  
include_once "../libs/database.php";
session_start();


$sql=mysql_query("SELECT * FROM `product` WHERE `brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."' AND `active` ='Y'");
while ($row=mysql_fetch_assoc($sql)) 
{
  ?>
  <div class="col-md-6 shadow-sm p-3 mb-1 bg-white rounded" data-toggle="modal" onclick="modal_open('<?php echo $row['id']; ?>')" data-target="#myModal" style="float:right;">  
    <div class="card">                
     <div class="card-body" >
      <div class="row">
        <div class="col-md-8 float-left">
          <h5 class="card-title"><?php echo $row['name']; ?></h5>
          <p class="card-text" style="font-size: 12px;"><?php echo substr($row['deatails'],0,30)."..."; ?></p> 
          <h6> from Tk <?php echo $row['price']; ?></h6>
        </div>
        <div class="col-md-4 float-left">
          <img class="product_img" src="../../madchef-admin/productimage/<?php echo $row['image']; ?>" class="img" alt="...">          
          <button type="button" class="btn btn-info btn-sm plus_btn">+
          </button> 
        </div>
      </div>
    </div>
  </div>
</div>
<?php
}

?>