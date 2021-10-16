      <?php
      session_start();
      if ($_SESSION['user_name']==null) 
      {
        header("Location: http://36.255.69.216/madchef-admin/index.php");

      }
      include_once 'sidebar.php';
      ?>
      <div id="layoutSidenav_content">
      
    <div class="card mb-4">
    <div class="card-body" id="data_load">
      <?php 
      include_once 'adons_product_list_data.php';
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



