<!-- <?php



	include("connection.php");
	include("functions.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$username = $_POST['username'];
		$password = $_POST['password'];


		if(!empty($username) && !empty($password) && !is_numeric($username))
		{

			//read from database
			$query1 = "select * from admin where admin_username = '$username' limit 1";
			$result1 = mysqli_query($con, $query1);

			if($result1)
			{
				if($result1 && mysqli_num_rows($result1) > 0)
				{
					$user_data = mysqli_fetch_assoc($result1);

					if($user_data['admin_password'] === $password)
					{
						$_SESSION['admin_username'] = $user_data['admin_username'];
						header("Location: administrator.php");
						exit();
					}
					else{
						echo "wrong username or password!";
					}
				}
			}
			else{
			echo "wrong username or password!";
				}
		}else
		{
			echo "wrong username or password!";
		}
	}

?> -->


<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<script src="../js/listshowing.js"></script>
	<link rel="stylesheet" type="text/css" href="../css/styles.css">
</head>
<body>
	<style type="text/css">


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

	<div id="box">

	    <form method="post" action="admin_login.php">
	        <div style="font-size: 20px;margin: 10px;color: white;">Administrator Login</div>

	        <input id="text" type="text" name="username" placeholder="Enter your username"><br><br>
	        <input id="text" type="password" name="password" placeholder="Enter your password"><br><br>
	        <input id="button" type="submit" name="form2_submit" value="AdmLogin"><br><br>

	        <a href="login.php">Back to user Login</a><br><br>
	    </form>

	</div>


</body>
</html>
