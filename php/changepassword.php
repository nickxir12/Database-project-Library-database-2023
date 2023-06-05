<?php
// session_start();

	include("connection.php");
	include("functions.php");
	$user_data = check_login($con);
	$usernameErr = $passwordErr = $password1Err = $password2Err = "";

	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$username = $_POST['username'];
		$password = $_POST['password'];
		$password1 = $_POST['password1'];
		$password2 = $_POST['password2'];
		if(!empty($username) && !empty($password) && !empty($password1)&& !empty($password2) && !is_numeric($username))
		{
			//read from database
			$query = "select * from user where username = '$username' limit 1";
			$result = mysqli_query($con, $query);

			if($result)
			{
				if($result && mysqli_num_rows($result) > 0)
				{
					$user_data = mysqli_fetch_assoc($result);
					if($user_data['password'] === $password)
					{
						if($password1==$password2){
							$query = "UPDATE user SET password = '$password1'  WHERE user_id= '$user_data[user_id]' ";

							mysqli_query($con, $query);

							header("Location: login.php");
							die;
						}
						else{
							echo "insert same password!";
						}
					}
					else{
						echo "wrong password!";
					}
				}
			}
			else{
			echo "wrong username!";
				}
		}else
		{
			 echo "Please enter some valid information!";
		}
	}
?>


<!DOCTYPE html>
<html>
<head>
	<title>Change Password</title>
	<script src="../js/listshowing.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
</head>
<body>
	<style type="text/css">

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



	<div id="box">

		<form method="post">
			<div style="font-size: 20px;margin: 10px;color: white;">Change password</div>

			<input id="text" type="text" name="username" placeholder="Enter your username"><br><br>
			<input id="text" type="password" name="password" placeholder="Enter your old password"><br><br>
			<input id="text" type="password" name="password1" placeholder="Enter your new password"><br><br>
			<input id="text" type="password" name="password2" placeholder="Enter your password again"><br><br>

			<input id="button" type="submit" value="Change"><br><br>

			<a href="login.php">Back to Login</a><br><br>
		</form>
	</div>


</body>
</html>
