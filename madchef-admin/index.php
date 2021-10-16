<?php 
include_once 'database.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>Madchef</title>
	<link href="css/styles.css" rel="stylesheet" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body style="background-image: url(madchef_tcheez.jpg); background-size: 100% 100%;">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
                 <div class="row justify-content-center" style="margin-top: 171px;">		
                  		<div class="col-sm-4">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
                             <div class="card-header" style="background: white;"><h3 class="text-center font-weight-light my-4">Order Managment</h3></div>		<div class="card-body">
									<form method="post" action="">
										<div class="form-floating mb-3">
											<input class="form-control" id="user_name" type="text" placeholder="Enter Your User Name" />
											<label for="user_name">User Name</label>
										</div>
										<div class="form-floating mb-3">
											<input class="form-control" id="inputPassword" type="password" placeholder="Password" />
											<label for="inputPassword">Password</label>
										</div>
                                        <div class="login" style="text-align: center;">                                         
                                       <input type="button" name="submit" value="Login" class="btn btn-success" onclick="login()" style="background: #E96B17;width: 112px;">									
                                   </div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	function login() 
	{
		var user_name= $('#user_name').val();
		var inputPassword= $('#inputPassword').val();



		$.ajax({
			url: "fatch_data.php",
			type: "POST",
			data: {
				user_name:user_name,
				inputPassword:inputPassword  
			},
			success: function(response){
				var data=response;
				if (data == "Worng") 
				{
					alert("Please Enter Valid User And Password");
					window.location.href = "http://36.255.69.216/madchef-admin/index.php";
				}
				else
				{
					window.location.href = "http://36.255.69.216/madchef-admin/home.php";
				}

			}
		});

	}
</script>

</body>
</html>
