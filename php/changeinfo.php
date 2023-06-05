<?php
include("connection.php");
include("functions.php");
$user_data = check_login($con);




if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    if (isset($_POST['update'])) {
    $newFirstName = $_POST['first_name'];
    $newLastName = $_POST['last_name'];
    $newUsername = $_POST['username'];
    $newBirthdate = $_POST['birth_date'];

    $query = "UPDATE user SET first_name = '$newFirstName', last_name = '$newLastName', username = '$newUsername', birth_date = '$newBirthdate' WHERE user_id = '$user_data[user_id]'";

    // Execute the query
    $result = mysqli_query($con, $query);

    if ($result) {
        if($user_data['user_type']=='school_lib_operator'){
            header("Location: school_lib_operator.php");
            exit;

        }
        else{
            header("Location: users.php");
            exit;
        }

    } else {
        echo 'Error updating user information.';
    }

}
}
?>

<!-- HTML form -->
<!DOCTYPE html>
<html>
<head>
    <title>Library User Home Page</title>
    <script src="../js/listshowing.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
    <style>
        .user-form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f7f7f7;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button[type="submit"] {
            padding: 10px 20px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" class="user-form">
        <div class="form-group">
            <label for="first_name">First Name:</label>
            <input type="text" id="first_name" name="first_name" value="<?php echo $user_data['first_name']; ?>" required>
        </div>

        <div class="form-group">
            <label for="last_name">Last Name:</label>
            <input type="text" id="last_name" name="last_name" value="<?php echo $user_data['last_name']; ?>" required>
        </div>

        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="<?php echo $user_data['username']; ?>" required>
        </div>

        <div class="form-group">
            <label for="birth_date">Birthdate:</label>
            <input type="date" id="birth_date" name="birth_date" value="<?php echo $user_data['birth_date']; ?>" required>
        </div>

        <!-- Add more input fields for other data -->

        <div class="form-group">
            <button type="submit" name="update" >Update</button>
        </div>
    </form>
</body>
</html>
