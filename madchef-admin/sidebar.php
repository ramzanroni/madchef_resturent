

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Madchef</title>



<!--     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>      
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
-->



<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->




<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>

</head>
<body class="sb-nav-fixed" style="font-size: 14px;">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <a class="navbar-brand ps-3" href="http://36.255.69.216/madchef-admin/home.php"><img src="madchef.png" style="height: 35px;"></a>
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
        <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="input-group">
            </div>
        </form>
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">

         <?php if($_SESSION['previlege'] == 3){ ?>

             <li class="nav-item" style="margin-top: 12px; color:#FFFFFF">                 
              <div class="nav-link" onclick="new_ticket()" style="cursor: pointer;"><i class="fas fa-bell"></i></div>
            </li>
            <span id="new_ticket" style="color:#FFFFFF;"></span>
              <li class="nav-item"  style="margin-top: 12px" id="sound_control">
              
                        <?php
                        if ($_SESSION['notification_status'] == 0) {
                            ?>
                            <div class="nav-link" onclick="audio_control('play')" style="cursor: pointer;"><i class="fas fa-volume-mute"></i></div>
                            <?php
                        }else{
                            ?>
                            <div class="nav-link" onclick="audio_control('pause')" style="cursor: pointer;"><i class="fas fa-volume-up"></i></div>
                            <?php
                        }
                        ?>
              </li>


        <?php } ?>
       
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="http://36.255.69.216/madchef-admin/logout.php">Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">

                        <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                    Authentication
                                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                </a>
                                <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                    <nav class="sb-sidenav-menu-nested nav">
                                        <a class="nav-link" href="login.html">Login</a>
                                        <a class="nav-link" href="register.html">Register</a>
                                        <a class="nav-link" href="password.html">Forgot Password</a>
                                    </nav>
                                </div>
                                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                    Error
                                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                </a>
                                <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                    <nav class="sb-sidenav-menu-nested nav">
                                        <a class="nav-link" href="401.html">401 Page</a>
                                        <a class="nav-link" href="404.html">404 Page</a>
                                        <a class="nav-link" href="500.html">500 Page</a>
                                    </nav>
                                </div>
                            </nav>
                        </div>

                        <?php
                        session_start();
                        if ($_SESSION['user_name']==null) 
                        {
                            header("Location: http://36.255.69.216/madchef-admin/index.php");

                        }
                        ?>
                        <?php

                        if ($_SESSION["previlege"]==3) {
                         ?>
                         <a class="nav-link" href="http://36.255.69.216/madchef-admin/product_list.php">
                           <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                           Product list
                       </a>
                       <a class="nav-link" href="http://36.255.69.216/madchef-admin/sub_product_list.php">
                         <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                         Sub Product
                     </a>

                     <a class="nav-link" href="http://36.255.69.216/madchef-admin/adons_product_list.php">
                         <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                         Add_ons Product
                     </a>

                        <a class="nav-link" href="http://36.255.69.216/madchef-admin/order_list.php">
                         <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                         Update Order
                     </a>

                  <?php    } ?> 



                 <?php

                 if ($_SESSION["previlege"]==0) {
                     ?>
                     <a class="nav-link" href="http://36.255.69.216/madchef-admin/add_brand.php">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Brand
                    </a>  

                    <a class="nav-link" href="http://36.255.69.216/madchef-admin/add_branch.php">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Branch
                    </a>  

                    <a class="nav-link" href="http://36.255.69.216/madchef-admin/add_category.php">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Category
                    </a>

                    <a class="nav-link" href="http://36.255.69.216/madchef-admin/add_subcategory.php">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Subcategory
                    </a>

                    <a class="nav-link" href="http://36.255.69.216/madchef-admin/add_product_type.php">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Product type
                    </a>  

                    <a class="nav-link" href="http://36.255.69.216/madchef-admin/add_product.php">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Product
                    </a>

                    <a class="nav-link" href="http://36.255.69.216/madchef-admin/sub_product.php">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Sub Product
                    </a>

                    <a class="nav-link" href="http://36.255.69.216/madchef-admin/adons_product.php">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Add_ons Product
                    </a>

                    <a class="nav-link" href="http://36.255.69.216/madchef-admin/ticket_status.php">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Order Status
                    </a>

                    <a class="nav-link" href="http://36.255.69.216/madchef-admin/user.php">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Users
                    </a>

                    <a class="nav-link" href="http://36.255.69.216/madchef-admin/report.php">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Report
                    </a>

                    <a class="nav-link" href="http://36.255.69.216/madchef-admin/update_ticket.php">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Update Order
                    </a>
                <?php    } ?> 


            </div>
        </div>
        <div class="sb-sidenav-footer">
            i Help BD
        </div>
    </nav>
</div>