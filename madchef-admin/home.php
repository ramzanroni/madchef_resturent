<?php
session_start();
if ($_SESSION['user_name']==null) 
{
  header("Location: http://36.255.69.216/madchef-admin/index.php");

}
include_once 'sidebar.php';
?>
<div id="layoutSidenav_content">
  <main>
    <div class="container-fluid px-4">
      
 <div class="card mb-4">
 
  <?php

 if ($_SESSION["previlege"]==3) {
    ?>
  <div class="card-body" id="data_load">
   <?php 
   include_once 'dhashboard.php';
   ?>
 </div>
    <?php    } ?> 


  <?php

 if ($_SESSION["previlege"]==0) {
    ?>
  <div class="card-body" id="data_load">
   <?php 
   include_once 'user_data.php';
   ?>
 </div>
    <?php    } ?> 



</div>
</div>
</main>


<?php 
include_once 'footer.php';

?>
<script type="text/javascript">
  function add_user()
  {
    var new_brand_name= $('#new_brand_name').val();
    var new_branch_name= $('#new_branch_name').val();
    // alert(new_branch_name);
    var new_user_name= $('#new_user_name').val();
    var new_designation= $('#new_designation').val();
    var new_email= $('#new_email').val();
    // alert(new_email);
    var new_phone_number= $('#new_phone_number').val();
    var new_user_id= $('#new_user_id').val();
    var new_password= $('#new_password').val();
    var new_privileges= $('#new_privileges').val();
    $.ajax({
      url: "fatch_data.php",
      type: "POST",
      data: {
        new_brand_name:new_brand_name,
        new_branch_name:new_branch_name,
        new_user_name:new_user_name,
        new_designation:new_designation,
        new_email:new_email,
        new_branch_name:new_branch_name,
        new_user_id:new_user_id,
        new_password:new_password,
        new_privileges:new_privileges,
        new_phone_number:new_phone_number  
      },
      success: function(response){
       var data=response;
      location.reload();

    }
  });
  }



  function fetch_branch(val){
    {
      $.ajax({
        type: 'post',
        url: 'fetch_product.php',
        data: {
          branch:val
        },
        success: function (response) {
          // alert(response);
          $('#new_branch_name').html(response);
        }
      });
    };
  };


  function del_user(id){
    var del_user=id;
            // alert(del_id);
            $.ajax({
              url: "fatch_data.php",
              type: "POST",
              data: {
                del_user:del_user  
              },
              success: function(response){
                location.reload();

              }
            });
          }
        </script>