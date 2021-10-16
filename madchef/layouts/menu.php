<?php  
include_once '../libs/database.php';
session_start();
?>
<div class="row">
  <nav class="navbar navbar-default navbar-expand-lg fixed-top custom-navbar">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="icon ion-md-menu"></span>
    </button> <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <!-- <div class="container"> -->
        <a href="../madchef/?phone_number=<?php echo $_SESSION['phone_number']; ?>&agent=<?php echo $_SESSION['agent']; ?>&brand=<?php echo $_SESSION['brand']; ?>"><img src="images/logo.png" href='/' style="height: 46px; width: 100px;" href=location.reload(); id="desktop-logo-image" class="img-fluid nav-logo-desktop" alt="Company Logo"/></a>
        <ul class="navbar-nav ml-auto" data-easing="easeInOutExpo" data-speed="1250" data-offset="65">
          <?php 
          $category_sql=mysql_query("SELECT DISTINCT(`category`) FROM `product` WHERE `category`!='' AND brand='".$_SESSION['brand']."' AND `branch`='".$_SESSION['branch']."' AND `active`='Y'");
          while ($row_category=mysql_fetch_assoc($category_sql)) 
          {
            ?>
            <li class="nav-item nav-custom-link">
              <a class="nav-link" id="<?php echo $row_category['category']; ?>"
                onclick="changepage('<?php echo $row_category['category']; ?>')" style="font-size:12px; cursor: pointer;">
                <?php echo $row_category['category']; ?>
                <i class="icon ion-ios-arrow-forward icon-mobile"></i>
              </a>
            </li>
            <?php
          }
          ?>
          <li>
            <a style="cursor: pointer;" class="nav-link btn btn-danger text-white" onclick="search_btn()">Find Order</a>
          </li>
        <!-- <li class="ml-1 mr-1">
          <a style="cursor: pointer;" class="nav-link btn btn-danger text-white" data-toggle="modal" data-target="#myModal1">Select Branch</a>
        </li> -->
        <li class="ml-1 mr-1" >
          <input type="hidden" name="brand" id="brand" value="Madchef">
          <select class="form-control btn-danger text-white" name="branch" id="branch" onchange="reload()" style="cursor: pointer;">
            <option>Select Branch</option>
            <?php
            $sql = "SELECT `branch` FROM `branch` WHERE `brand`='Madchef' AND `status`='1' ORDER BY branch ASC";
            $result =mysql_query($sql);
            while($row = mysql_fetch_assoc($result) ){
              if($_SESSION['branch'] == $row['branch']){
                $status = "selected";
              }else{
                $status ='';
              }
              echo "<option ".$status." value='".$row['branch']."'>".$row['branch']."</option>";
            }
            ?>
          </select>
        </div>
      </li>
    </ul>
  </div>
</nav>
</div>
