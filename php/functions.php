<?php
session_start();

if (!function_exists('check_login')) {
    function check_login($con)
    {
        if (isset($_SESSION['user_id'])) {
            $id = $_SESSION['user_id'];
            $query = "SELECT * FROM user WHERE user_id = '$id' LIMIT 1";
            $result = mysqli_query($con, $query);

            if ($result && mysqli_num_rows($result) > 0) {
                $user_data = mysqli_fetch_assoc($result);
                return $user_data;
            }
        }

        if (isset($_SESSION['admin_username'])) {
            $id = $_SESSION['admin_username'];
            $query1 = "SELECT * FROM admin WHERE admin_username = '$id' LIMIT 1";
            $result1 = mysqli_query($con, $query1);
            $user_data = mysqli_fetch_assoc($result1);

            if ($result1 && mysqli_num_rows($result1) > 0) {
                return $user_data;
            }
        }

        // Redirect to login
        header("Location: login.php");
        die;
    }
}


function retbook($con,$isbn)
{

		$id = $_SESSION['user_id'];
		$query = "select * from book where ISBN = '$isbn'";

		$result = mysqli_query($con,$query);
		if($result && mysqli_num_rows($result) > 0)
		{

			$book = mysqli_fetch_assoc($result);
			return $user_data;
		}

}

function generateRandomId() {
    $id = "";
    // Generate two random digits for the first part (xx)
    $id .= str_pad(mt_rand(0, 99), 2, "0", STR_PAD_LEFT);

    // Add a '-' separator
    $id .= '-';

    // Generate three random digits for the second part (xxx)
    $id .= str_pad(mt_rand(0, 999), 3, "0", STR_PAD_LEFT);

    // Add a '-' separator
    $id .= '-';

    // Generate four random digits for the third part (xxxx)
    $id .= str_pad(mt_rand(0, 9999), 4, "0", STR_PAD_LEFT);

    return $id;
}
