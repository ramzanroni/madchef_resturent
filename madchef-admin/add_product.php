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
            <h1 class="mt-4">Add Product</h1>
            <ol class="breadcrumb mb-4">
              <li class="breadcrumb-item"><a href="http://36.255.69.216/madchef-admin/home.php">Dashboard</a></li>
              <li class="breadcrumb-item active">Add Product</li>
            </ol>
            <div class="card mb-4">
              <div class="card-body">
                <p class="h3  p-2 text-center">Add Product</p>

                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" style="float: right;margin-top: -48px;">+Product</button>
                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                  <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content" style="width: 741px;">
                     <div class="modal-header bg-info">
                       <button type="button" class="close" data-dismiss="modal" style="margin-right: 369px;">×</button>           
                       <h4 class="modal-title">Product</h4>
                     </div>
                     <div class="card mb-4">
                      <div class="card-body">
                        <p class="h3  p-2 text-center">Add Product</p>
                        <!-- <form> -->

                         <div class="form-group row">
                          <label for="inputPassword" class="col-sm-2 col-form-label">Brand</label>
                          <div class="col-sm-10">
                            <select name="brand_name" class="form-control input" required  id="brand_name" onchange="fetch_branch(this.value);">

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

                      <form id="formValu">                  
                        <div class="form-group row">
                         <label for="inputPassword" class="col-sm-2 col-form-label">Branch</label>

                         <div class="col-sm-10">
                          <select name="branch_name" class="form-control input" required  id="branch_name">
                          </select>                       
                        </div>
                      </div>

                      <div class="form-group row">
                       <label for="inputPassword" class="col-sm-2 col-form-label">Category</label>
                       <div class="col-sm-10">
                        <select name="category_name" class="form-control input" required  id="category_name" onchange="fetch_products(this.value);" >

                         <option>Select A Category</option>


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

                  <div class="form-group row">
                   <label for="inputPassword" class="col-sm-2 col-form-label">Subcategory</label>

                   <div class="col-sm-10">
                    <select name="states[]" class="js-example-basic-multiple"   id="sub_category_name" style="width: 588px;" multiple="multiple">

                    </select>                       
                  </div>
                </div>

                <div class="form-group row">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Product Name</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="product_name" placeholder="Enter Your Product name">
                  </div>
                </div>

                   <div class="form-group row">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Details</label>
                  <div class="col-sm-10">
                     <textarea class="form-control rounded-0" id="pro_details" rows="8"></textarea>
                  </div>
                </div>

                <div class="form-group row">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Product Image</label>
                  <div class="col-sm-10">
                    <input type="file" id="attachment" name="attachment" placeholder="Enter Your Product image">
                  </div>
                </div>

                <div class="form-group row">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Size</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="size" placeholder="Enter Your Size">
                  </div>
                </div>

                <div class="form-group row">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Price</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="price" placeholder="Enter Your Price">
                  </div>
                </div>

                <div class="form-group row">
                  <label for="inputPassword" class="col-sm-2 col-form-label">VAT</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="vat" placeholder="Enter Your VAT">
                  </div>
                </div>

                <div class="form-group row">
                  <label for="inputPassword" class="col-sm-2 col-form-label">SD</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="sd" placeholder="Enter Your SD">
                  </div>
                </div>

                <div class="form-group row">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Type</label>
                  <div class="col-sm-10">
                    <!-- <input type="text" class="form-control" id="type" placeholder="Enter Your Type"> -->
                    <select name="category_name" class="form-control input" required  id="type" >

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
                    <input type="text" class="form-control" id="discount" placeholder="Enter Your Discount">
                  </div>
                </div>
               <!--  <div class="form-group row">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Status</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="status" placeholder="Enter Your Status">
                  </div>
                </div> -->
                   <div class="form-group row">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Adons Status</label>
                  <div class="col-sm-10">
                    <!-- <input type="text" class="form-control" id="type" placeholder="Enter Your Type"> -->
                    <select name="adons_status" class="form-control input" required  id="adons_status" >
                      <option value="">Select Adons Status</option>
                      <option value="Yes">Yes</option>
                      <option value="No">No</option>  
                    </select>
                  </div>
                </div>
                <div class="category" style="text-align:center;">
                  <input class="form-control btn btn-success" type="sumbit" style="width:122px;" value="Add Product" name="submit" id="submit" onclick="add_product()">
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
      include_once 'product_data.php';
      ?>
    </div>
  </div>
</div>
</main>
<?php 
include_once 'footer.php';

?>


<script type="text/javascript">
  function fetch_products(val){
    // alert(val);    
    {

      $.ajax({
       type: 'post',
       url: 'fetch_product.php',
       data: {
         get_option:val
       },
       success: function (response) {
       $('.test').trigger('change'); 

        // alert(response);
        $('#sub_category_name').html(response);

      }
    });
    };
  };

    $('.js-example-basic-multiple').select2();



     function multi_products(val){
    alert(val);    
    {

      $.ajax({
       type: 'post',
       url: 'fetch_product.php',
       data: {
         all_product:val
       },
       success: function (response) {
       $('.test').trigger('change'); 

        alert(response);
        $('#product_name').html(response);

      }
    });
    };
  };

  function add_product()
  {
    var brand_name= $('#brand_name').val();
    // alert(brand_name);
    var branch_name= $('#branch_name').val();
    var category_name= $('#category_name').val();
    var sub_category_name= $('#sub_category_name').val();
    var pro_details= $('#pro_details').val();
    var product_name= $('#product_name').val();
    var size= $('#size').val();
    var price= $('#price').val();
    var vat= $('#vat').val();
    var sd= $('#sd').val();
    var type= $('#type').val();
    var discount= $('#discount').val();
    var status= $('#status').val();
    var adons_status= $('#adons_status').val();
    var form_data = new FormData();
    var file_data = $('#attachment').prop('files')[0];
    form_data.append('attachment', file_data);
    form_data.append('pro_brand_name', brand_name);
    form_data.append('pro_branch_name', branch_name);
    form_data.append('pro_category_name', category_name);
    form_data.append('pro_sub_category_name', sub_category_name);
    form_data.append('pro_details', pro_details);
    form_data.append('pro_product_name', product_name);
    form_data.append('pro_size', size);
    form_data.append('pro_price', price);
    form_data.append('pro_vat', vat);
    form_data.append('pro_sd', sd);
    form_data.append('pro_type', type);
    form_data.append('pro_discount', discount);
    form_data.append('pro_status', status);
    form_data.append('pro_adons_status', adons_status);
    $.ajax({
      url: "fatch_data.php",
      type: "POST",
      data: form_data,
      cache:false,
      contentType: false,
      processData: false,
      success: function(response){
       var data=response;
       alert(response);
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
          $('#branch_name').html(response);
        }
      });
    };
  };
  function del_product(id){
   var del_product=id;
   $.ajax({
    url: "fatch_data.php",
    type: "POST",
    data: {
      del_product:del_product  
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
                      'url': 'product_deactive.php',
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
                      'url': 'product_active.php',
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



