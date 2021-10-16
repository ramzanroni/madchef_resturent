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
      <h1 class="mt-4">Add Branch</h1>
      <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="http://36.255.69.216/madchef-admin/home.php">Dashboard</a></li>
        <li class="breadcrumb-item active">Add Branch</li>
      </ol>
      <div class="card mb-4">
        <div class="card-body">
          <p class="h3  p-2 text-center">Add Branch</p>
          <form>
            <br>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" style="float: right;margin-top: -48px;">+Branch</button>
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                   <div class="modal-header bg-info">
                   <button type="button" class="close" data-dismiss="modal" style="margin-right: 369px;">×</button>           
                   <h4 class="modal-title">Branch</h4>
                 </div>
                 <div class="card mb-4">
                  <div class="card-body">
                    <p class="h3  p-2 text-center">Add Branch</p>
                    <form>

                      <div class="form-group row">
                        <label for="inputPassword" class="col-sm-2 col-form-label">Brand Name</label>
                        <div class="col-sm-10">
                          <select name="brand_name" class="form-control input" required  id="brand_name">

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
                      <label for="inputPassword" class="col-sm-2 col-form-label">Branch Name</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="branch_name" placeholder="Enter Your Branch" required="">
                      </div>
                    </div>
                    <div class="subcategory" style="text-align:center;">
                      <input class="btn btn-success" type="sumbit" style="width: 150px;" value="Add Branch" name="submit" id="submit" onclick="add_branch()">
                    </div>
                  </form>
                </div>
              </div>     
            </div>
            <div class="modal-footer">
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
        include_once 'branch_data.php';
        ?>
      </div>
    </div>
  </div>
</main>


<?php 
include_once 'footer.php';

?>
<script type="text/javascript">
  function add_branch()

  {
    var add_branch_check='add_branch';
    var brand_name= $('#brand_name').val();
    var branch_name= $('#branch_name').val();
    // alert(branch_name);
    $.ajax({
      url: "fatch_data.php",
      type: "POST",
      data: {
        add_branch_check:add_branch_check,
        new_brand_name:brand_name,
        new_branch_name:branch_name  
      },
      success: function(response){
        // alert(response);
           location.reload();

    }
  });
  }


      function del_branch(id){
            // alert(id);
            var del_branch=id;
            // alert(del_id);
            $.ajax({
                url: "fatch_data.php",
                type: "POST",
                data: {
                    del_branch:del_branch  
                },
                success: function(response){
                    // alert(response);
                    location.reload();

                }
            });
        }
</script>