<?php
session_start();
if ($_SESSION['user_name']==null) 
{
    header("Location: http://36.255.69.216/madchef-admin/index.php");

}
include_once 'sidebar.php';
?>

<div class="modal" id="brandModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="form-group row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Brand</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="brand_name" placeholder="Enter Your Brand" required />
                    </div>
                </div>
                <div class="category" style=" margin-left:83px;text-align:left;">
                    <input class="form-control btn btn-success" style="width: 122px;" type="button" value="Add Brand" name="submit" id="submit" onclick="add_brand()"/>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">Brand List</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="http://36.255.69.216/madchef-admin/home.php">Dashboard</a></li>
                <li class="breadcrumb-item active">Brand list</li>
            </ol>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table me-1"></i>
                    Brand List
                    <input class="form-control btn btn-success" type="button" style="width: 122px; float: right" data-toggle="modal" data-target="#brandModal" value="Add Brand"/>
                </div>
                <p id="message" class="bg-success text-center"></p>
                <div class="card-body" id="data_load"></div>
            </div>
        </main>
        <?php include_once 'footer.php'; ?>
        <script type="text/javascript">

            $( document ).ready(function() {
                fetch_brand();
            });

            function fetch_brand(){
                var brand_name = 'brand_name';
                $.ajax({
                    url: "brand_data.php",
                    type: "POST",
                    data: {
                        brand_name:brand_name  
                    },
                    success: function (response) {
                        $('#data_load').html(response);
                    }
                })
            }



            function add_brand()
            {
                var brand_name= $('#brand_name').val();
                $.ajax({
                    url: "fatch_data.php",
                    type: "POST",
                    data: {
                        brand_name:brand_name  
                    },
                    success: function (response) {
                        $('#brandModal').modal('hide');
                        $('#message').html(response);
                        fetch_brand();
                    }
                });
            }


            function del_brand(id){
                var del_id=id;
                $.ajax({
                    url: "fatch_data.php",
                    type: "POST",
                    data: {
                        del_id:del_id  
                    },
                    success: function(data){
                        location.reload();
                    }
                });
            }
        </script>