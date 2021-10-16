    <?php
    include '../db.php';
   
     


    if (isset($_POST['order_id'])) {
        $order_id = $_POST['order_id'];
        $sql = "SELECT * FROM order_list  WHERE order_id = '". $order_id."'";
        $order =  mysql_query($sql);
        $i = 1;
        while ($row = mysql_fetch_assoc($order)) { ?>

                          <tr>
                            <th scope="row"><?php echo $i++; ?></th>
                            <td><?php echo $row['product_name']; ?></td>
                            <td><?php echo $row['qty'] ?></td>
                            <td><?php echo $row['product_price'] ?></td>
                          </tr>


            <?php }     
        
    }


    ?>


         <!-- <div class="modal-dialog" role="document">
                <div class="modal-content" style="width: 650px; float: center;">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"> Update Ticket <?php echo $_REQUEST['id'] ?>  <p style="color:red" id="ticket_id"></p> </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <?php 
                    $row = mysql_fetch_assoc($sql){?>
                        <div class="modal-body">

                            <div class="form-group">
                              <div class="row">

                                  <div class="col-md-6">
                                    
                                    <label> Cutomer Name </label>
                                    <input type="text" name="customer_name" id="customer_name" class="form-control" value="<?php echo $row['cus_name']?>" 
                                    placeholder="" readonly>

                                </div>

                                <div class="col-md-6">
                                   <label> Customer Phone </label>
                                   <input type="text" name="customer_phone" id="customer_phone" class="form-control" value="<?php echo $row['cus_contact'] ?>"
                                   placeholder="" readonly>

                               </div>
                           </div>


                           <div class="form-group">
                              <div class="row">

                                  <div class="col-md-6">
                                   <label> Brand </label>
                                   <input type="text" name="brand" id="brand" class="form-control"    value="<?php echo $row['group'] ?>"
                                   placeholder="" readonly>

                               </div>

                               <div class="col-md-6">
                                   <label> Branch </label>
                                   <input type="text" name="branch" id="branch" class="form-control"   value="<?php echo $row['branch_name'] ?>"
                                   placeholder="" readonly>

                               </div>
                           </div>


                           <div class="form-group">
                              <div class="row">

                                  <div class="col-md-6">
                                   <label> Change Status </label>
                                   <select class="form-control" id="status" name="status" value="<?php echo $row['status_name'];?>" aria-label="Default select example">
                                      <option selected ></option>
                                      <?php
                                      include '../../db.php';
                                      $sql = mysql_query("SELECT * FROM ticket_status");
                                      while ($row = mysql_fetch_assoc($sql)) {?>
                                         <option value="<?php echo $row['status_name'];?>"><?php echo $row['status_name'];?></option>
                                         <?php
                                     }
                                     ?>


                                 </select>

                             </div>

                            


                         </div>

                     </div>

                 </div>

                 <?php}?>

                       
                        <div class="modal-footer">
                            
                            <button type="button" name="updatedata" id="insert_ticket" onclick="update_ticket();"   class="btn btn-primary">Update Ticket</button>
                        </div>


                       
                   
                         
                     

                </div>
            </div>
 -->