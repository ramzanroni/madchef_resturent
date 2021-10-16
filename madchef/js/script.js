function index(){
  $.ajax({
    type: "GET",
    url: "pages/product.php",
    success: function(data){
      document.getElementById("product_display").innerHTML =data;
    }
  });
}

