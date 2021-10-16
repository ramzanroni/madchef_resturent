<?php
 include 'database.php';
 include 'ticket_notification/notificaton_script.php';
 include 'ticket_notification/audio.php';
 include 'session.php';
 include 'ticket_notification/modal.php';
session_start();

$start = date('Y-m-d') . " 00:00:01";
$end = date('Y-m-d') . " 23:59:59"; 



 $total = mysqli_fetch_assoc(mysqli_query($con,"SELECT count(*) AS 'total' FROM `restaurant`.`order` WHERE (`brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."'  AND `cart_time` >= '".$start."' AND `cart_time` <= '".$end."')"));

 $completed = mysqli_fetch_assoc(mysqli_query($con,"SELECT count(*) AS 'completed' FROM `restaurant`.`order` WHERE (`brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."') AND (`order_status`='Completed') AND `cart_time` >= '".$start."' AND `cart_time` <= '".$end."'  "));


 $received = mysqli_fetch_assoc(mysqli_query($con,"SELECT count(*) AS 'received' FROM `restaurant`.`order` WHERE (`brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."') AND (`order_status`='Received') AND `cart_time` >= '".$start."' AND `cart_time` <= '".$end."'  "));

 $pending  = mysqli_fetch_assoc(mysqli_query($con,"SELECT count(*) AS 'pending' FROM `restaurant`.`order` WHERE (`brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."') AND (`order_status`='Pending') AND `cart_time` >= '".$start."' AND `cart_time` <= '".$end."'  "));

 $cooking = mysqli_fetch_assoc(mysqli_query($con,"SELECT count(*) AS 'cooking' FROM `restaurant`.`order` WHERE (`brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."') AND (`order_status`='Cooking') AND `cart_time` >= '".$start."' AND `cart_time` <= '".$end."'  "));

 $shipped = mysqli_fetch_assoc(mysqli_query($con,"SELECT count(*) AS 'shipped' FROM `restaurant`.`order` WHERE (`brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."') AND (`order_status`='Shipped') AND `cart_time` >= '".$start."' AND `cart_time` <= '".$end."'  "));

 $new = mysqli_fetch_assoc(mysqli_query($con,"SELECT count(*) AS 'new' FROM `restaurant`.`order` WHERE (`brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."') AND (`order_status`='new') AND `cart_time` >= '".$start."' AND `cart_time` <= '".$end."'  "));

  $cancelled = mysqli_fetch_assoc(mysqli_query($con,"SELECT count(*) AS 'cancelled' FROM `restaurant`.`order` WHERE (`brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."') AND (`order_status`='cancelled') AND `cart_time` >= '".$start."' AND `cart_time` <= '".$end."'  "));

  $sql = mysqli_query($con,"SELECT * FROM `restaurant`.`order` WHERE  `cart_time` >= '".$start."' AND `cart_time` <= '".$end."' AND `brand`='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."'  GROUP BY `order_id`  ORDER BY `order_id` DESC LIMIT 20");

?>

<div>
<div class="card-body" style="width: 100%;margin: 0;padding: 0;">

  <div class="row w-100" style="margin-top: -13px; height: 291px; margin-left: 47px;">
    <?php  if($_SESSION['previlege'] == 3){?>
      <div class="col-md-3" style="background-image: url('image/total.png'); background-repeat: no-repeat; background-size: 65% 75%;color: white;">
        <div class="text-center mt-3"><h4 class="h4" style="margin-top:60px;margin-right:120px;">Total Order <span class="span" ><?php echo  $total['total']; ?></span> </h4></div>
      </div>
      <div class="col-md-3" style="background-image: url('image/new.png'); background-repeat: no-repeat; background-size: 65% 75%; color: black;">
        <div class="text-center mt-2"><h4 class="h4" style="margin-top:60px;margin-right:120px;">Received <span class="span"><?php echo $received['received']; ?></span>  </h4></div>
      </div>

      <div class="col-md-3" style="background-image: url('image/Resolution_SLA_failed.png'); background-repeat: no-repeat; background-size: 65% 75%; color: black;">
        <div class="text-center mt-3"><h4 class="h4" style="margin-top:60px;margin-right:120px;">Pending <span class="span"><?php echo $pending['pending']; ?></span> </h4></div>
      </div>


      <div class="col-md-3" style="background-image: url('image/cooking.png'); background-repeat: no-repeat; background-size: 65% 75%;color: black;">
        <div class="text-center mt-3"><h4 class="h4" style="margin-top:60px;margin-right:120px;">Cooking  <span class="span"><?php echo $cooking['cooking']; ?></span> </h4></div>
      </div>

      <div class="col-md-3" style="background-image: url('image/shipped.png'); background-repeat: no-repeat; background-size: 65% 75%; color: black;">
        <div class="text-center mt-3"><h4 class="h4" style="margin-top:60px;margin-right:120px;"> Shipped <span class="span"><?php echo $shipped['shipped']; ?></span> </h4></div>
      </div>


      <div class="col-md-3" style="background-image: url('image/completed.png'); background-repeat: no-repeat; background-size: 65% 75%;color: black;">
        <div class="text-center mt-3"><h4 class="h4" style="margin-top:60px;margin-right:120px;">Completed <span class="span"><?php echo  $completed['completed']; ?></span> </h4></div>
      </div>




      <div class="col-md-3" style="background-image: url('image/cancel.png'); background-repeat: no-repeat; background-size: 65% 75%; color: black;">
        <div class="text-center mt-3"><h4 class="h4" style="margin-top:60px;margin-right:120px;">Cancelled <span class="span"><?php echo $cancelled['cancelled']; ?></span></h4></div>
      </div>



     <div class="col-md-3" style="background-image: url('image/cooking.png'); background-repeat: no-repeat; background-size: 65% 75%; color: black;">
        <div class="text-center mt-3"><h4 class="h4" style="margin-top:60px;margin-right:120px;">New <span class="span"><?php echo $new['new']; ?></span></h4></div>
      </div>



    <?php }  ?>

  </div>
</div>




  <div align="center" style="margin-top: 10px;">
    <div class="card">
      <div class="card-header">Order Managment</div>
      <div class="card-body">
        <table class="table table-bordered" style="font-size: 12px;" id="example">
          <thead align="center">
            <tr>
              <th>ID</th>
              <th>Order ID</th>
              <th>Initiator</th>
              <th>Customer Name</th>
              <th>Delivery address</th>
              <th>Phone</th>
              <th>Additional Phone</th>
              <th>Status</th>
              <th>Create Date</th>
              <th>Update Date</th>
              <th>Invoice</th>
              <th>View Order</th>
            </tr>
          </thead>
          <tbody align="center">
            <?php
            $i = 1;
            while($ticket = mysqli_fetch_assoc($sql)){
            // $name= $ticket['phone'];
            // $results44 = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `asterisk`.`crm_durbiin` WHERE `phone`='$name'"));

              ?>
              <tr>
                <td> <?php echo $ticket['id']; ?></td>
                <td> <?php echo $ticket['order_id']; ?></td>
                <td> <?php echo $ticket['agent']; ?></td>
                <td> <?php echo $ticket['customer_name']; ?></td>
                <td> <?php echo $ticket['address']; ?></td>
                <td><?php echo  $ticket['phone']; ?></td>
                <td> <?php echo $ticket['additional_phone']; ?></td>
                <td>
                  <select class="form-control" style="height: 32px; width: 160px;" <?php echo $disabled;?> id="change_status<?php echo $ticket['id'];?>" onchange="modify('<?php echo $ticket['id'];?>')">
                    <option selected ><?php echo $ticket['order_status']; ?></option>
                    <?php
                    if ($_SESSION['previlege'] == 3) {
                      $ticket_status = mysqli_query($con,"SELECT * FROM `restaurant`.`ticket_status`  ORDER BY `status_name` ASC");
                    } else {
                      $ticket_status = mysqli_query($con,"SELECT * FROM `restaurant`.`ticket_status` ORDER BY `status_name` ASC");
                    }
                    while ($status_row = mysqli_fetch_assoc($ticket_status)) {
                      if (($_SESSION['previlege'] != 3) && ($_SESSION['previlege'] != 3)) {
                        $status_disabled = "";
                        if ($status_row['status_name'] == "Closed") {$status_disabled = "disabled";}
                        if ($status_row['status_name'] == "Extended") {$status_disabled = "disabled";}
                        if ($status_row['status_name'] == "Re-route") {$status_disabled = "disabled";}
                      }
                      ?>

                      <option
                      <?php
                      if ($status_row['status_name'] == $ticket['status']) {
                        echo "selected";
                      }
                      echo $status_disabled;?>
                      value="<?php echo $status_row['status_name'];?>"><?php echo $status_row['status_name'];?></option>
                      <?php

                    }?>
                  </select>
                </td>
                <td> <?php echo $ticket['cart_time']; ?></td>
                <td> <?php echo $ticket['last_update_time']; ?></td>
                <td>
                  <?php
                  if($ticket['order_id'] != ''){?>
                    <a target="_blank" href="create_pdf/thermal_printer_invoice.php?order_id=<?php echo $ticket['order_id']; ?>&phone=<?php echo $ticket['phone'] ?>" target='blank'>print invoice</a>
                    <?php
                  }
                  ?>                  
                </td>
                <td>
                 <button type="button"  data-toggle="modal" data-target="#exampleModal" onclick="update('<?php echo $ticket['id'];?>','<?php echo $ticket['order_id'];?>' );" class="btn btn-success editbtn" style="float: left;"> View </button>
               </td>
              

             </tr>
             <?php
           }
           ?>
         </tbody>
       </table>
       <!--TICKET UPDATE MODAL START-->

  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog modal-lg" role="document">
 <div class="modal-content">     
 <div class="modal-header bg-info">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-left: 345px;color: red;"> 
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <div id="details"></div>
      </div>
      <div class="modal-footer">
      <button type="button"  class="btn btn-primary btnReload" data-dismiss="modal">Update</button>
      </div>
    </div>
  </div>
  </div>
  </div>
 </div>
 </div>
</div>


<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 --><link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.css">

<link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
 
<script type="text/javascript" src="DataTables/datatables.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.js"></script>

<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.js"></script>



<!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/jszip-2.5.0/dt-1.10.23/b-1.6.5/b-html5-1.6.5/b-print-1.6.5/sl-1.3.1/datatables.min.css"/>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/jszip-2.5.0/dt-1.10.23/b-1.6.5/b-html5-1.6.5/b-print-1.6.5/sl-1.3.1/datatables.min.js"></script>
 -->

 <script type="text/javascript">
   function update(id, order_id){   
         $.ajax({
           url:"ticket_modal.php",
             type:"POST",
             data:{id:id, order_id:order_id},
           success : function(data){
                document.getElementById("exampleModal").innerHTML = data;

                $('#exampleModal').modal('show');              
              
           },
         });
    };
function modify(id)
{
var change_status = $("#change_status"+id).val();

$.ajax({
    data: "id="+id+"&change_status="+change_status,
    url: "changeAssign.php",
    type: "GET",
    success: function(res){
        if (res) {

          location.reload();

        }
    }
});
}


    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
           
            
        ]
    } );


 </script>