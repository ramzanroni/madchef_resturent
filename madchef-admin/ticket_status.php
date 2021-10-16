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
                <h1 class="mt-4">Ticket</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="http://36.255.69.216/madchef-admin/home.php">Dashboard</a></li>
                    <li class="breadcrumb-item active">Add Ticket Ticket Status</li>
                </ol>
                <div class="card mb-4">
                    <div class="card-body">
                        <p class="h3  p-2 text-center">Add Ticket Status</p>
                            <meta charset="utf-8">
                            <meta name="viewport" content="width=device-width, initial-scale=1">
                            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
                            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
                            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal" style="float: right;margin-top: -48px;">+Ticket Status</button>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">

                                  <!-- Modal content-->
                                  <div class="modal-content">
                                  <div class="modal-header bg-info">                              
                                   <button type="button" class="close" data-dismiss="modal" style="margin-right: 369px;">×</button>           
                                     <h6 class="modal-title">Ticket Status</h6>
                                 </div>
                                
                                     <div class="card mb-4">
                                        <div class="card-body">
                                            <p class="h3  p-2 text-center">Ticket Status</p>
                                            <form>
                                                <div class="form-group row">
                                                    <label for="inputPassword" class="col-sm-3 col-form-label">Ticket Status</label>
                                                    <div class="col-sm-9">
                                                       <input type="text" class="form-control" id="ticket_status" placeholder="Enter Your Ticket Status">
                                                   </div>
                                               </div>
                                               <br>
                                               <div class="category" style="text-align:center;">
                                                <input class="form-control btn btn-success" style="width: 122px;" type="sumbit" value="Ticket Status" name="submit" id="submit" onclick="add_status()">
                                            </div>
                                        </form>
                                    </div>
                                </div>     
                        </div>

                   
                </div>
            </div>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table me-1"></i>
                   Brand 
                </div>
                <div class="card-body" id="data_load">
                    <?php 
                    include_once 'ticket_status_data.php';
                    ?>
                </div>
            </div>
        </div>
    </main>
    <?php 
    include_once 'footer.php';

    ?>
    <script type="text/javascript">
        function add_status()
        {
            var ticket_status= $('#ticket_status').val();
            // alert(brand_name);
            $.ajax({
                url: "fatch_data.php",
                type: "POST",
                data: {
                    ticket_status:ticket_status  
                },
                success: function(response){
                location.reload();

            }
        });
        }
        function del_status(id){
            // alert(id);
            var del_status=id;
            // alert(del_id);
            $.ajax({
                url: "fatch_data.php",
                type: "POST",
                data: {
                    del_status:del_status  
                },
                success: function(response){
                    location.reload();

                }
            });
        }
    </script>