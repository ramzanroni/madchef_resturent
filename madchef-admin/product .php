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
                <li class="breadcrumb-item active">Add Product Type</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <p class="h3  p-2 text-center">Add Product Type</p>
                    <form>
                        <div class="form-group">
                            <label for="product type">Product Type</label>
                            <input type="text" class="form-control" id="product_type" placeholder="Enter Your product type">
                        </div>

                        <div class="form-group mt-4">
                            <input class="form-control btn btn-success" type="sumbit" value="Add Product type" name="submit" id="submit" onclick="add_product_type()">
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
                    include_once '.php';
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
        var product_type= $('#product_type').val();
        // alert(brand_name);
        $.ajax({
                url: "fatch_data.php",
                type: "POST",
                data: {
                    product_type:product_type  
                },
                success: function(response){
                   var data=response;
                   if (data !="Something is worng") {
                    alert("product type  Add Successfully.");
                   }
                   else
                   {
                    alert("Something is Worng.");
                   }
                   location.reload();

                }
            });
    }
</script>