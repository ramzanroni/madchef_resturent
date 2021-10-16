<?php
include_once 'database.php';

$search_cat =$_POST['search_cat'];
$typedata =$_POST['typedata'];
$brand_view =$_POST['brand_view'];
$branch_view =$_POST['branch_view'];
$status_view =$_POST['status_view'];
$start = $_POST['start_date'];
$end = $_POST['end_date'];

?>

<div class="box-header" data-original-title>
</div>
<div class="box box-info">
  <div class="box-body">
    <div class="table-responsive">
      <table id="example255" class="table table-bordered table-striped">
        <thead>
          <tr>
            <th>Brand Name</th>
            <th>Branch Name</th>
            <th>Addons product</th>
            <th>Phone Number</th>
            <th>Customer Name</th>
            <th>Product</th>
            <th>STATUS</th>
            <th>Oeder ID</th>
            <th>Action</th>
    <div class="box-header" data-original-title>
    <h2><i class="icon-align-justify"></i><span class="break"></span><?php echo $report_title; ?></h2>
    <div class="box-icon" style="float:right;">
        <a href="ureport_download.php?start=<?php print $start; ?>&end=<?php print $end; ?>&search_cat=<?php print $search_cat; ?>&typedata=<?php print $typedata; ?>&brand_view=<?php print $brand_view; ?>&branch_view=<?php print $branch_view; ?>&status_view=<?php print $status_view; ?>" class="btn btn-info btn_download"><i class="icon-download"></i> Download Report</a>
    </div>
</div>
          </tr>
        </thead>
        <tbody>
          <?php
         
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

          while ($row =mysqli_fetch_assoc($results)) {
           $name= $row['phone'];
           $results44 = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `asterisk`.`crm_durbiin` WHERE `phone`='$name'"));

            $myArray = "";
            ?>
            <tr>
              <td class=" text-center"><?php echo $row['brand']; ?></td>
              <td class=" text-center"><?php echo $row['branch']; ?></td>
             <td class=" text-center">
                 <?php 
                  $myArray = explode(',', $row['adons_product']);
                  // print_r($myArray);
                foreach ($myArray as  $value) {
                 
                  $results434 = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `adons_product` WHERE `id`='$value'"));
                 // print_r($results);
                 echo $results434['name'];
                 echo ",";
                }
  
                  
                ?> 
                  
                </td>
              <td class=" text-center"><?php echo $row['phone']; ?></td>
              <td class=" text-center"><?php echo $results44 ['name']; ?></td>
              <td class=" text-center"><?php echo $row['product']; ?></td>
              <td class=" text-center" id="changeStatus_<?php echo $row['id']; ?>"><?php echo $row['order_status']; ?></td>
              <td class=" text-center"><?php echo $row['order_id']; ?></td>

                <td class=" text-center">                 
                   <a href="#"><i class="fas fa-trash text-danger m-1 float-left" onclick="del_adons(<?php echo $row['id']; ?>)"></i></a>
                   <a href="#"><i class="fa fa-edit m-1 float-left" data-toggle="modal" data-target="#exampleModal" onclick="report_update(<?php echo $row['id']; ?>)"></i></a>      
                 </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>
</div>

<?php include_once 'sidebar.php'; ?>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-info">
        <h5 class="modal-title" id="exampleModalLabel">Reports Update</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-left: 345px;color: red;"> 
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <div id="details"></div>
      </div>
      <div class="modal-footer">
      <button type="button"  onclick="Update(<?php echo $row['id']; ?>)" class="btn btn-primary btnReload" data-dismiss="modal">Update</button>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $('#example').DataTable({
            pageLength: 50,
        });
    } );

    

    function report_update(id){
      // alert(id);
      $.ajax({
          url:"report_edit.php",
          type:'post',
          data:{
            id:id
        },
        success: function(result){
          // alert(result);
          $('#details').html(result);
          $('#exampleModal').modal('show');    

      }
  });
  }


  function Update() {
     var id = $('#id_update').val();
     var brand = $('#brand_update').val();
     var branch = $('#branch_update').val();
     var order = $('#order_update').val();
     var price = $('#price_update').val();
     var vat = $('#vat_update').val();
     var sd = $('#sd_update').val();
     var dicount = $('#dicount_update').val();
     $.ajax({
        url:"report_edit.php",
        type:'post',
        data:{
          post_id:id,
          post_brand:brand,
          post_branch:branch,
          post_order:order,
          post_price:price,
          post_vat:vat,
          post_sd:sd,
          post_dicount:dicount
      },
      success: function(result){
      $("#changeStatus_"+id).text(order);

      }
  });
 }
</script>

