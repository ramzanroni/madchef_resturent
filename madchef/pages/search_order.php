<?php  
session_start();
include_once "libs/database.php";
$date = date("Y-m-d");
?>
<div class="row">
	<div class="col-md-12 border border-danger rounded pt-4 pb-4">
		<div class="col-md-6 float-left p-3">
			<div class="form-group">
				<label for="select_type">Select Type</label>
				<select class="form-control" id="select_type" onchange="search_type()">
					<option value="all">All</option>
					<option value="order_no">Order No</option>
					<option value="brand">Brand</option>
					<option value="branch">Branch</option>
					<option value="phone_number">Phone Number</option>
					<option value="status">Status</option>
				</select>
			</div>
		</div>
		<div class="col-md-6 float-left p-3">
			<div class="form-group" id="">
				<label for="select_type">Search Key</label>
				<div id="load_item">
					<input type="" readonly name="" class="form-control">
				</div>
			</div>
		</div>
		<div class="col-md-6 float-left pl-3 pr-3">
			<div class="form-group"> 
				<label>Start Date</label>
				<input type="date" name="start_date" value="<?php echo $date; ?>" id="start_date" class="form-control">
			</div>
		</div>
		<div class="col-md-6 float-left pl-3 pr-3">
			<div class="form-group"> 
				<label>End Date</label>
				<input type="date" name="end_date" id="end_date" value="<?php echo $date; ?>" class="form-control">
			</div>
		</div>
		<div class="pl-3 pr-3">
			<input type="submit" name="submit" id="search_btn" class="btn btn-danger p-2" onclick="search_result_btn()">
		</div>
	</div>
	<div class="col-md-12 p-0" id="search_result">
		
	</div>

</div>
