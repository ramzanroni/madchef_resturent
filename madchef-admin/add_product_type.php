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
      <h1 class="mt-4">Add Product Type</h1>
      <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="http://36.255.69.216/madchef-admin/home.php">Dashboard</a></li>
        <li class="breadcrumb-item active">Add Product</li>
      </ol>
      <div class="card mb-4">
        <div class="card-body">
          <p class="h3  p-2 text-center">Add Product Type</p>
          <form>
            <br>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" style="float: right;margin-top: -48px;">+Product Type</button>
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
               <div class="modal-header bg-info">            
                 <button type="button" class="close" data-dismiss="modal" style="margin-right: 369px;">×</button>           
                   <h4 class="modal-title">Product</h4>
                 </div>
                 <div class="card mb-4">
                  <div class="card-body">
                    <p class="h3  p-2 text-center">Add Product Type</p>
                    <form>

                    <div class="form-group row">
                      <label for="inputPassword" class="col-sm-3 col-form-label">Product Type</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="product_type" placeholder="Enter Your Product Type">
                      </div>
                    </div>
                     <div class="category" style="text-align:center;">
                      <input class="btn btn-success" type="sumbit" style="width:122px;" value="Product Type" name="submit" id="submit" onclick="add_product_type()">
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
    include_once 'product_type_data.php';
    ?>
  </div>
</div>
</div>
</main>
<?php 
include_once 'footer.php';

?>
<script type="text/javascript">
  function add_product_type()
  {
    var add_product_check='add_product_type';
    var product_type= $('#product_type').val();
    $.ajax({
      url: "fatch_data.php",
      type: "POST",
      data: {
        add_product_check:add_product_check,
        product_type:product_type
      },
      success: function(response){
      location.reload();

    }
  });
  }
    function Type_delet(id){
            var Type_delet=id;
            // alert(Type_delet);
            $.ajax({
                url: "fatch_data.php",
                type: "POST",
                data: {
                    Type_delet:Type_delet  
                },
                success: function(response){
                    location.reload();

                }
            });
        }
</script>