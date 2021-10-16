<?php  
include_once 'database.php';
include_once 'sidebar.php';
session_start();
$sql = mysqli_query($con,"SELECT * FROM `product` WHERE `brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."'");

?>   
  <main class="py-4">
      <div class="container">
        <!-- <div id="message"></div> -->
          <div class="row justify-content-center">
              <div class="col-md-12">

    
                  <div align="center">
                      <div class="card">
                          <div class="card-header">Product List </div>

                          <div class="card-body">

                              <table class="table table-bordered"  style="font-size: 12px;">

                                  <thead>
                                     <tr>
                                        <th scope="col">SL</th>
                                        <th scope="col">Product Name</th>
                                        <th scope="col">Product Brand</th>
                                        <th scope="col">Product Branch</th>
                                        <th scope="col">Product Size</th>
                                        <th scope="col">Sd</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Status</th>
                                        <th colspan="3">Action</th>
                                    </tr>

                                </thead>

                                <tbody>

                                  <?php 
                                   $i = 1;
                                  while($product=mysqli_fetch_assoc($sql)){ ?>

                                    <tr>
                                    <th scope="row"><?php echo $i++; ?></th>
                                    <td><?php echo $product['name']; ?></td>
                                    <td><?php echo $product['brand']; ?></td>
                                    <td><?php echo $product['branch']; ?></td>
                                    <td><?php echo $product['size']; ?></td>
                                    <td> <?php echo $product['sd']."%"; ?></td>
                                    <td><?php echo $product['price']; ?></td>
                             <td>
                                  <?php 
                                  if($product['active']==Y){
                                    echo "<p class='text-success text-block'>Active</p>";
                                  }
                                  else{
                                   echo "<p class='text-danger'>Deactive</p>";
                                 }         
                                 ?>
                               </td> 
                             
                               <td class=" text-center">
                                 <?php
                                 if($product['active']==Y){
                                  ?>
                                  <a title="Deactive Quiz" class="quiz_deactivate" href="<?php echo $product['id']; ?>">
                                    <center><i class="fa fa-check text-success"></i></center></a>
                                    <?php
                                  }
                                  else{
                                    ?>
                                    <a title="Active Quiz" class="quiz_activate" href="<?php echo $product['id']; ?>">
                                      <center>
                                        <i class="fa fa-minus-circle white"></i>


                                      </center></a>
                                      <?php 
                                    } 
                                    ?>
                                  </td>
                                            
                               </tr>
                               <?php
                               $i++;
                             }
                             ?>

                            </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </main>
<?php include 'footer.php';?>

 <script type="text/javascript">
      $(document).ready(function(){

        $('.quiz_deactivate').click(function (e) {
          e.preventDefault();
          let isConfirm = confirm('Are you sure to DEACTIVE this Product?');
          if (isConfirm) {

            let userId = $(this).attr('href');
            alert(userId);

                  // Ajax request

                  $.ajax({
                    'url': 'product_list_dective.php',
                    'method': 'POST',
                    'data': {'quiz_deactivate_id': userId},
                    'success': function (data) {
                      alert(data);
                      $('#message').fadeIn('fast').html(data).addClass('message');
                      setTimeout(function () {
                        $('#message').fadeOut(4000);
                        location.reload();
                      }, 1000);
                    }
                  }); // ajax end
                }
              });

        $('.quiz_activate').click(function (e) {
          e.preventDefault();
          let isConfirm = confirm('Are you sure to ACTIVE this Product?');
          if (isConfirm) {

            let userId = $(this).attr('href');
            alert(userId);

                  // Ajax request

                  $.ajax({
                    'url': 'product_list_active.php',
                    'method': 'POST',
                    'data': {'quiz_activate_id': userId},
                    'success': function (data) {
                      alert(data);
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



