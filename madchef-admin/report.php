            <?php
            session_start();

            $date = date("Y-m-d");
            if ($_SESSION['user_name']==null) 
            {
              header("Location: http://36.255.69.216/madchef-admin/index.php");

            }
            include_once 'sidebar.php';
            ?>
            <div id="layoutSidenav_content">
             <section class="content">
              <div class="row">
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="box box-info">
                        <div class="box-header with-border">
                          <h3 class="box-title">Report</h3>
                        </div>
                        <div class="row">
                          <div class="col-lg-12" style="margin-top: 30px;">
                            <div class="from-group">
                              <div class="col-lg-6">
                                <label for="">Type :</label>
                                <select class="form-control" name="search_cat" id="search_cat" style="width: 80%;float: right;">
                                  <option value="">Select A Value</option>
                                  <option value="All">All</option>
                                  <option value="order_id">Ticket No</option>
                                  <option value="brand">Brand</option>
                                  <option value="branch">Branch</option>
                                  <option value="cus_contact">Contact No</option>
                                  <option value="status">Status</option>
                            </select>
                            </div>
                            </div>
                            <div class="from-group">
                              <div class="col-lg-6">
                                <label for="">Search Key :</label>
                                <input type="text" class="form-control" id="typedata" name="" style="width: 80%;float: right;"disabled>
                                <input type="text" class="form-control" id="typedataall" name="" style="width: 80%;float: right;"disabled>
                                <?php
                                include_once 'database.php';
                                $query = mysqli_query($con,"SELECT * FROM `brand`");
                                ?>
                                <select class="form-control" name="brand_view" id="brand_view" style="width: 80%;float: right;">
                                  <option value="">Select A brand</option>
                                  <?php while($row = mysqli_fetch_assoc($query)){?>
                                    <option value="<?php echo $row['brand']; ?>"><?php echo $row['brand']; ?></option>

                                  <?php } ?>
                                </select>
                                <?php
                                $query1 = mysqli_query($con,"SELECT * FROM `ticket_status`");
                                ?>
                                <select class="form-control" name="status_view" id="status_view" style="width: 80%;float: right;">
                                  <option value="">Select A Status</option>
                                  <?php while($row1 = mysqli_fetch_assoc($query1)){?>
                                    <option value="<?php echo $row1['status_name']; ?>"><?php echo $row1['status_name']; ?></option>

                                  <?php } ?>
                                </select>  

                                <?php
                                $query2 = mysqli_query($con,"SELECT * FROM `branch`");
                                ?>
                                <select class="form-control" name="branch_view" id="branch_view" style="width: 80%;float: right;">
                                  <option value="">Select A branch</option>
                                  <?php while($row1 = mysqli_fetch_assoc($query2)){?>
                                    <option value="<?php echo $row1['branch']; ?>"><?php echo $row1['branch']; ?></option>

                                  <?php } ?>
                                </select>
                              </div>
                            </div>
                            </div>
                            <div class="col-lg-12" style="margin-top: 30px;margin-bottom: 30px;">
                              <div class="from-group">
                                <div class="col-lg-6">
                                  <label for="">Start Time :</label>
                                  <input type="date" class="form-control" value="<?php echo $date; ?>" name="start_date" id="start_date" value="" style="width: 80%;float: right;">
                                </div>
                              </div>
                              <div class="from-group">
                                <div class="col-lg-6">
                                  <label for="">End Time :</label>
                                  <input type="date" class="form-control" value="<?php echo $date; ?>" name="end_date" id="end_date" style="width: 80%;float: right;">
                                </div>
                              </div>
                              <div class="" style="float: right;margin-top: 30px;padding-right: 50px;">
                                <button type="button" onclick="resultAllTicket()" class="btn btn-info" name="button">Search</button>
                              </div>
                            </div>
                            </div>
                            </div>
                            </div>
                            </div>
                            </div>
                            </div>
                            <div id="dataviewLoad"></div>
                             <?php 
                                // include_once 'update_report_data.php';
                                ?>
                            </section>
                            
                                                   
                             <?php 
                            include_once 'footer.php';

                            ?>
                            <script type="text/javascript">
                         
                                $('#brand_view').hide();
                                $('#typedataall').hide();
                                $('#status_view').hide();
                                $('#branch_view').hide();
                                $('#search_cat').change( function(e){
                                  var search_cat = $('#search_cat').val();

                                  if (search_cat == 'brand') {
                                    $('#typedata').hide();
                                    $('#typedataall').hide();
                                    $('#status_view').hide();
                                    $('#branch_view').hide();

                                    $('#brand_view').show();
                                  }else if(search_cat == 'order_id') {
                                    $('#brand_view').hide();
                                    $('#status_view').hide();
                                    $('#branch_view').hide();
                                    $('#typedataall').hide();
                                    $('#typedata').removeAttr('disabled');
                                    $('#typedata').css("display","block");
                                  }else if(search_cat == 'cus_contact') {
                                    $('#brand_view').hide();
                                    $('#status_view').hide();
                                    $('#branch_view').hide();
                                    $('#typedataall').hide();
                                    $('#typedata').removeAttr('disabled');
                                    $('#typedata').css("display","block");
                                  }else if(search_cat == 'branch') {
                                    $('#brand_view').hide();
                                    $('#typedata').hide();
                                    $('#typedataall').hide();
                                    $('#status_view').hide();
                                    $('#branch_view').show();
                                  }else if(search_cat == 'status') {
                                    $('#brand_view').hide();
                                    $('#typedata').hide();
                                    $('#typedataall').hide();
                                    $('#status_view').show();
                                    $('#branch_view').hide();

                                  }else if(search_cat == 'All') {
                                    $('#brand_view').hide();
                                    $('#typedata').hide();
                                    $('#status_view').hide();
                                    $('#typedataall').show();
                                    $('#branch_view').hide();

                                  }
                                });
                                function resultAllTicket() {
                                  let search_cat = $('#search_cat').val();
                                  let typedata = $('#typedata').val();
                                  let status_view = $('#status_view').val();
                                  let brand_view = $('#brand_view').val();
                                  let branch_view = $('#branch_view').val();
                                  let start_date = $('#start_date').val();
                                  let end_date = $('#end_date').val();
                                  $.ajax({
                                    url:'report_search_result.php',
                                    type:'POST',
                                    data: {
                                      search_cat:search_cat,
                                      typedata:typedata,
                                      status_view:status_view,
                                      brand_view:brand_view,
                                      branch_view:branch_view,
                                      start_date:start_date,
                                      end_date:end_date,
                                    },
                                    success: function (result) {
                                      $('#dataviewLoad').html(result);
                                      $('.loader img').fadeOut(1000);
                                    }
                                  });
                                }

                                $('#example255').dataTable( {
                                  dom: 'Bfrtip',
                                  buttons: [
                                  'csv', 'excel'
                                  ]
                                } );

                         

                            </script>


