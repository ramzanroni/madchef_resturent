
<?php
session_start();
$brand=$_SESSION['brand'];
$branch=$_SESSION['branch'];

?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<div id="message"></div>
<script>
	setInterval(function(){
		get_ignore_order('<?php echo $brand;?>','<?php echo $branch;?>');
	}, 4000);

	function get_ignore_order(brand,branch){
		$.ajax({
			url: "get_ignore_order.php",
			type: "POST",
			data: {
				brand: brand,
				branch: branch	
			},
			cache: false,
			success: function(reponse){
				$('#message').html(reponse);					
			}
		});
	}
</script>
