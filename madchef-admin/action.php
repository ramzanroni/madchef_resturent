<?php
include_once 'database.php';
if (isset($_REQUEST['quiz_activate_id'])) {
  $user_activate_id = $_REQUEST['quiz_activate_id'];
  $sql = "UPDATE `product` SET active = 'Y' WHERE `id` = ". $user_activate_id"";
  $result_del_uer =  mysqli_query($con,$sql);
  if($result_del_uer){
    echo "Activate Successfully";
  }else{
    echo "Not Activate";
  }
}

if (isset($_REQUEST['quiz_deactivate_id'])) {
  $user_deactivate_id = $_REQUEST['quiz_deactivate_id'];
  $sql = "UPDATE `product` SET active = 'N' WHERE `id` = ". $user_deactivate_id;
  $result_del_uer =  mysqli_query($con,$sql);
  if($result_del_uer){
    echo "Deactivate Successfully";
  }else{
    echo "Not Deactivate";
  }
}
?>