<?php
// session_start();

include("connection.php");
include("functions.php");


?>

<!DOCTYPE html>
<html>
<head>
    <title>Signup</title>
    <script src="../js/listshowing.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
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
        background-image: url('background-image1.jpg');
        background-repeat: no-repeat;
        background-size: 100%;
        padding-top: 80px;
    }

    #text {
        height: 25px;
        border-radius: 5px;
        padding: 4px;
        border: solid thin #aaa;
        width: 100%;
    }

    #button {
        padding: 10px;
        width: 100px;
        color: white;
        background-color: lightblue;
        border: none;
        margin: 0 auto; /* Add margin auto to center the button horizontally */
        display: block; /* Change the display property to block */
    }

    #box {
        background-color: black;
        margin: auto;
        width: 300px;
        padding: 20px;
    }

    #link {
        text-align: center; /* Add text-align center to center the link */
    }
    .dropdown {
         position: relative;
         display: inline-block;
     }

        .dropdown select {
            padding: 8px 16px;
            font-size: 14px;
            border: none;
            border-radius: 4px;
            background-color: #f2f2f2;
            color: #333;
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            cursor: pointer;
        }

        .dropdown select:focus {
            outline: none;
        }

        .dropdown::after {
            content: '\25BC';
            position: absolute;
            top: 50%;
            right: 12px;
            transform: translateY(-50%);
            font-size: 12px;
            color: #999;
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
            <div style="font-size: 20px; margin: 10px; color: white;">Signup</div>
            <input id="text" type="text" name="FirstName" placeholder="Enter your first name"><br><br>
            <input id="text" type="text" name="LastName" placeholder="Enter your last name"><br><br>
            <input id="text" type="text" name="username" placeholder="Enter your username"><br><br>
            <input id="text" type="password" name="password" placeholder="Enter your password"><br><br>

            <div class="form-group">
                <label for="Role" style="color: white; margin-left: 120px;">Role:</label>
                <div class="row">
                    <div class="dropdown" style="margin-left: 100px;">
                        <select class="dropdown" id="Role" name="Role">
                            <option value="Student">Student</option>
                            <option value="Teacher">Teacher</option>
                            <option value="school_lib_operator">Operator</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="School" style="color: white; margin-left: 90px;">School Name:</label>
                <div class="row">
                    <div class="dropdown">
                        <select class="dropdown" id="School" name="School">
                            <?php
                            // Perform database query to fetch options for all schools
                            $query3 = "SELECT school_name FROM school";
                            $result3 = $con->query($query3);

                            if ($result3->num_rows > 0) {
                                while ($row = $result3->fetch_assoc()) {
                                    $schoolId = $row['school_name'];
                                    $schoolName = $row['school_name'];
                                    echo '<option value="' . $schoolId . '">' . $schoolName . '</option>';
                                }
                            } else {
                                echo '<option value="">No schools found</option>';
                            }
                            ?>
                        </select>
                    </div>
                </div>
            </div>




            <label for="BirthDate"  style="color:white;  margin-left: 90px;">Select a date:</label>
            <input type="date" id="BirthDate"  style="margin-left: 85px;" name="BirthDate">

            <br><br>

            <input id="button" type="submit" value="Signup"><br><br>

            <div id="link">
                    <a href="login.php">Click to Login page</a>
            </div>


        </form>
    </div>

</body>
</html>

<?php
$message = isset($_GET['message']) ? $_GET['message'] : '';
$message = isset($_GET['message']) ? $_GET['message'] : '';

// Function to display the message box
function showMessage($message) {
    echo '<div id="messageBox" class="message-box">' . $message . '</div>';
    echo '<script>showMessage();</script>';
}

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    // Something was posted
    $firstname = $_POST['FirstName'];
    $lastname = $_POST['LastName'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $School = $_POST['School'];
    $Role = $_POST['Role'];
    $BirthDate = $_POST['BirthDate'];

    $today = new DateTime();
    $diff = $today->diff(new DateTime($BirthDate));
    $age = $diff->y;


    if (!empty($firstname) && !empty($lastname) && !empty($username) && !empty($password) && !empty($School) && !empty($Role) && !empty($BirthDate)) {
        $query1 = "SELECT COUNT(username) FROM User WHERE school_name_FK = '$School' AND username = '$username'";
        $result1 = mysqli_query($con, $query1);

        $count = mysqli_fetch_row($result1)[0];

        if ($count != 0) {
            $message = "Username taken!";
            showMessage($message);
        } else {

            if (($age >= 12 && $age <= 18 && $Role=='Student') || ($age >= 22 && $Role!='Student')) {

                $randomId = generateRandomId();
                $query = "INSERT INTO User (first_name,last_name,user_id, school_name_FK, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date,active_user) VALUES ('$firstname','$lastname','$randomId','$School', '$username', '$password', '$Role', 'false', 0, 0, 0, '$BirthDate','True')";
                $result = mysqli_query($con, $query);

            } else {
            $message = "Age must be between 12 and 18.";
            showMessage($message);
            }


        }
    } else {
        $message = "Enter valid information!";
        showMessage($message);
    }

}




    ?>
