<?php  
include_once 'database.php';
include_once 'sidebar.php';
session_start();
$sql=$con->query("SELECT * FROM `users` ORDER BY `users`.`id` DESC");
$i=1;
?>
<table id="datatablesSimple"  style="font-size: 13px;"> 
    <thead>
        <tr>
            <th>#</th>
            <th>User ID</th>
            <th>User Name</th>
            <th>User Pass</th>
            <th>Designation</th>
            <th>Emaill</th>
            <th>phone</th>
            <th>Action</th>
        </tr>
    </thead>
    <tfoot>
        <tr>
         <th>#</th>
         <th>User ID</th>
         <th>User Name</th>
         <th>User Pass</th>
         <th>Designation</th>
         <th>Emaill</th>
         <th>Phone</th>
         <th>Action</th>
     </tr>
 </tfoot>
 <tbody>
    <?php
    while ($row=mysqli_fetch_assoc($sql)) 
    {
        ?>

        <tr>
            <td><?php echo $i; ?></td>
            <td class=" text-center"><?php echo $row['user_id']; ?></td>
            <td class=" text-center"><?php echo $row['user_name']; ?></td>
            <td class=" text-center"><?php echo $row['user_pass']; ?></td>
            <td class=" text-center"><?php echo $row['designation']; ?></td>
            <td class=" text-center"><?php echo $row['user_email']; ?></td>
            <td class=" text-center"><?php echo $row['phone']; ?></td>
            <td class=" text-center">                 
                <a href="#"><i class="fas fa-trash text-danger m-1 float-left" onclick="del_user(<?php echo $row['id']; ?>)"></i></a>
               
                 <a href="#"><i class="fa fa-edit m-1 float-left" data-toggle="modal" data-target="#exampleModal" onclick="user_edit(<?php echo $row['id']; ?>)"></i></a>
                
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
        <h5 class="modal-title" id="exampleModalLabel">User Update</h5>
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
    function user_edit(id){
      // alert(id);
      $.ajax({
          url:"user_edit.php",
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
     var user_id = $('#user_id_update').val();
     var user_pass = $('#user_pass_update').val();
     var user_designation = $('#user_designation_update').val();
     var user_email = $('#user_email_update').val();
     var user_phone = $('#user_phone_update ').val();

     // alert(user_id);
     // alert(user_pass);
     $.ajax({
        url:"user_edit.php",
        type:'post',
        data:{
          post_id:id,
          post_user_id:user_id,
          post_user_pass:user_pass,
          post_user_designation:user_designation,
          post_user_email:user_email,
          post_user_phone:user_phone

      },
      success: function(result){
          // alert(result);      
          console.log(result);

      }
  });
 }
</script>

