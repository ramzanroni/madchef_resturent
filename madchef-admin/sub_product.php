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
            <h1 class="mt-4">Sub Product</h1>
            <ol class="breadcrumb mb-4">
              <li class="breadcrumb-item"><a href="http://36.255.69.216/madchef-admin/home.php">Dashboard</a></li>
              <li class="breadcrumb-item active">Sub Product</li>
            </ol>
            <div class="card mb-4">
              <div class="card-body">
                <p class="h3  p-2 text-center">Sub Product</p>

                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" style="float: right;margin-top: -48px;">+Sub Product</button>
                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                  <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content" style="width:687px;">
                     <div class="modal-header bg-info">
                       <h4 class="modal-title">Sub Product</h4>
                       <button type="button" class="close" data-dismiss="modal" style="float: left;margin-left: 543px;">×</button>                     </div>
                       <div class="card mb-4">
                        <div class="card-body">
                          <p class="h3  p-2 text-center">Sub Product</p>
                          <!-- <form> -->
                           <form id="formValu">
                             <div class="form-group row">
                              <label for="inputPassword" class="col-sm-2 col-form-label">Brand</label>
                              <div class="col-sm-10">
                                <select name="sub_brand_name" class="form-control input" required  id="sub_brand_name" onchange="fetch_branch(this.value);">

                                 <option>Select A Brand Name</option>


                                 <?php
                                 include_once 'database.php';

                                 $query = "SELECT * FROM  brand";

                                 $result = mysqli_query($con,$query);
                                 while($row = mysqli_fetch_assoc($result)){?>

                                  <option value="<?php echo $row['brand']; ?>"><?php echo $row['brand']; ?></option>

                                <?php } ?>
                              </select>                       

                            </div>
                          </div>


                          <div class="form-group row">
                           <label for="inputPassword" class="col-sm-2 col-form-label">Branch</label>

                           <div class="col-sm-10">
                            <select name="sub_branch_name" class="form-control input" required  id="sub_branch_name">
                            </select>                       
                          </div>
                        </div>

                        <div class="form-group row">
                         <label for="inputPassword" class="col-sm-2 col-form-label">Category</label>
                         <div class="col-sm-10">
                          <select name="newp_category_name" class="form-control input" required  id="newp_category_name">

                           <option>Select A Category</option>


                           <?php
                           include_once 'database.php';

                           $query = "SELECT * FROM subcategory";

                           $result = mysqli_query($con,$query);
                           while($row = mysqli_fetch_assoc($result)){?>

                            <option value="<?php echo $row['subcategory']; ?>"><?php echo $row['subcategory']; ?></option>

                          <?php } ?>
                        </select>                       
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="inputPassword" class="col-sm-2 col-form-label">Product Name</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="sub_product_name" placeholder="Enter Your Product name">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="inputPassword" class="col-sm-2 col-form-label">Details</label>
                      <div class="col-sm-10">
                       <textarea class="form-control rounded-0" id="sub_details" rows="8"></textarea>
                     </div>
                   </div>

                   <div class="form-group row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Product Image</label>
                    <div class="col-sm-10">
                      <input type="file" id="sub_attachment" name="sub_attachment" placeholder="Enter Your Product image">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Size</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="sub_size" placeholder="Enter Your Size">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Price</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="sub_price" placeholder="Enter Your Price">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">VAT</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="sub_vat" placeholder="Enter Your VAT">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">SD</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="sub_sd" placeholder="Enter Your SD">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Type</label>
                    <div class="col-sm-10">
                      <!-- <input type="text" class="form-control" id="type" placeholder="Enter Your Type"> -->
                      <select name="sub_type" class="form-control input" required  id="sub_type" >

                        <option>Select A Product Type</option>


                        <?php
                        include_once 'database.php';

                        $query = "SELECT * FROM  product_type";

                        $result = mysqli_query($con,$query);
                        while($row = mysqli_fetch_assoc($result)){?>

                          <option value="<?php echo $row['type']; ?>"><?php echo $row['type']; ?></option>

                        <?php } ?>
                      </select>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Discount</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="sub_discount" placeholder="Enter Your Discount">
                    </div>
                  </div>
                  <!-- <div class="form-group row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Status</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="sub_status" placeholder="Enter Your Status">
                    </div>
                  </div> -->

                  <div class="category" style="text-align:center;">
                    <input class="form-control btn btn-success" type="sumbit" style="width:122px;" value="Sub Product" name="submit" id="submit" onclick="sub_product()">
                  </div>
                </form>
              </div>
            </div>     
          </div>
          <div class="modal-footer">
          </div>
        </div>
      </div>
    </div>
    <div class="card mb-4">
      <div class="card-header">
        <i class="fas fa-table me-1"></i>
        DataTable Example
      </div>
      <div class="card-body" id="data_load">
        <?php 
        include_once 'sub_product_data.php';
        ?>
      </div>
    </div>
  </div>
  </main>
  <?php 
  include_once 'footer.php';

  ?>


  <script type="text/javascript">


  function sub_product()
  {
    var sub_brand_name= $('#sub_brand_name').val();
    // alert(brand_name);
    var sub_branch_name= $('#sub_branch_name').val();
    var newp_category_name= $('#newp_category_name').val();
    var sub_details= $('#sub_details').val();
    var sp_sub_category_name= $('#sp_sub_category_name').val();
    var sub_product_name= $('#sub_product_name').val();
    var sub_size= $('#sub_size').val();
    var sub_price= $('#sub_price').val();
    var sub_vat= $('#sub_vat').val();
    var sub_sd= $('#sub_sd').val();
    var sub_type= $('#sub_type').val();
    var sub_discount= $('#sub_discount').val();
    var sub_status= $('#sub_status').val();
    var form_data = new FormData();
    var file_data = $('#sub_attachment').prop('files')[0];
    form_data.append('sub_attachment', file_data);
    form_data.append('sub_brand_name', sub_brand_name);
    form_data.append('sub_branch_name', sub_branch_name);
    form_data.append('sub_details', sub_details);
    form_data.append('newp_category_name', newp_category_name);
    form_data.append('sp_sub_category_name', sp_sub_category_name);
    form_data.append('sub_product_name', sub_product_name);
    form_data.append('sub_size', sub_size);
    form_data.append('sub_price', sub_price);
    form_data.append('sub_vat', sub_vat);
    form_data.append('sub_sd', sub_sd);
    form_data.append('sub_type', sub_type);
    form_data.append('sub_discount', sub_discount);
    form_data.append('sub_status', sub_status);
    $.ajax({
      url: "fatch_data.php",
      type: "POST",
      data: form_data,
      cache:false,
      contentType: false,
      processData: false,
      success: function(response){
       var data=response;
       // alert(response);
       // console.log(response);
       $('#formValu').trigger('reset');
       $('.filename').text('No file selected');
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
          $('#sub_branch_name').html(response);
        }
      });
    };
  };
  function sub_new_product(id){
   var sub_new_product=id;
   $.ajax({
    url: "fatch_data.php",
    type: "POST",
    data: {
      sub_new_product:sub_new_product  
    },
    success: function(response){
      alert(response);
      location.reload();
    }
  });
  }

    function del_sub(id){
   var del_sub=id;
   $.ajax({
    url: "fatch_data.php",
    type: "POST",
    data: {
      del_sub:del_sub  
    },
    success: function(response){
      alert(response);
      location.reload();
    }
  });
 }



        $(document).ready(function(){
          
          $('.quiz_deactivate').click(function (e) {
              e.preventDefault();
              let isConfirm = confirm('Are you sure to DEACTIVE this Product?');
              if (isConfirm) {

                  let userId = $(this).attr('href');

                  // Ajax request

                  $.ajax({
                      'url': 'subproduct_deactive.php',
                      'method': 'POST',
                      'data': {'quiz_deactivate_id': userId},
                      'success': function (data) {
                          $('#message').fadeIn('fast').html(data).addClass('message');
                          setTimeout(function () {
                              $('#message').fadeOut(4000);
                              location.reload();
                          }, 1000);
                      }
                  }); // ajax end
              }
          });

          /* Deactive user end */



          /* Active user */

          $('.quiz_activate').click(function (e) {
              e.preventDefault();
              let isConfirm = confirm('Are you sure to ACTIVE this Product?');
              if (isConfirm) {

                  let userId = $(this).attr('href');

                  // Ajax request

                  $.ajax({
                      'url': 'subproduct_active.php',
                      'method': 'POST',
                      'data': {'quiz_activate_id': userId},
                      'success': function (data) {
                          $('#message').fadeIn('fast').html(data).addClass('message');
                          setTimeout(function () {
                              $('#message').fadeOut(4000);
                              location.reload();
                          }, 1000);
                      }
                  }); // ajax end
              }
          });

  })

  </script>



