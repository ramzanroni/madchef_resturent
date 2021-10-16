
<?php  
include_once 'database.php';
include_once 'sidebar.php';
session_start();
$sql=$con->query("SELECT * FROM `ticket_status` ORDER BY `ticket_status`.`id` DESC");
$i=1;
?>
<table id="datatablesSimple"  style="font-size: 13px;"> 
  <tr>
    <th>#</th>
    <th>Ticket Status</th>
    <th>Action</th>
  </tr>
</thead>
<tfoot>
  <tr>
   <th>#</th>
   <th>Ticket Status</th>
   <th>Action</th>
   
 </tr>
</tfoot>
<tbody>
  <?php
  while ($row=mysqli_fetch_assoc($sql)) 
  {
    ?>
    <tr>
      <td class=" text-center"><?php echo $i; ?></td>
      <td class=" text-center"><?php echo $row['status_name']; ?></td>
      <td class=" text-center">                 
        
       <a href="#"><i class="fa fa-edit m-1 float-left" data-toggle="modal" data-target="#exampleModal" onclick="status_edit(<?php echo $row['id']; ?>)"></i></a>
       <a href ="#"><i class="fas fa-trash text-danger m-1 float-left"onclick="del_status(<?php echo $row['id']; ?>)"></i></a>
     </td>
   </tr>



   <?php
   $i++;
 }
 ?>
</tbody>
</table>
<?php include_once 'sidebar.php'; ?>    
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Status Update</h5>
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
    <script type='text/javascript' src='Scripts/DataTables/jquery.dataTables.js'></script>
    <link href='Content/DataTables/css/jquery.dataTables.css' rel='stylesheet' type='text/css' />

<script type="text/javascript">

  $(document).ready(function() {
    $('.btnReload').click(function() {
      window.location.reload();
    });
  });
  function status_edit(id){
      // alert(id);
      $.ajax({
        url:"ticket_status_edit.php",
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
     var ticket_status = $('#ticket_status_update').val();


     $.ajax({
      url:"ticket_status_edit.php",
      type:'post',
      data:{
        post_id:id,
        post_ticket_status:ticket_status

      },
      success: function(result){
        alert(result);      
        console.log(result);

      }
    });
   }

 </script>

