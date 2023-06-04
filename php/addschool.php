<?php
// session_start();

include("connection.php");
include("functions.php");
include("userfunctions.php");


if ($_SERVER['REQUEST_METHOD'] == "POST") {
    // Something was posted


    $name = $_POST['name'];
    $address = $_POST['address'];
    $city = $_POST['city'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $principal = $_POST['principal'];

    if (!empty($name) && !empty($address) && !empty($city) && !empty($phone) && is_numeric($phone) && !empty($email) && !empty($principal)) {


        $query = "INSERT INTO school (school_name,school_address,city,school_phone_number,school_email,school_principal)
         VALUES ('$name','$address','$city','$phone','$email','$principal')";
        $result = mysqli_query($con, $query);
        if ($result) {
          echo 'School inserted successfully.';
        } else {
          echo 'Error inserting School.';
        }


    }else{

        echo "Please enter valid information!";
    }

    header("Location: administrator.php");
    exit;
}
?>





<!DOCTYPE html>
<html>
<head>
    <title>New School</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

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

</style>

<div id="box">
<form method="post">
    <div style="font-size: 20px; margin: 10px; color: white;">New School Addition</div>
    <input id="text" type="text" name="name" placeholder="Enter the School name"><br><br>
    <input id="text" type="text" name="address" placeholder="Enter the School address"><br><br>
    <input id="text" type="text" name="city" placeholder="Enter city"><br><br>
    <input id="text" type="text" name="phone" placeholder="Enter phone number"><br><br>
    <input id="text" type="text" name="email" placeholder="Enter email address"><br><br>
    <input id="text" type="text" name="principal" placeholder="Enter school principal"><br><br>


    <br><br>
    <!-- Move the "Add book" button here -->
    <input id="button" type="submit" value="Add School"><br><br>

    <div id="link">
            <a href="administrator.php">Back to Home page</a>
    </div>
</form>
</div>
</body>
</html>
