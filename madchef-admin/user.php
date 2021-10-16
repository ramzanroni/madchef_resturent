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
      <h1 class="mt-4">Users</h1>
      <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="http://36.255.69.216/madchef-admin/home.php">Dashboard</a></li>
        <li class="breadcrumb-item active">Add Users</li>
      </ol>
      <div class="card mb-4">
        <div class="card-body">
          <p class="h3  p-2 text-center">Add Users</p>
          <form>
            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" style="float: right;margin-top: -48px;">+Users</button>
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content p-4" style="width: 600px;">        
                  <div class="modal-header bg-info">
                   <button type="button" class="close" data-dismiss="modal" style="margin-right: 369px;">×</button>           
                   <h4 class="modal-title">Users</h4>
                 </div>
                 <div class="card mb-4 ">
                  <div class="card-body m-4">
                    <p class="h3  p-2 text-center">Add Users</p>
                    <form>

                      <div class="form-group row">
                        <label for="inputPassword" class="col-sm-3 col-form-label">Brand</label>
                        <div class="col-sm-9">
                          <select name="new_brand_name" class="form-control input" required  id="new_brand_name" onchange="fetch_branch(this.value);">

                           <option>Select A Brand Name</option>


                           <?php
                           include_once 'database.php';

                           $query = "SELECT * FROM brand";

                           $result = mysqli_query($con,$query);
                           while($row = mysqli_fetch_assoc($result)){?>

                            <option value="<?php echo $row['brand']; ?>"><?php echo $row['brand']; ?></option>

                          <?php } ?>
                        </select>   
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="inputPassword" class="col-sm-3 col-form-label">Branch</label>
                      <div class="col-sm-9">
                        <select name="new_branch_name" class="form-control input" required  id="new_branch_name">
                          <option>Select A Branch</option>
                        </select>
                      </div>
                    </div> 

                    <div class="form-group row">
                      <label for="inputPassword" class="col-sm-3 col-form-label">New User Name</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="new_user_name" placeholder="Enter Your User Name">
                      </div>
                    </div> 
                    
                    <div class="form-group row">
                      <label for="inputPassword" class="col-sm-3 col-form-label">User Designation</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="new_designation" placeholder="Enter Your Designation">
                      </div>
                    </div>
                    
                    <div class="form-group row">
                      <label for="inputPassword" class="col-sm-3 col-form-label">Email ID</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="new_email" placeholder="Enter Your Email">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="inputPassword" class="col-sm-3 col-form-label">Phone Number</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="new_phone_number" placeholder="Enter Your Phone Number">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="inputPassword" class="col-sm-3 col-form-label">User ID </label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="new_user_id" placeholder="Enter Your User Id">
                      </div>
                    </div>  
                    
                    <div class="form-group row">
                      <label for="inputPassword" class="col-sm-3 col-form-label">User Password</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="new_password" placeholder="Enter Your Password">
                      </div>
                    </div>  

                    <div class="form-group row">
                      <label for="inputPassword" class="col-sm-3 col-form-label">User Privileges</label>
                      <div class="col-sm-9">
                       <select name="new_privileges" class="form-control input" required  id="new_privileges">
                        <option value="">Select A Privileage</option>
                        <option value="0">Admin</option>
                        <option value="3">Branch </option>
                      </select>                   
                    </div>
                  </div>
                  <div class="subcategory" style="text-align:center;">
                   <input class="form-control btn btn-success" type="sumbit" style="width:122px;" value="Add User" name="submit" id="submit" onclick="add_user()">              
                 </div>
               </form>
             </div>
           </div>     
         </div>
         <!-- <div class="modal-footer">
         </div> -->
       </div>
     </div>
     </form>
   </div>
 </div>
 <div class="card mb-4">
  <div class="card-header">
    <i class="fas fa-table me-1"></i>
    DataTable Example
  </div>
  <div class="card-body" id="data_load">
   <?php 
   include_once 'user_data.php';
   ?>
 </div>
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