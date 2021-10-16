<?php  
include_once 'database.php';
include_once 'sidebar.php';
session_start();
$sql=$con->query("SELECT * FROM `order` ORDER BY `order`.`id` DESC");
$i=1;
?>
<table id="datatablesSimple"  style="font-size: 13px;"> 
    <thead>
        <tr>
            <th>Brand Name</th>
            <th>Branch Name</th>
            <th>Addons product</th>
            <th>Phone Number</th>
            <th>Product</th>
            <th>STATUS</th>
            <th>Oeder ID</th>
            <th>Action</th>
        </tr>
    </thead>
    <tfoot>
        <tr>
           <th>Brand Name</th>
            <th>Branch Name</th>
            <th>Addons product</th>
            <th>Phone Number</th>
            <th>Product</th>
            <th>STATUS</th>
            <th>Oeder ID</th>
            <th>Action</th>>
        </tr>
    </tfoot>
    <tbody>
        <?php
        while ($row=mysqli_fetch_assoc($sql)) 
        {
            ?>

            <tr>
              <td class=" text-center"><?php echo $row['brand']; ?></td>
              <td class=" text-center"><?php echo $row['branch']; ?></td>
              <td class=" text-center"><?php echo $row['phone']; ?></td>
              <td class=" text-center"><?php echo $row['product']; ?></td>
              <td class=" text-center"><?php echo $row['order_status']; ?></td>
              <td class=" text-center"><?php echo $row['order_id']; ?></td>
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
              <td class=" text-center"><?php echo $row['product']; ?></td>
              <td class=" text-center"><?php echo $row['order_status']; ?></td>
              <td class=" text-center"><?php echo $row['order_id']; ?></td>

                <td class=" text-center">                 
                   <a href="#"><i class="fas fa-trash text-danger m-1 float-left" onclick="del_adons(<?php echo $row['id']; ?>)"></i></a>
                   <a href="#"><i class="fa fa-edit m-1 float-left" data-toggle="modal" data-target="#exampleModal" onclick="report_update(<?php echo $row['id']; ?>)"></i></a>      
                 </td>
            </tr>
          


            <?php
            $i++;
        }
        ?>
    </tbody>
</table>

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
    $(document).ready(function() {
      $('.btnReload').click(function() {
        window.location.reload();
    });
  });
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
          // alert(result);      
          console.log(result);

      }
  });
 }
</script>

