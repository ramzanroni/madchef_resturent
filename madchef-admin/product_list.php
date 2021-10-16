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
            include_once 'product_list_data.php';
            ?>
          </div>
        </div>
      </div>
    </main>
    <?php 
    include_once 'footer.php';
    ?>
   