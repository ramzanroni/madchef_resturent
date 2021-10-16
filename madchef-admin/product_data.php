<?php  
include_once 'database.php';
include_once 'sidebar.php';
session_start();
$sql=$con->query("SELECT * FROM `product` ORDER BY `product`.`id` DESC");
$i=1;
?>
<table id="datatablesSimple"  style="font-size: 13px;"> 
  <thead>
    <tr>
      <th>#</th>
      <th>Name</th>
      <th>Brand</th>
      <th>Branch</th>
      <th>Details</th>
      <th>Category</th>
      <th>Sub Category</th>
      <th>Size</th>
      <th>Price</th> 
      <th>Vat</th> 
      <th>Sd</th>
      <th>Type</th> 
      <th>Discount</th>
      <th>price</th>     
      <th>Status</th>
      <th colspan="3">Action</th>
    </tr>
  </thead>
  <tbody>
    <?php
    while ($row=mysqli_fetch_assoc($sql)) 
    {
      ?>

      <tr>
        <td class=" text-center"><?php echo $i; ?></td>
        <td class=" text-center"><?php echo $row['name']; ?></td>
        <td class=" text-center"><?php echo $row['brand']; ?></td>
        <td class=" text-center"><?php echo $row['branch']; ?></td>
        <td class=" text-center"><?php echo $row['deatails']; ?></td>
        <td class=" text-center"><?php echo $row['category']; ?></td>
        <td class=" text-center"><?php echo $row['subcategory']; ?></td>
        <td class=" text-center"><?php echo $row['size']; ?></td>
        <td class=" text-center"><?php echo $row['price']; ?></td>
        <td class=" text-center"><?php echo $row['vat']; ?></td>
        <td class=" text-center"><?php echo $row['sd']; ?></td>
        <td class=" text-center"><?php echo $row['type']; ?></td>
        <td class=" text-center"><?php echo $row['dicount']; ?></td>
        <td class=" text-center"><?php echo $row['price']; ?></td>
        <td>
          <?php 
          if($row['active']==Y){
            echo "<p class='text-success text-block'>Active</p>";
          }
          else{
           echo "<p class='text-danger'>Deactive</p>";
         }         
         ?>
       </td> 
       <td class=" text-center" style='border:none;'>
         <a href="#"><i class="fa fa-edit m-1 float-left" data-toggle="modal" data-target="#exampleModal" onclick="product_edit(<?php echo $row['id']; ?>)"></i></a> 

       </td>
       <td class=" text-center">
         <?php
         if($row['active']==Y){
          ?>
          <a title="Deactive Quiz" class="quiz_deactivate" href="<?php echo $row['id']; ?>">
            <center><i class="fa fa-check text-success"></i></center></a>
            <?php
          }
          else{
            ?>
            <a title="Active Quiz" class="quiz_activate" href="<?php echo $row['id']; ?>">
              <center>
                <i class="fa fa-minus-circle white"></i>


              </center></a>
              <?php 
            } 
            ?>
          </td>
          <td class=" text-center">
           <a href="#"><i class="fas fa-trash text-danger m-1 float-left" onclick="del_product(<?php echo $row['id']; ?>)"></i></a>
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
        <h5 class="modal-title" id="exampleModalLabel">Product Update</h5>
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
  function product_edit(id){
      // alert(id);
      $.ajax({
        url:"product_edit.php",
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
     var deatails = $('#deatails_update').val();
     var name = $('#name_update').val();
     var price = $('#price_update').val();
     var vat = $('#vat_update').val();
     var sd = $('#sd_update').val();
     var dicount = $('#dicount_update').val();
     $.ajax({
      url:"product_edit.php",
      type:'post',
      data:{
        post_id:id,
        post_brand:brand,
        post_branch:branch,
        post_deatails:deatails,
        post_name:name,
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

