<!-- Code for operator to accept user/called by user_specific.php -->

<?php

include("connection.php");

$user_data=check_login($con);


// Define the function to delete a user
function deleteUser($UserId) {
    global $con;

    $query1 = "Select * from user WHERE user_id = '$UserId'";
    $result1 = mysqli_query($con, $query1);

    if (!$result1) {
        echo "Error finding user: " . mysqli_error($con);
        }
    $row = $result1->fetch_assoc();
    $role=$row['user_type'];

    // Perform the database query to delete the user
    $query = "DELETE FROM user WHERE user_id = '$UserId'";
    $result = mysqli_query($con, $query);


    // Check if the query was successful
    if ($result) {
        echo "User deleted successfully.";
        if($role=='school_lib_operator'){
            header("Location: administrator.php");
            exit;
        }else{
            header("Location: school_lib_operator.php");
            exit;
        }

    } else {
        echo "Error deleting user: " . mysqli_error($con);
    }
}

function acceptUser($UserId) {
    global $con;

    $query1 = "Select * from user WHERE user_id = '$UserId'";
    $result1 = mysqli_query($con, $query1);

    if (!$result1) {
        echo "Error finding user: " . mysqli_error($con);
        }
    $row = $result1->fetch_assoc();
    $role=$row['user_type'];

    // Perform the database query to delete the user
    $query = "UPDATE user SET accepted_user = 1 WHERE user_id = '$UserId'";
    $result = mysqli_query($con, $query);

    // Check if the query was successful
    if ($result) {
        echo "User accepted successfully.";
        if($role=='school_lib_operator'){
            header("Location: administrator.php");
            exit;
        }else{
            header("Location: school_lib_operator.php");
            exit;
        }
    } else {
        echo "Error deleting user: " . mysqli_error($con);
    }

}

function disableUser($UserId) {
    global $con;

    $query1 = "Select * from user WHERE user_id = '$UserId'";
    $result1 = mysqli_query($con, $query1);

    if (!$result1) {
        echo "Error finding user: " . mysqli_error($con);
        }
    $row = $result1->fetch_assoc();
    $role=$row['user_type'];


    // Perform the database query to delete the user
    $query = "UPDATE user SET active_user = 0 WHERE user_id = '$UserId'";
    $result = mysqli_query($con, $query);

    // Check if the query was successful
    if ($result) {
        echo "User disabled successfully.";
        if($role=='school_lib_operator'){
            header("Location: administrator.php");
            exit;
        }else{
            header("Location: school_lib_operator.php");
            exit;
        }
    } else {
        echo "Error disabling user: " . mysqli_error($con);
    }

}

function enableUser($UserId) {
    global $con;

    $query1 = "Select * from user WHERE user_id = '$UserId'";
    $result1 = mysqli_query($con, $query1);

    if (!$result1) {
        echo "Error finding user: " . mysqli_error($con);
        }
    $row = $result1->fetch_assoc();
    $role=$row['user_type'];


    // Perform the database query to delete the user
    $query = "UPDATE user SET active_user = 1 WHERE user_id = '$UserId'";
    $result = mysqli_query($con, $query);

    // Check if the query was successful
    if ($result) {
        echo "User disabled successfully.";
        if($role=='school_lib_operator'){
            header("Location: administrator.php");
            exit;
        }else{
            header("Location: school_lib_operator.php");
            exit;
        }
    } else {
        echo "Error disabling user: " . mysqli_error($con);
    }

}

function acceptReservation($UserId, $Isbn, $school_name)
{
    global $con;

    // Perform the database query to delete the user
    $query = "UPDATE reservebook SET reservation_status = 'accepted' WHERE user_id_FK = '$UserId' and ISBN_FK='$Isbn'";
    $result = mysqli_query($con, $query);

    // Check if the query was successful
    if ($result) {
        echo "Reservation accepted successfully.";
        $sql1 = "SELECT available_copies FROM hasbook WHERE ISBN_FK='$Isbn' AND school_name_FK='$school_name'";
        $result1 = $con->query($sql1);
        $row1 = $result1->fetch_assoc();
        $copies = $row1['available_copies'];
        // echo "NUMBER OF COPIES " . $copies;

        if ($copies == 0) {
          $query1 = "UPDATE reservebook SET reservation_status = 'waiting' WHERE user_id_FK IN (SELECT user_id FROM User u JOIN ReserveBook b ON u.user_id = b.user_id_FK WHERE u.school_name_FK = '$school_name' AND b.reservation_status = 'made' AND b.ISBN_FK = '$Isbn')";
          // $query1 = "UPDATE reservebook SET reservation_status = 'waiting' WHERE reservation_status = 'made' AND ISBN_FK = '$Isbn'";
          $result1 = mysqli_query($con, $query1);
          if ($result1) {
              echo "Reservation status updated to 'waiting' for users.";
          } else {
              echo "Error updating reservation status: " . mysqli_error($con);
          }
        }
        header("Location: school_lib_operator.php");
        exit;
    } else {
        echo "Error accepting reservation: " . mysqli_error($con);
    }
}


function cancelReservation($UserId,$Isbn) {
    global $con;

    // Perform the database query to delete the user
    $query = "UPDATE reservebook SET reservation_status = 'cancelled' WHERE user_id_FK = '$UserId' AND ISBN_FK = '$Isbn' AND (reservation_status = 'made' OR reservation_status = 'waiting')";

    $result = mysqli_query($con, $query);

    // Check if the query was successful
    if ($result) {
        echo "Reservation cancelled successfully.";
        header("Location: users.php");
        exit;
    } else {
        echo "Error canceling reservation: " . mysqli_error($con);
    }

}

function acceptReview($userId,$Isbn) {
    global $con;

    // Perform the database query to delete the user
    $query = "UPDATE ratebook SET accepted_critique = '1' WHERE user_id_FK = '$userId' and ISBN_FK='$Isbn'";
    $result = mysqli_query($con, $query);

    // Check if the query was successful
    if ($result) {
        echo "Review accepted successfully.";
        header("Location: school_lib_operator.php");
        exit;
    } else {
        echo "Error accepting review: " . mysqli_error($con);
    }

}


function deleteReview($userId,$Isbn) {
    global $con;

    // Perform the database query to delete the user
    $query = "DELETE from ratebook WHERE user_id_FK = '$userId' and ISBN_FK='$Isbn'";
    $result = mysqli_query($con, $query);

    // Check if the query was successful
    if ($result) {
        echo "Deleted successfully.";

    } else {
        echo "Error deleting: " . mysqli_error($con);
    }
}


function ReturnBook($UserId,$Isbn) {
    global $con;

    // Perform the database query to delete the user


        $query1 = "UPDATE borrowbook SET return_date = NOW() WHERE user_id_FK = '$UserId' and ISBN_FK='$Isbn'";
        $result1 = mysqli_query($con, $query1);

        // Check if the query was successful
        if ($result1) {
            echo "Reservation accepted successfully.";
            header("Location: school_lib_operator.php");
            exit;
        } else {
            echo "Error accepting reservation: " . mysqli_error($con);
        }

}

function ReserveBook($encodedUserId,$encodedIsbn,$copies) {
    global $con;

    // Perform the database update
    if($copies>0){
        $sql = "INSERT INTO reservebook (user_id_FK, ISBN_FK,reservation_date,reservation_status) VALUES ('$encodedUserId', '$encodedIsbn',NOW(),'made')";
        if ($con->query($sql) === TRUE) {
            // Update successful
            echo "successfully.";

                if($user_data['user_type']=='school_lib_operator'){
                    header("Location: school_lib_operator.php");
                    exit;
                }else{
                    header("Location: users.php");
                    exit;
                }

            exit;
        } else {
            // Update failed
            $errorMessage = "Error creating reservation: " . $con->error;
            echo '<div style="color: red;">' . $errorMessage . '</div>';
        }
    }
    else{
        $sql = "INSERT INTO reservebook (user_id_FK, ISBN_FK,reservation_date,reservation_status) VALUES ('$encodedUserId', '$encodedIsbn',NOW(),'waiting')";
        if ($con->query($sql) === TRUE) {
            // Update successful
            echo "successfully.";
            if($user_data['user_type']=='school_lib_operator'){
                header("Location: school_lib_operator.php");
                exit;
            }else{
                header("Location: users.php");
                exit;
            }

            exit;
        } else {
            // Update failed
            $errorMessage = "Error creating reservation: " . $con->error;
            echo '<div style="color: red;">' . $errorMessage . '</div>';
        }

    }

}


function borrowBook($userId, $bookISBN) {
    global $con;

    // Perform the database query to delete the user
    $query = "INSERT INTO borrowbook (user_id_FK, ISBN_FK,borrow_date,due_date,late) VALUES ('$userId', '$bookISBN',NOW(),DATE_ADD(NOW(), INTERVAL 7 DAY),'0')";
    $result = mysqli_query($con, $query);

    // Check if the query was successful
    if ($result) {
        echo "Reservation accepted successfully.";
        header("Location: school_lib_operator.php");
        exit;
    } else {
        echo "Error accepting reservation: " . mysqli_error($con);
    }


}


function ReviewBook($encodedUserId,$rating,$encodedIsbn,$critique) {
    global $con;

    // Perform the database query to delete the user

    $query= "SELECT user_type FROM user WHERE user_id = '$encodedUserId'";
    $result = mysqli_query($con, $query);

    if ($result && mysqli_num_rows($result) > 0) {
      $row = mysqli_fetch_assoc($result);
      $role=$row['user_type'];

    if($role=='teacher' || $role='school_lib_operator'){
      $query1 = "INSERT INTO ratebook (user_id_FK, ISBN_FK,Likert_rating,critique,accepted_critique) VALUES ('$encodedUserId','$encodedIsbn','$rating','$critique','1')";
      $result1 = mysqli_query($con, $query1);

      if (!$result1) {
        echo 'Error inserting review.';
      }

    }else {
        $query1 = "INSERT INTO ratebook (user_id_FK, ISBN_FK,Likert_rating,critique,accepted_critique) VALUES ('$encodedUserId','$encodedIsbn','$rating','$critique','0')";
        $result1 = mysqli_query($con, $query1);

        if (!$result1) {
          echo 'Error inserting review: ' . mysqli_error($con);
        }
    }

}else {
  echo 'Error finding role.';
}

}


function getAuthorsForBook($isbn) {
    global $con;

    // Perform a database query to retrieve the authors for the given ISBN
    // Replace this with your own code to fetch the authors from the "hasauthor" and "author" tables
    $query = "SELECT author.author
              FROM author
              INNER JOIN hasauthor ON hasauthor.author_id_FK = author.author_id
              WHERE hasauthor.ISBN_FK = '$isbn'";

    $result = mysqli_query($con, $query);

    $authors = array();

    while ($row = mysqli_fetch_assoc($result)) {
        $authors[] = $row['author'];
    }

    return implode(', ', $authors);
}


function getCategoriesForBook($isbn) {
    global $con;

    // Perform a database query to retrieve the authors for the given ISBN
    // Replace this with your own code to fetch the authors from the "hasauthor" and "author" tables
    $query = "SELECT category
              FROM category
              WHERE category.ISBN_FK = '$isbn'";
    $result = mysqli_query($con, $query);

    $category = array();

    while ($row = mysqli_fetch_assoc($result)) {
        $category[] = $row['category'];
    }

    return implode(', ', $category);
}



?>
