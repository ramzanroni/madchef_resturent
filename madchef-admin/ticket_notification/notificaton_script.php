
<?php

session_start();
$brand=$_SESSION['brand'];
$branch=$_SESSION['branch'];

?>
<script type="text/javascript">


	//////////////message ////////////////////////
	function get_ignore_order(brand,branch){
		$.ajax({
			url: "ticket_notification/get_ignore_order.php",
			type: "POST",
			data: {
				brand: brand,
				branch: branch	
			},
			cache: false,
			success: function(reponse){

				console.log(reponse);
				//$('#message').html(reponse);					
			}
		});
	}



	$( document ).ready(function() {		
		setInterval(function(){ 
			realtime_notification(); 
		    get_ignore_order('<?php echo $brand;?>','<?php echo $branch;?>');

		}, 1000);
	});

	function playAudio() {
		var x = document.getElementById("myAudio");
		x.play(); 
	} 

	function pauseAudio() {
		var x = document.getElementById("myAudio");
		x.pause(); 
	}


	function audio_control(status){
		let audio_fileld = document.getElementById("sound_control");
		let audio_value  = document.getElementById("audio_value");
		let audio_status = audio_value.value;
		console.log(audio_status);
		if(status == 'play'){
			audio_value.value ='1';
			audio_fileld.innerHTML="<div class=\"nav-link\" onclick=\"audio_control('pause')\" style=\"cursor: pointer;\"><i class=\"fas fa-volume-up\"></i></div>";
			notification_status(1)
		}
		if (status == 'pause') {
			audio_value.value ='0';
			audio_fileld.innerHTML="<div class=\"nav-link\" onclick=\"audio_control('play')\" style=\"cursor: pointer;\"><i class=\"fas fa-volume-mute\"></i></div>";
			var x = document.getElementById("myAudio");
			x.pause();
			notification_status(0)
		}
	}

	function notification_status(notification_status){
		$.ajax({
			url: "session.php",
			type: "POST",
			data: {
				notification_status: notification_status            
			},
			success: function(response){
				//console.log(response);
			}
		})
	}



	function realtime_notification(){	
				
		$.ajax({
			url: "ticket_notification/notification_action.php",
			type: "POST",
			data: {
				notification: 'notification'             
			},
			success: function(response){
												
				 let audio_value  = document.getElementById("audio_value").value;
				 if(audio_value == '1' && response > 0){
				 	playAudio();
					$('#new_ticket').html(response);
				}else{
					pauseAudio();
				 	$('#new_ticket').html(response);
				 }
				
			}
		});
	}

	function new_ticket(){
		$.ajax({
			url: "ticket_notification/notification_action.php",
			type: "POST",
			data: {
				new_ticket: 'new_ticket'             
			},
			success: function(response){
				$('#notification_body').html(response);
				$('#notification_modal').modal('show');
			}
		});
	}
	function request_receive(ticket_id){
		$.ajax({
			url: "ticket_notification/notification_action.php",
			type: "POST",
			data: {
				ticket_id: ticket_id             
			},
			success: function(response){
				
				new_ticket();
				location.reload();


			}
		});
	}

</script>