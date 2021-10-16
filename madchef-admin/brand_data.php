
<?php  
include_once 'database.php';
$sql=$con->query("SELECT * FROM `brand` ORDER BY `brand`.`id` DESC");
$i=1;
?>
<table class="table" id="datatablesSimple"  style="font-size: 13px;">
  <thead>
    <tr>
      <th>#</th>
      <th>Brand Name</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    <?php
    while ($row=mysqli_fetch_assoc($sql)) 
      {?>
        <tr>
          <td class=" text-center"><?php echo $i; ?></td>
          <td class=" text-center"><?php echo $row['brand']; ?></td>
          <td class=" text-center">                 
            <a href ="#"><i class="fas fa-trash text-danger m-1 float-left"onclick="del_brand(<?php echo $row['id']; ?>)"></i></a>
          </td>
        </tr>
        <?php
        $i++;
      }
      ?>
    </tbody>
  </table>  
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Branch Update</h5>
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
  function branch_edit(id){
    $.ajax({
      url:"branch_edit.php",
      type:'post',
      data:{
        id:id
      },
      success: function(result){
        $('#details').html(result);
        $('#exampleModal').modal('show');  
      }
    });
  }


  function Update() {
   var id = $('#id_update').val();
   var branch = $('#branch_update').val();
   $.ajax({
    url:"branch_edit.php",
    type:'post',
    data:{
      post_id:id,
      post_branch:branch

    },
    success: function(result){
    }
  });
 }
</script>

