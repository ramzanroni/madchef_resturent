
<?php
include_once 'database.php';
if (isset($_POST['post_id'])) {
  $id_update = $_POST['post_id'];
  $user_id_update = $_POST['post_user_id'];
  $user_pass_update = $_POST['post_user_pass'];
  $user_designation_update = $_POST['post_user_designation'];
  $user_email_update = $_POST['post_user_email'];
  $user_phone_update = $_POST['post_user_phone'];


  $sql = "UPDATE `users` SET `user_id`='$user_id_update',`user_pass`='$user_pass_update',`designation`='$user_designation_update',`user_email`='$user_email_update',`phone`='$user_phone_update' WHERE `id`='$id_update'";

  echo $sql;

  $result = mysqli_query($con,$sql);
  if($sql){
    echo 'data sucessfully updated';
  }
  else{
    echo 'failed to update Record';

  }
}

$id=$_POST['id'];
$sql = "SELECT * FROM users WHERE `id`='$id'";
$result = mysqli_query($con,$sql);
$assoc=mysqli_fetch_assoc($result);

if (isset($_POST['id'])) {

  ?>
   <!--  <div class="form-group">
     <label for="input" class="col-sm-3 control-label">Id</label>
     <div class="col-sm-9"> -->
      <input type="hidden" class="form-control" name="id" id="id_update" type="text" value="<?php echo $assoc['id']; ?>" placeholder="Enter Youser Name" required="required" readonly>
<!--     </div> -->
  </<!-- div -->
   <br>
  <div class="form-group">
    <label for="input" class="col-sm-3 control-label">User ID</label>
    <div class="col-sm-9">
      <input type="text" class="form-control"name="user_id_update" id="user_id_update" type="text" value="<?php echo $assoc['user_id']; ?>" placeholder="Enter Youser Name" required="required">
    </div>
  </div>
  <br><br>

  <div class="form-group">
    <label for="input" class="col-sm-3 control-label">User Pass</label>
    <div class="col-sm-9">
      <input type="text" class="form-control"name="user_pass_update" id="user_pass_update" type="text" value="<?php echo $assoc['user_pass']; ?>" placeholder="Enter Youser Name" required="required">
    </div>
  </div> 
   <br><br>

  <div class="form-group">
    <label for="input" class="col-sm-3 control-label">Designation</label>
    <div class="col-sm-9">
      <input type="text" class="form-control"name="user_pass_update" id="user_designation_update" type="text" value="<?php echo $assoc['designation']; ?>" placeholder="Enter Youser Name" required="required">
    </div>
  </div>  
  <br><br>

  <div class="form-group">
    <label for="input" class="col-sm-3 control-label">Emaill</label>
    <div class="col-sm-9">
      <input type="text" class="form-control"name="user_pass_update" id="user_email_update" type="text" value="<?php echo $assoc['user_email']; ?>" placeholder="Enter Youser Name" required="required">
    </div>
  </div>  
  <br><br>

  <div class="form-group">
    <label for="input" class="col-sm-3 control-label">Phone</label>
    <div class="col-sm-9">
      <input type="text" class="form-control"name="user_pass_update" id="user_phone_update" type="text" value="<?php echo $assoc['phone']; ?>" placeholder="Enter Youser Name" required="required">
    </div>
  </div>


  
  <?php
}

?>