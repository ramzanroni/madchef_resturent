<?php 
include_once 'database.php';
session_start();
if (isset($_POST['user_name']) && isset($_POST['inputPassword'])) 
{
 $user_name= $_POST['user_name'];
 $inputPassword= $_POST['inputPassword'];
 $sql=$con->query("SELECT * from users WHERE `user_name`='$user_name' AND `user_pass`='$inputPassword'");
 $count=mysqli_num_rows($sql);
 if ($count>0) 
 {
  $row=mysqli_fetch_assoc($sql);
  echo $_SESSION['user_name']=$row['user_name'];
  echo $_SESSION['user_pass']=$row['user_pass'];
  echo $_SESSION['previlege']=$row['previlege'];
  echo $_SESSION['brand']=$row['brand'];
  echo $_SESSION['branch']=$row['branch'];

}
else
{
  echo "Worng";
}
}


if (isset($_POST['brand_name']) && $_POST['brand_name'] !=null) 
{
 $brand_name = $_POST['brand_name'];
 $chksql = "SELECT * FROM `brand` WHERE `brand` ='".$_POST['brand_name']."'";
// echo $chksql;
 $count = mysqli_num_rows(mysqli_query($con,$chksql));
 // echo $count;
 if ($count > 0) {
    echo "brand_name Already Added";
}else{
 $sql=$con->query("INSERT INTO `brand`(`brand`) VALUES ('$brand_name')");
 if ($sql) 
    print "Brand Added Successfully";
}
}elseif (isset($_POST['brand_name']) && $_POST['brand_name']=="") {
    echo "Please Enter Valid Input";
}







if (isset($_POST['new_category_name']) && $_POST['new_category_name'] !=null) 
{
 $new_category_name = $_POST['new_category_name'];
 $chksql = "SELECT * FROM `category` WHERE `category` ='".$_POST['new_category_name']."'";
// echo $chksql;
 $count = mysqli_num_rows(mysqli_query($con,$chksql));
 // echo $count;
 if ($count > 0) {
    echo "Category Already Added";
}else{
 $sql=$con->query("INSERT INTO `category`(`category`) VALUES ('$new_category_name')");
 if ($sql) 
    print "Category Added Successfully";
}
}
elseif (isset($_POST['new_category_name']) && $_POST['new_category_name']=="") {
    echo "Please Enter Valid Input";
}






if (isset($_POST['ticket_status']) && $_POST['ticket_status'] !=null) 
{
 $ticket_status = $_POST['ticket_status'];
 $chksql = "SELECT * FROM `ticket_status` WHERE `status_name` ='".$_POST['ticket_status']."'";
// echo $chksql;
 $count = mysqli_num_rows(mysqli_query($con,$chksql));
 // echo $count;
 if ($count > 0) {
    echo "Status Already Added";
}else{
 $sql=$con->query("INSERT INTO `ticket_status`(`status_name`) VALUES ('$ticket_status')");
 if ($sql) 
    print "status Added Successfully";
}
}
elseif (isset($_POST['ticket_status']) && $_POST['ticket_status']=="") {
    echo "Please Enter Valid Input";
}







if ($_POST['add_branch_check']=='add_branch') {


    if ((isset($_POST['new_brand_name'])  && $_POST['new_brand_name']!=null)&& isset($_POST['new_branch_name']) && $_POST['new_branch_name']!=null)
    {
     $new_brand_name = $_POST['new_brand_name'];
     $new_branch_name = $_POST['new_branch_name'];
     $sql=$con->query("INSERT INTO `branch`(`brand`, `branch`) VALUES ('$new_brand_name','$new_branch_name')");
     if ($sql) 
     {
       echo "Branch Added Successfully";
   }
   else{
     echo "Something is worng";
 }

}
else
{
    echo "Please Enter a Valid Name..";
}

}








if ((isset($_POST['category_name'])  && $_POST['category_name']!=null)&& isset($_POST['subcategory_name']) && $_POST['subcategory_name']!=null)
{
 $category_name = $_POST['category_name'];
 $subcategory_name = $_POST['subcategory_name'];
 $chksql = "SELECT * FROM `subcategory` WHERE `category` ='".$_POST['category_name']."' AND `subcategory`='".$_POST['subcategory_name']."'";
// echo $chksql;
 $count = mysqli_num_rows(mysqli_query($con,$chksql));
 // echo $count;
 if ($count > 0) {
    echo "Status Already Added";
}else{
 $sql=$con->query("INSERT INTO `subcategory`(`category`,`subcategory`) VALUES ('$category_name', '$subcategory_name')");
 if ($sql) 
    print "Subcategory Added Successfully";
}
}
elseif (isset($_POST['category_name']) && $_POST['category_name']=="") {
    echo "Please Enter Valid Input";
}














if ($_POST['add_product_check']=='add_product_type') {

if (isset($_POST['product_type'])&& $_POST['product_type'] !=null) 
{
 $product_type = $_POST['product_type'];
 $sql=$con->query("INSERT INTO `product_type`(`type`) VALUES ('$product_type')");
 if ($sql) 
     {
       echo "Product Type Added Successfully";
   }
   else{
     echo "Product Is Already Added";
 }

}
else
{
    echo "Please Enter a Valid Name..";
}

}






if ((isset($_POST['pro_brand_name']) && $_POST['pro_brand_name']!=null) && isset($_POST['pro_branch_name']) && isset($_POST['pro_details'])&& isset($_POST['pro_category_name'])&& isset($_POST['pro_sub_category_name']) && isset($_POST['pro_product_name'])&& isset($_POST['pro_size']) && isset($_POST['pro_price'])&& isset($_POST['pro_vat']) && isset($_POST['pro_sd'])&& isset($_POST['pro_type'])&& isset($_POST['pro_discount']) && isset($_POST['pro_status'])) 
{
 $product_name = $_POST['pro_product_name'];
 $brand_name = $_POST['pro_brand_name'];
 $branch_name = $_POST['pro_branch_name'];
 $pro_details = $_POST['pro_details'];
 $category_name = $_POST['pro_category_name'];
 $sub_category_name = $_POST['pro_sub_category_name'];
 $size = $_POST['pro_size'];
 $price = $_POST['pro_price'];
 $vat = $_POST['pro_vat'];
 $sd = $_POST['pro_sd'];
 $type = $_POST['pro_type']; 
 $discount = $_POST['pro_discount'];
 $status = $_POST['pro_status'];
 $adons_status = $_POST['pro_adons_status'];
 $attachment = $_FILES['attachment']['name'];
 $newfilename = "";
 $pass = 0;
 if (!empty($_FILES)) 
 {
  $ext = pathinfo($attachment, PATHINFO_EXTENSION);
  $allwoed_extention = array('jpg');
  if(in_array($ext, $allwoed_extention)){
    if ($_FILES['attachment']['size'] < 10485760) {
      $newfilename = round(microtime(true)) . '.' . $ext;
      move_uploaded_file($_FILES['attachment']['tmp_name'], "productimage/".$newfilename);
  } else {
      echo "File Size Not Allowed";
      $pass = 1;
  }
} else {
    echo "Extension Not Allowed";
    $pass = 1;
}
}
if ($pass == 0) {
 $sql=$con->query("INSERT INTO `restaurant`.`product` (`id`, `name`,`deatails`, `image`, `size`, `price`, `vat`, `sd`, `type`, `dicount`, `status`, `brand`, `branch`, `category`, `subcategory`,`adons_status`, `created_at`, `updated_at`) VALUES (NULL, '$product_name','$pro_details', '$newfilename', '$size', '$price', '$vat', '$sd', '$type', '$discount', '1', '$brand_name', '$branch_name', '$category_name', '$sub_category_name','$adons_status', '0000-00-00 00:00:00', '0000-00-00 00:00:00')");
 if($sql){
  echo 'Product Added Successfully...';
} else{
  echo 'Product Not Added....';
}
}
}




if ((isset($_POST['new_brand_name']) && $_POST['new_brand_name']!=null) && isset($_POST['new_user_id'])&& ($_POST['new_user_id']!=null) && isset($_POST['new_password']) && ($_POST['new_password']!=null) && isset($_POST['new_email']) &&($_POST['new_email']!=null) && isset($_POST['new_branch_name']) && ($_POST['new_branch_name']!=null) && isset($_POST['new_user_name']) && ($_POST['new_user_name']!=null) && isset($_POST['new_designation']) && ($_POST['new_designation']!=null) && isset($_POST['new_phone_number']) && ($_POST['new_phone_number']!=null) && isset($_POST['new_privileges'])&& ($_POST['new_privileges']!=null)) 
{
    $new_brand_name = $_POST['new_brand_name'];
    $new_user_id = $_POST['new_user_id'];
    $new_password = $_POST['new_password'];
    $new_email = $_POST['new_email'];
    $new_branch_name = $_POST['new_branch_name'];
    $new_user_name = $_POST['new_user_name'];
    $new_designation = $_POST['new_designation'];
    $new_phone_number = $_POST['new_phone_number'];
    $new_privileges = $_POST['new_privileges'];
    
    $sql=$con->query("INSERT INTO `users` (`user_id`, `user_pass`, `user_name`, `user_email`, `designation`, `phone`, `brand`, `branch`) VALUES ('$new_user_id', '$new_password', '$new_user_name', '$new_email', '$new_designation', '$new_phone_number', '$new_brand_name', '$new_branch_name')");
    if ($sql) 
    {
        echo "User Add Successfully..";
    }
    else
    {
        echo "Something is Worng..!";
    }

}








if ((isset($_POST['sub_brand_name']) && $_POST['sub_brand_name']!=null) && isset($_POST['sub_branch_name']) && ($_POST['sub_branch_name']!=null) && isset($_POST['newp_category_name'])&&($_POST['newp_category_name']!=null)&& isset($_POST['sub_details'])&& isset($_POST['sp_sub_category_name']) && ($_POST['sp_sub_category_name']!=null) && isset($_POST['sub_product_name'])&&($_POST['sub_product_name']!=null)&& isset($_POST['sub_size']) && isset($_POST['sub_price'])&& isset($_POST['sub_vat']) && isset($_POST['sub_sd'])&& isset($_POST['sub_type'])&& isset($_POST['sub_discount']) && isset($_POST['sub_status'])) 
{
 $sub_product_name = $_POST['sub_product_name'];
 $sub_brand_name = $_POST['sub_brand_name'];
 $sub_branch_name = $_POST['sub_branch_name'];
 $sub_details = $_POST['sub_details'];
 $newp_category_name = $_POST['newp_category_name'];
 $sp_sub_category_name = $_POST['sp_sub_category_name'];
 $sub_size = $_POST['sub_size'];
 $sub_price = $_POST['sub_price'];
 $sub_vat = $_POST['sub_vat'];
 $sub_sd = $_POST['sub_sd'];
 $sub_type = $_POST['sub_type']; 
 $sub_discount = $_POST['sub_discount'];
 $sub_status = $_POST['sub_status'];
 $sub_attachment = $_FILES['sub_attachment']['name'];
 $sub_newfilename = "";
 $pass = 0;
 if (!empty($_FILES)) 
 {
  $ext = pathinfo($sub_attachment, PATHINFO_EXTENSION);
  $allwoed_extention = array('jpg');
  if(in_array($ext, $allwoed_extention)){
    if ($_FILES['sub_attachment']['size'] < 10485760) {
      $sub_newfilename = round(microtime(true)) . '.' . $ext;
      move_uploaded_file($_FILES['sub_attachment']['tmp_name'], "productimage/".$sub_newfilename);
  } else {
      echo "File Size Not Allowed";
      $pass = 1;
  }
} else {
    echo "Extension Not Allowed";
    $pass = 1;
}
}
if ($pass == 0) {
 $sql=$con->query("INSERT INTO `restaurant`.`su_product` (`id`, `name`, `deatails`, `image`, `size`, `price`, `vat`, `sd`, `type`, `dicount`, `status`, `brand`, `branch`, `category`, `subcategory`, `created_at`, `updated_at`) VALUES (NULL, '$sub_product_name','$sub_details', '$sub_newfilename','$sub_size', '$sub_price', '$sub_vat', '$sub_sd', '$sub_type', '$sub_discount', '1', '$sub_brand_name', '$sub_branch_name', '$newp_category_name', '$sp_sub_category_name', '0000-00-00 00:00:00', '0000-00-00 00:00:00')");
 if($sql){
  echo 'Product Added Successfully...';
} else{
  echo 'Product Not Added....';
}
}
}







if ((isset($_POST['adons_brand_name']) && $_POST['adons_brand_name']!=null) && isset($_POST['adons_branch_name']) &&($_POST['adons_branch_name']!=null) && isset($_POST['adons_category_name'])&& ($_POST['adons_category_name']!=null)&& isset($_POST['adons_details'])&&($_POST['adons_details']!=null)&& isset($_POST['adons_sub_category_name']) && isset($_POST['adons_product_name'])&& isset($_POST['adons_size']) && isset($_POST['adons_price'])&& isset($_POST['adons_vat']) && isset($_POST['adons_sd'])&& isset($_POST['adons_type'])&& isset($_POST['adons_discount']) && isset($_POST['adons_status'])) 
{
 $adons_product_name = $_POST['adons_product_name'];
 $adons_brand_name = $_POST['adons_brand_name'];
 $adons_branch_name = $_POST['adons_branch_name'];
 $adons_details = $_POST['adons_details'];
 $adons_category_name = $_POST['adons_category_name'];
 $adons_sub_category_name = $_POST['adons_sub_category_name'];
 $adons_size = $_POST['adons_size'];
 $adons_price = $_POST['adons_price'];
 $adons_vat = $_POST['adons_vat'];
 $adons_sd = $_POST['adons_sd'];
 $adons_type = $_POST['adons_type']; 
 $adons_discount = $_POST['adons_discount'];
 $adons_status = $_POST['adons_status'];
 $adons_attachment = $_FILES['adons_attachment']['name'];
 $adons_newfilename = "";
 $pass = 0;
 if (!empty($_FILES)) 
 {
  $ext = pathinfo($adons_attachment, PATHINFO_EXTENSION);
  $allwoed_extention = array('jpg');
  if(in_array($ext, $allwoed_extention)){
    if ($_FILES['adons_attachment']['size'] < 10485760) {
      $adons_newfilename = round(microtime(true)) . '.' . $ext;
      move_uploaded_file($_FILES['adons_attachment']['tmp_name'], "productimage/".$adons_newfilename);
  } else {
      echo "File Size Not Allowed";
      $pass = 1;
  }
} else {
    echo "Extension Not Allowed";
    $pass = 1;
}
}
if ($pass == 0) {
 $sql=$con->query("INSERT INTO `restaurant`.`adons_product` (`id`, `name`, `deatails`, `image`, `size`, `price`, `vat`, `sd`, `type`, `dicount`, `status`, `brand`, `branch`, `category`, `subcategory`, `created_at`, `updated_at`) VALUES (NULL, '$adons_product_name','$adons_details', '$adons_newfilename','$adons_size', '$adons_price', '$adons_vat', '$sub_sd', '$adons_type', '$adons_discount', '1', '$adons_brand_name', '$adons_branch_name', '$adons_category_name', '$adons_sub_category_name', '0000-00-00 00:00:00', '0000-00-00 00:00:00')");
 if($sql){
  echo 'Product Added Successfully...';
} else{
  echo 'Product Not Added....';
}
}
}









if (isset($_POST['del_id'])) 
{
    $del_id=$_POST['del_id'];
    $sql=$con->query("DELETE FROM `brand` WHERE `id`='$del_id'");
    if ($sql) 
    {
        echo "Delete Successfully.";
    }
    else
    {
        echo "Something is Worng..!";
    }
}


if (isset($_POST['del_product'])) 
{
    $del_product=$_POST['del_product'];
    $sql=$con->query("DELETE FROM `product` WHERE `id`='$del_product'");
    if ($sql) 
    {
        echo "Delete Successfully.";
    }
    else
    {
        echo "Something is Worng..!";
    }
}


if (isset($_POST['del_subcategory'])) 
{
    $del_subcategory=$_POST['del_subcategory'];
    $sql=$con->query("DELETE FROM `subcategory` WHERE `id`='$del_subcategory'");
    if ($sql) 
    {
        echo "Delete Successfully.";
    }
    else
    {
        echo "Something is Worng..!";
    }
}


if (isset($_POST['del_category'])) 
{
    $del_category=$_POST['del_category'];
    $sql=$con->query("DELETE FROM `category` WHERE `id`='$del_category'");
    if ($sql) 
    {
        echo "Delete Successfully.";
    }
    else
    {
        echo "Something is Worng..!";
    }
}


if (isset($_POST['del_branch'])) 
{
    $del_branch=$_POST['del_branch'];
    $sql=$con->query("DELETE FROM `branch` WHERE `id`='$del_branch'");
    if ($sql) 
    {
        echo "Delete Successfully.";
    }
    else
    {
        echo "Something is Worng..!";
    }
}



if (isset($_POST['del_status'])) 
{
    $del_status=$_POST['del_status'];
    $sql=$con->query("DELETE FROM  `ticket_status` WHERE `id`='$del_status'");
    if ($sql) 
    {
        echo "Delete Successfully.";
    }
    else
    {
        echo "Something is Worng..!";
    }
}


if (isset($_POST['Type_delet'])) 
{
    $Type_delet=$_POST['Type_delet'];
    $sql=$con->query("DELETE FROM  `product_type` WHERE `id`='$Type_delet'");
    if ($sql) 
    {
        echo "Delete Successfully.";
    }
    else
    {
        echo "Something is Worng..!";
    }
}



if (isset($_POST['del_report'])) 
{
    $del_report=$_POST['del_report'];
    $sql=$con->query("DELETE FROM `ticket`.`ticket` WHERE `ticket`.`id` ='$del_report'");
    if ($sql) 
    {
        echo "Delete Successfully.";
    }
    else
    {
        echo "Something is Worng..!";
    }
}

if (isset($_POST['del_user'])) 
{
    $del_user=$_POST['del_user'];
    $sql=$con->query("DELETE FROM `users` WHERE `id` ='$del_user'");
    if ($sql) 
    {
        echo "Delete Successfully.";
    }
    else
    {
        echo "Something is Worng..!";
    }
}


if (isset($_POST['del_adons'])) 
{
    $del_adons=$_POST['del_adons'];
    $sql=$con->query("DELETE FROM `adons_product` WHERE `id` ='$del_adons'");
    if ($sql) 
    {
        echo "Delete Successfully.";
    }
    else
    {
        echo "Something is Worng..!";
    }
}


if (isset($_POST['del_sub'])) 
{
    $del_sub=$_POST['del_sub'];
    $sql=$con->query("DELETE FROM `su_product` WHERE `id` ='$del_sub'");
    if ($sql) 
    {
        echo "Delete Successfully.";
    }
    else
    {
        echo "Something is Worng..!";
    }
}



?>