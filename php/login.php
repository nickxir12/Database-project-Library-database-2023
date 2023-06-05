<?php

	include("connection.php");
	include("functions.php");

?>


<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>
<body>


	<style>

	.message-box {
			display: none;
			width: 600px;
			height: 20px;
			background: #f2f2f2;
			border: 1px solid #ccc;
			text-align: center;
			padding: 10px;
			position: fixed;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
		}
	</style>

	<style type="text/css">
	
	body {
	background-image: url('../image/background-image1.jpg');
	background-repeat: no-repeat;
	/* background-position: center; */
	background-size: 100%;
	padding-top: 80px;
	}

	.error-message {
	  font-size: 24px;
	  font-weight: bold;
	  color: red;
	}


	#text{

	    height: 25px;
	    border-radius: 5px;
	    padding: 4px;
	    border: solid thin #aaa;
	    width: 100%;
	}

	#button{
	    padding: 10px;
	    width: 100px;
	    color: white;
	    background-color: lightblue;
	    border: none;
	}

	#box{
		background-color: black;
	    margin: auto;
	    width: 300px;
	    padding: 20px;
	}

	</style>

	<script>
	function showMessage() {
            var messageBox = document.getElementById('messageBox');
            messageBox.style.display = 'block';
            setTimeout(function() {
                messageBox.style.display = 'none';
            }, 5000);
        }
    </script>


	<div id="box">

	    <form method="post">
	        <div style="font-size: 20px;margin: 10px;color: white;">Login</div>

	        <input id="text" type="text" name="username" placeholder="Enter your username"><br><br>
	        <input id="text" type="password" name="password" placeholder="Enter your password"><br><br>
	        <input id="button" type="submit"  style="margin-left:90px;" name="form1_submit" value="Login"><br><br>

	        <a href="signup.php" style="margin-left:90px;">Click to Signup</a><br><br>
	    </form>
	</div>

    <input id="button" type="submit" value="Admin" style="position: absolute; top: 10px; right: 0; margin: 10px;"><br><br>
    <a href="admin_login.php" style="position: absolute; top: 50px; right: 0; margin: 10px;color: white;">Admin Login</a><br><br>

	<?php
			// Check if the message is not empty
			if (!empty($message)) {
				showMessage($message);
			}
		?>

</body>
</html>


<?php
$message = isset($_GET['message']) ? $_GET['message'] : '';

	// Function to display the message box
	// Check if the message is set
	$message = isset($_GET['message']) ? $_GET['message'] : '';

	// Function to display the message box
	function showMessage($message) {
		echo '<div id="messageBox" class="message-box">' . $message . '</div>';
		echo '<script>showMessage();</script>';
	}

if($_SERVER['REQUEST_METHOD'] == "POST")
{

	if (isset($_POST['form1_submit'])) {

	//something was posted
	$username = $_POST['username'];
	$password = $_POST['password'];

	if(!empty($username) && !empty($password) && !is_numeric($username))
	{

		//read from database
		$query = "select * from user where username = '$username' limit 1";
		$result = mysqli_query($con, $query);

		if($result)
		{
			if($result && mysqli_num_rows($result) > 0)
			{
				$user_data = mysqli_fetch_assoc($result);



					if($user_data['password'] == $password)
					{

						$_SESSION['user_id'] = $user_data['user_id'];

						if($user_data['user_type'] === "student" || $user_data['user_type'] === "teacher"){
						header("Location: users.php");
						die;
						}
						elseif($user_data['user_type'] === "school_lib_operator"){
							header("Location: school_lib_operator.php");
							die;
						}
					}else{
						$message = "Wrong username or password!";
								showMessage($message);
					}

			}
		}
		else{
			$message = "Wrong username or password!";
					showMessage($message);
		}
	}else
	{
		$message = "Enter information!";
				showMessage($message);
	}

	}

}

?>
