
<div class="shadow-sm p-3 mb-1 bg-white rounded"> 
	<div class="row">
		<div class="col-md-12 pt-3 pb-3">
			<p class="h4 text-center bg-danger text-white pt-2 pb-2">Cart</p>
		</div>
		<div id="cart_view">
			
		</div>
		<div class="col-md-12 pt-3 pb-3">
			<!-- <button type="button" onclick="place_order('<?php echo $_GET['phone_number']; ?>','<?php echo $_GET['agent']; ?>')" class="btn btn-danger btn-lg btn-block">Go to Checkout</button> -->

			<button type="button" onclick="check_order('<?php echo $_GET['phone_number']; ?>','<?php echo $_GET['agent']; ?>')" class="btn btn-danger btn-lg btn-block">Go to Checkout</button>
		</div>
	</div>
</div>