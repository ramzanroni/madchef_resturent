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
            <h1 class="mt-4">Add Subcategory</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="http://36.255.69.216/madchef-admin/home.php">Dashboard</a></li>
                <li class="breadcrumb-item active">Add Subcategory</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <p class="h3  p-2 text-center">Add Subcategory</p>
            <form>
            <br>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" style="float: right;margin-top: -48px;">+Subcategory</button>
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header bg-info">
                   <button type="button" class="close" data-dismiss="modal" style="margin-right: 369px;">×</button>           
                   <h5 class="modal-title">Subcategory</h5>
                 </div>
                 <div class="card mb-4">
                  <div class="card-body">
                    <p class="h3  p-2 text-center">Add Subcategory</p>
                    <form>

                        <div class="form-group row">
                    <label for="inputPassword" class="col-sm-3 ">Category</label>
                  <div class="col-sm-9">
                  <select name="category_name" class="form-control input" required  id="category_name" required>

                           <option>Select A Category Name</option>


                           <?php
                           include_once 'database.php';

                           $query = "SELECT * FROM  category";

                           $result = mysqli_query($con,$query);
                           while($row = mysqli_fetch_assoc($result)){?>

                              <option value="<?php echo $row['category']; ?>"><?php echo $row['category']; ?></option>

                          <?php } ?>
                      </select>    
                  </div>
                </div>
                 </div>

                  <div class="form-group row">
                    <label for="inputPassword" class="col-sm-3">Sub category</label>
                  <div class="col-sm-9">
                   <input type="text" class="form-control" id="subcategory_name" placeholder="Enter Your Subcategory" style="width: 354px;">

                  </div>
                </div>
                    <div class="subcategory" style="text-align:center;">
                      <input class="form-control btn btn-success"  style="width: 150px;" type="sumbit" value="Add Subcategory" name="submit" id="submit" onclick="add_subcategory()">

                    </div>
                  </form>
                </div>
              </div>     
            </div>
           <!--  <div class="modal-footer">
            </div> -->
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
            include_once 'sub_category_data.php';
            ?>
        </div>
    </div>
</div>
</main>
<?php 
include_once 'footer.php';

?>
<script type="text/javascript">
    function add_subcategory()
    {
        var category_name= $('#category_name').val();
        var subcategory_name= $('#subcategory_name').val();
        // alert(category_name);   
        // alert(subcategory_name);
        $.ajax({
            url: "fatch_data.php",
            type: "POST",
            data: {
                category_name:category_name,
                subcategory_name:subcategory_name  
            },
            success: function(response){
           
            location.reload();

        }
    });
    }

      function del_subcategory(id){
            // alert(id);
            var del_subcategory=id;
            // alert(del_id);
            $.ajax({
                url: "fatch_data.php",
                type: "POST",
                data: {
                    del_subcategory:del_subcategory  
                },
                success: function(response){
                    // alert(response);
                    location.reload();

                }
            });
        }

</script>