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
            <h1 class="mt-4">Add Category</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="http://36.255.69.216/madchef-admin/home.php">Dashboard</a></li>
                <li class="breadcrumb-item active">Add Category</li>
            </ol>
                <div class="card mb-4">
                    <div class="card-body">
                        <p class="h3  p-2 text-center">Add Category</p>
                        <form>
                            <br>
                            <meta charset="utf-8">
                            <meta name="viewport" content="width=device-width, initial-scale=1">
                            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
                            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
                            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal" style="float: right;margin-top: -48px;">+Category</button>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">

                                  <!-- Modal content-->
                                  <div class="modal-content">
                                   <div class="modal-header bg-info">
                                     <button type="button" class="close" data-dismiss="modal" style="margin-right: 369px;">×</button>           
                                     <h4 class="modal-title">Category</h4>
                                 </div>
                               
                                     <div class="card mb-4">
                                        <div class="card-body">
                                            <p class="h3  p-2 text-center">Add Category</p>
                                            <form>
                                                <div class="form-group row">
                                                    <label for="inputPassword" class="col-sm-3 col-form-label">Category</label>
                                                    <div class="col-sm-9">
                                                      <input type="text" class="form-control" id="new_category_name" placeholder="Enter Your Category" required>

                                                   </div>
                                               </div>
                                               <br>
                                               <div class="category" style="text-align:center;">
                                               <input class="form-control btn btn-success" type="sumbit" value="Add Category" name="submit" id="submit" onclick="add_category()" style="width: 122px;">

                                            </div>
                                        </form>
                                    </div>
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
                    include_once 'category_data.php';
                    ?>
                </div>
            </div>
        </div>
    </main>
    <?php 
    include_once 'footer.php';

?>
<script type="text/javascript">
    function add_category()
    {
        var new_category_name= $('#new_category_name').val();
        // alert(brand_name);
        $.ajax({
                url: "fatch_data.php",
                type: "POST",
                data: {
                    new_category_name:new_category_name  
                },
                success: function(response){
                   // alert(response);
                   location.reload();

                }
            });
    }



    
      function del_category(id){
            // alert(id);
            var del_category=id;
            // alert(del_id);
            $.ajax({
                url: "fatch_data.php",
                type: "POST",
                data: {
                    del_category:del_category  
                },
                success: function(response){
                    // alert(response);
                    location.reload();

                }
            });
        }
</script>