<?php  
session_start();
include_once "libs/database.php";
if (isset($_GET['brand']) && isset($_GET['branch'])) {
	$_SESSION['brand']=$_GET['brand'];
	$_SESSION['branch']=$_GET['branch'];
}

if (isset($_GET['phone_number']) && $_GET['agent']) {
	$_SESSION['phone_number']=$_GET['phone_number'];
	$_SESSION['agent']=$_GET['agent'];
}
// $_SESSION['brand']='Madchef';
// $_SESSION['branch']='Dhanmondi';

?>
<!doctype html>
<html lang="en-US">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
	<link rel="stylesheet" href="styles/style.css " type="text/css" />
	<link href="https://unpkg.com/ionicons@4.2.0/dist/css/ionicons.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<title>Madchef</title>

</head>
<body>
	<?php
	require 'layouts/modal.php';
	require 'layouts/menu.php';

	?>
	<section id="hero">  
		<div class="container">
			<div class="col-md-12 m-0 p-0" id="full_div"></div>
			<div class="row" id="product_row">
				<div class="col-md-8">
					<div class="row" id="product_display">					
					</div>
				</div>
				<div class="col-md-4 sticky-top">
					<?php require 'layouts/cart.php';?>
				</div>
			</div>
		</div>
	</section>
	<script src="js/script.js"></script>
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
	<script type="text/javascript">


		$( document ).ready(function() {
			index();
			load_card();
			var h = window.innerHeight;
			document.getElementById("product_display").setAttribute("style", "max-height:"+h+"px; overflow-y: scroll;");
		});

		function reload(){

			var brand = $('#brand').val();
			var branch = $('#branch').val();
			$.ajax({
				url: "./index.php",
				type: "GET",
				data: {
					brand:brand,
					branch:branch
				},
				success: function(response){
					$('#myModal1').modal('hide');
					window.location.href="http://36.255.69.216/madchef/index.php?brand="+brand+"&branch="+branch;
				}
			});
		}
		function search_order()
		{
			var search_key=$("#search_element").val();
			$.ajax({
				url: "pages/search_action.php",
				type: "POST",
				data: {
					search_key:search_key
				},
				success: function(response){
					$("#search_element").val('');
					$("#product_row").hide();
					$("#full_div").show();
					$("#full_div").html(response);


				}
			});
		}
		function modal_open(id)
		{
			var id= id;
			$.ajax({
				url: "layouts/modal_result.php",
				type: "POST",
				data: {
					id:id
				},
				success: function(response){
					document.getElementById("load_data").innerHTML =response;
				}
			});
		}


		function changepage(category) 
		{
			var category=category;
			$.ajax({
				url: "pages/product2.php",
				type: "POST",
				data: {
					category:category  
				},
				success: function(response){
					$("#full_div").hide();
					$("#product_row").show();
					document.getElementById("product_display").innerHTML =response;
				}
			});
		}

		function increment(main_product_price) {
			document.getElementById('quantity').stepUp();
			var decrement_indetify="decrement_indetify";
			var main_product_price=main_product_price;
			var quantity=$("#quantity").val();
			var addons_value = get_add_ons();
        // var total_package_price=main_product_price+addons_value;
          //alert(total_package_price);
          var total_price = ((parseInt(main_product_price)+parseInt(addons_value))*quantity);
          document.getElementById("total_product_price").innerHTML = total_price;
      }


      function decrement(main_product_price) {
      	document.getElementById('quantity').stepDown();
      	var decrement_indetify="decrement_indetify";
      	var main_product_price=main_product_price;
      	var quantity=$("#quantity").val();
      	var addons_value = get_add_ons();

      	var total_price = ((parseInt(main_product_price)+parseInt(addons_value))*quantity);
      	document.getElementById("total_product_price").innerHTML = total_price;
      }


      function get_add_ons(){
      	var adons_price = [];
      	$.each($("input[name='add_ons']:checked"), function(){
      		adons_price.push($(this).val());
      	});
      	var length = adons_price.length;
      	var adons_price_sum=0;
      	if(length > 0){
      		for (var i = length - 1; i >= 0; i--) {

      			var adons_unit_price=adons_price[i].split(".");
      			adons_price_sum += Number(adons_unit_price['0']);
      		}
      	}
      	return adons_price_sum;
      }

      function add_to_cart(product_name, product_unit_price) 
      {
      	var product_name=product_name;
      	var product_unit_price=product_unit_price;
      	var adons_id = [];
      	var phone="<?php echo $_GET['phone_number']; ?>";
      	var cart_identy="cart_funtion";
      	var product_id=$("#product_id").val();
      	var product_quantity=$("#quantity").val();
      	var total_product_price=$("#total_product_price").html();
      	var extra_instruction=$("#extra_instruction").val();
      	var product_not_available=$("#product_not_available").val();
      	var product_vat=$("#product_vat").val();
      	var product_sd=$("#product_sd").val();
      	$.each($("input[name='add_ons']:checked"), function(){
      		adons_id.push($(this).val());
      	});

      	var extra_choice = [];
      	$.each($("input[id='sub_product_id']:checked"), function(){
      		extra_choice.push($(this).val());
      	});
      	var adons_id_lenght=adons_id.length;
      	var adons_product_id=[];
      	for (var i = adons_id_lenght - 1; i >= 0; i--) {
      		var adons_id_explode=adons_id[i].split(".");
      		adons_product_id.push(adons_id_explode['1']);
      	}
      	$.ajax({
      		url: "pages/cart_info_fatch.php",
      		type: "POST",
      		data: {
      			cart_identy:cart_identy,
      			phone:phone,
      			product_name:product_name,
      			product_id:product_id,
      			extra_choice:extra_choice,
      			adons_product_id:adons_product_id,
      			product_unit_price:product_unit_price,
      			product_quantity:product_quantity,
      			total_product_price:total_product_price,
      			extra_instruction:extra_instruction,
      			product_not_available:product_not_available,
      			product_sd:product_sd,
      			product_vat:product_vat
      		},
      		success: function(response){
      			$('#myModal').modal('hide');
      			load_card();
      		}
      	});
      }


      function adons_product(product_price)
      {
      	var product_price=product_price;
      	var quantity=$("#quantity").val();
      	var addons_value = get_add_ons();
      	var total_price = (product_price*quantity)+addons_value;
      	document.getElementById("total_product_price").innerHTML = total_price;
      }


      function load_card() 
      {
      	var phone='<?php echo $_GET['phone_number'];?>';
      	$.ajax({
      		url: "layouts/cart_action.php",
      		type: "POST",
      		data: {
      			phone:phone
      		},
      		success: function(response){
              //alert(response);
              document.getElementById("cart_view").innerHTML =response;
          }
      });
      }
      function product_decrement(cart_id, product_quantity) 
      {
      	var product_decrement_update="product_decrement_update";
      	if (product_quantity >1) 
      	{
      		var new_quantity=parseInt(product_quantity)-1;
      		$.ajax({
      			url: "pages/cart_info_fatch.php",
      			type: "POST",
      			data: {
      				product_decrement_update:product_decrement_update,
      				new_quantity:new_quantity,
      				cart_id:cart_id
      			},
      			success: function(response){
      				load_card();
      			}
      		});
      	}
      }


      function product_increment(cart_id, product_quantity) 
      {
      	var product_decrement_update="product_decrement_update";
      	if (product_quantity>=1) 
      	{
      		var new_quantity=parseInt(product_quantity)+1;
      		$.ajax({
      			url: "pages/cart_info_fatch.php",
      			type: "POST",
      			data: {
      				product_decrement_update:product_decrement_update,
      				new_quantity:new_quantity,
      				cart_id:cart_id
      			},
      			success: function(response){
      				load_card();
      			}
      		});
      	}
      }

      function delete_cart_item(delete_cart_id){
      	$.ajax({
      		url: "pages/cart_info_fatch.php",
      		type: "POST",
      		data: {
      			delete_cart_id:delete_cart_id
      		},
      		success: function(response){
      			load_card();
      		}
      	});
      }



      function check_validation(field) 
      {

      	var error = 0;
      	var field_id=field+"_error";
      	var field_value = $("#"+field).val();
      	if( field_value.length < 1){           
      		error = 1;
      		var eror_msg = field+" is required";
      		document.getElementById(field_id).innerHTML=eror_msg;
      	}else{
      		error = 0;
      		document.getElementById(field_id).innerHTML='';
      	}
      	return error;   
      }



      function place_order(phone_number, agent)
      {

      	var error_no =0;
		  var customer_name=$("#customer_name").val();
      	var address=$("#address").val();
      	error_no += check_validation('address');
      	var additional_phone=$("#additional_phone").val();
      	var discount_value=$("#discount").val();
      	var discount_type=$("#discount_type").val();
      	var brand=$("#brand").val();
      	error_no += check_validation('brand');
      	var branch=$("#branch").val();
      	error_no += check_validation('branch');

      	if (error_no < 1) 
      	{
      		$.ajax({
      			url: "pages/order_data_fatch.php",
      			type: "POST",
      			data: {
      				phone_number:phone_number,
      				agent:agent,
      				address:address,
      				additional_phone:additional_phone,
      				discount_value:discount_value,
      				discount_type:discount_type,
      				brand:brand,
      				branch:branch,
					customer_name:customer_name
      			},
      			success: function(response){
      				$('#myModal').modal('hide');
      				load_card();
      				sendSMS(phone_number,response);
      			}
      		});
      	}
      }
      function sendSMS(phone_number,order_id) 
      {
      	$.ajax({
      		url: "pages/sms.php",
      		type: "POST",
      		data: {
      			phone_number:phone_number,
      			order_id:order_id
      		},
      		success: function(response){
      			//window.close();
      		}
      	});
      }


      function check_order(phone_number, agent){
      	$.ajax({
      		url: "pages/check_order.php",
      		type: "POST",
      		data: {
      			phone_number:phone_number,
      			agent:agent
      		},
      		success: function(response){
      			$('#myModal').modal('show');
      			$('#load_data').html(response);
      		}
      	});         
      }
      function calculate_discount() 
      {
      	var discount_value=$("#discount").val();
      	var discount_type=$("#discount_type").val();
      	var total_price=$("#total_price").val();
      	if (discount_type=='TK') 
      	{
      		total_price=Math.round(total_price-discount_value);
      	}
      	else{
      		discount_value = Math.round(total_price*(discount_value/100));
      		total_price=Math.round(total_price-discount_value);
      	}
      	$('#total_amount').html(total_price);
      }
      function select_branch()
      {
      	var brand=$("#brand").val();
      	var brand_check="SelectBranch";
      	$.ajax({
      		url: "pages/check_order.php",
      		type: "POST",
      		data: {
      			brand:brand,
      			brand_check:brand_check
      		},
      		success: function(response){
      			$("#branch").html(response);
      		}
      	});
      }
      function search_btn()
      {
      	$.ajax({
      		url: "pages/search_order.php",
      		type: "POST",
      		success: function(response){
      			$("#search_element").val('');
      			$("#product_row").hide();
      			$("#full_div").show();
      			$("#full_div").html(response);
            // alert(response);
            // document.getElementById("product_row").innerHTML =response;
        }
    });
      }
      function search_type() 
      {
      	var search_item="search_item";
      	var item=$("#select_type").val();
      	$.ajax({
      		url: "pages/search_result.php",
      		type: "POST",
      		data: {
      			search_item:search_item,
      			item:item
      		},
      		success: function(response){
      			$("#load_item").html(response);
      		}
      	});
      }
      function search_result_btn()
      {
      	var select_type= $("#select_type").val();
      	var search_key= $("#search_key").val();
      	var start_date= $("#start_date").val();
      	var end_date= $("#end_date").val();
      	var search_result="search_result";
      	$.ajax({
      		url: "pages/search_result.php",
      		type: "POST",
      		data: {
      			search_result:search_result,
      			select_type:select_type,
      			search_key:search_key,
      			start_date:start_date,
      			end_date:end_date
      		},
      		success: function(response){
      			$("#search_result").html(response);
      		}
      	});
      }


  </script>
</body>
</html>
