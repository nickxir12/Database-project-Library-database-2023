<?php

	include("connection.php");
	include("functions.php");
	include("userfunctions.php");


?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin actions</title>
	<script src="../js/listshowing.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
</head>
<body>
    <style>
        .message-box {
            display: none;
            width: 300px;
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


        #text {
            height: 25px;
            border-radius: 5px;
            padding: 4px;
            border: solid thin #aaa;
            width: 100%;
        }

		th, td {
		  padding: 12px;
		  border: 1px solid #ccc;
		}

		th {
		  background-color: #f2f2f2;
		}
		.container {
		  margin-bottom: 40px;
		}
		.custom-button {
			padding: 10px;
			width: 200px;
			.margin: auto;
			color: red;
			background-color: lightblue;
			border: none;
			margin-bottom: 10px; /* Add margin bottom to create space */
		}

        #box {
            background-color: black;
            margin: auto;
            width: 405px;
            padding: 20px;
        }
		#userList,#schoolList{
            display: none;
        }

            #userList,#schoolList{
              background-color: #fff;
              padding: 20px;
              border-radius: 8px;
              box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
              text-align: center;
              margin: 0 auto;
              max-width: 40%;
            }
			.list-container {
		        margin: 0 auto;
		        max-width: 100%;
		        text-align: center;
		    }
			.list-container table {
		        width: 100%;
		    }
			.table{
				margin:auto;
			}

    </style>

    <div id="box">
        <form method="post">
            <div style="font-size: 20px; margin: 10px; color: white;">Admin actions</div>
            <input class="custom-button" type="submit" name="backup" value="Backup">
            <input class="custom-button" type="submit" name="restore" value="Restore">

        </form>
		<button class="custom-button" onclick="showList('userList')">Show all School operators</button>
		<button class="custom-button" onclick="showList('schoolList')">Show all Schools</button>
        <button class="custom-button" onclick="addschool()">Add new school</button>
		<button class="custom-button" onclick="redirecttoQueries()">Show Administrator Queries</button>
        <button class="custom-button" style="margin-left:100px;" onclick="login()">Log out</button>

    </div>

	<script>
        function showMessage() {
            var messageBox = document.getElementById('messageBox');
            messageBox.style.display = 'block';
            setTimeout(function() {
                messageBox.style.display = 'none';
            }, 5000);
        }
    </script>


	<div class="container">
	    <div class="list-container" id="schoolList">
	        <h2>Schools info</h2>
	        <?php
	        $sql = "SELECT * FROM school";
	        $result = $con->query($sql);

	        if ($result->num_rows > 0) {
	            echo '<table>';
	            echo '<tr>';
	            echo '<th>School name</th>';
	            echo '<th>City</th>';
	            echo '<th>Address</th>';
	            echo '<th>School email</th>';
	            echo '<th>School phone</th>';
	            echo '<th>School principal</th>';
	            echo '</tr>';
	            while ($row = $result->fetch_assoc()) {
	                echo '<tr>';
	                echo '<td style="background-color: white;">' . $row['school_name'] . '</td>';
	                echo '<td style="background-color: white;">' . $row['city'] . '</td>';
	                echo '<td style="background-color: white;">' . $row['school_address'] . '</td>';
	                echo '<td style="background-color: white;">' . $row['school_email'] . '</td>';
	                echo '<td style="background-color: white;">' . $row['school_phone_number'] . '</td>';
	                echo '<td style="background-color: white;">' . $row['school_principal'] . '</td>';
	                echo '</tr>';
	            }
	            echo '</table>';
	        } else {
	            echo 'No schools found.';
	        }
	        ?>
	    </div>
	</div>

	<div class="container">
	    <div class="list-container" id="userList">
	        <h2>School Operators</h2>
	        <?php
	        $sql = "SELECT * FROM user WHERE user_type='school_lib_operator' ORDER BY accepted_user ASC";
	        $result = $con->query($sql);

	        if ($result->num_rows > 0) {
	            echo '<table>';
	            echo '<tr>';
	            echo '<th>First name</th>';
	            echo '<th>Last name</th>';
	            echo '<th>Username</th>';
	            echo '<th>School Name</th>';
	            echo '<th>Status</th>';
	            echo '<th>Active</th>';
	            echo '</tr>';
	            while ($row = $result->fetch_assoc()) {
	                $accepted = $row['accepted_user'];
	                $active = $row['active_user'];
	                echo '<tr onclick="redirectToUserPage(\'' . $row['user_id'] . '\')">';
	                echo '<td style="background-color: white;">' . $row['first_name'] . '</td>';
	                echo '<td style="background-color: white;">' . $row['last_name'] . '</td>';
	                echo '<td style="background-color: white;">' . $row['username'] . '</td>';
	                echo '<td style="background-color: white;">' . $row['school_name_FK'] . '</td>';
	                echo '<td class="' . ($accepted == 1 ? 'green' : 'red') . '" style="background-color: white;">';
	                echo ($accepted == 1 ? 'Accepted User' : 'Not accepted yet');
	                echo '<td class="' . ($active == 1 ? 'green' : 'red') . '" style="background-color: white;">';
	                echo ($active == 1 ? 'Activated' : 'Disabled');
	                echo '</td>';
	                echo '</tr>';
	            }
	            echo '</table>';
	        } else {
	            echo 'No users found.';
	        }
	        ?>
	    </div>
	</div>


</body>
</html>


<?php
// Check if the button is clicked
if (isset($_POST['backup'])) {
	// Database connection details
	$host = 'localhost';
	$username = 'root';
	$password = '';
	$database = 'project';

	// Backup file name and path
	$backupFile = 'C:\xampp\project_backup.sql';

	// Command to execute the backup
	$command = 'C:\xampp\mysql\bin\mysqldump -h '.$host.' -u '.$username.' --password="'.$password.'" --databases '.$database.' > '.$backupFile;

	// Execute the backup command using exec()
	exec($command, $output, $result);

	// Check if the backup operation was successful
	if ($result === 0) {
		echo '<div id="messageBox" class="message-box">Backup was successful!</div>';
		echo '<script>showMessage();</script>';
	} else {
		echo '<div id="messageBox" class="message-box">Backup failed.</div>';
		echo '<script>showMessage();</script>';
	}
}

if (isset($_POST['restore'])) {
	// Database connection details
	$host = 'localhost';
	$username = 'root';
	$password = '';
	$database = 'project';

	// Backup file name and path
	$backupFile = 'C:\xampp\project_backup.sql';

	// Command to execute the backup
	$command = 'C:\xampp\mysql\bin\mysql -h '.$host.' -u '.$username.' --password="'.$password.'" < '.$backupFile;

	// Execute the backup command using exec()
	exec($command, $output, $result);

	// Check if the backup operation was successful
	if ($result === 0) {
		echo '<div id="messageBox" class="message-box">Database restored succesfully!</div>';
		echo '<script>showMessage();</script>';
	} else {
		echo '<div id="messageBox" class="message-box">Database restoration failed.</div>';
		echo '<script>showMessage();</script>';
	}
}
?>
