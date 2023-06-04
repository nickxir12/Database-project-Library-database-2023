<?php


include("connection.php");
include("functions.php");
include("userfunctions.php");

// Check if the user is logged in
$user_data = check_login($con);

$accepted = ($user_data['accepted_user'] == '1');
if (isset($_POST['deleteButton'])) {
    $userId = $_POST['UserId'];
    deleteUser($userId);
}

if (isset($_POST['disableButton'])) {
    $userId = $_POST['UserId'];
    disableUser($userId);
}

if (isset($_POST['enableButton'])) {
    $userId = $_POST['UserId'];
    enableUser($userId);
}

if (isset($_POST['acceptButton'])) {
    $userId = $_POST['UserId'];
    acceptUser($userId);
    exit;
}

// Check if the book ISBN is provided in the URL
if (isset($_GET['userId'])) {
    $UserId = $_GET['userId'];

    // Fetch the book details from the database based on the ISBN
    $sql = "SELECT * FROM user WHERE user_id = '$UserId' ";
    // echo $sql;
    $result = $con->query($sql);

    if ($result->num_rows > 0) {
        // Book found, display the details
        $user = $result->fetch_assoc();
        $userid = $user['user_id'];
        $username = $user['username'];
        $role = $user['user_type'];
        $firstname = $user['first_name'];
        $lastname = $user['last_name'];
        $username = $user['username'];
        $birthdate = $user['birth_date'];
        $school = $user['school_name_FK'];
        $id = $user['user_id'];
        $accepted = $user['accepted_user'];
        $active = $user['active_user'];
        // Add more book attributes as needed

        // Close the database connection

?>

<!DOCTYPE html>
<html>
<head>
    <title>User Details</title>
    <script src="listshowing.js"></script>
    <!-- <link rel="stylesheet" type="text/css" href="styles.css"> -->

    <style>
        /* Your CSS styles here */
        body {
  background-image: url('background-image1.jpg');
  background-repeat: no-repeat;
  background-size: 100%;
  background-attachment: fixed;
  padding-top: 80px;
}


    #resList,#BorrowsList{
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      text-align: center;
      margin: 0 auto;
      max-width: 40%;
    }

    th, td {
      padding: 12px;
      border: 1px solid #ccc;
    }

    th {
      background-color: #f2f2f2;
    }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            position: relative;
            font-family: Arial, sans-serif;
        }
        .book-cover {
            text-align: center;
            margin-bottom: 20px;
        }

        .book-cover img {
            max-width: 400px;
            max-height: 250px;
        }

        .book-form {
            max-width: 300px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .book-form h1.title {
            text-align: center;
            font-size: 24px;
            margin-bottom: 10px;
        }

        .button-container {
            background-color: #c3c4c7;
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        .button-container form {
            margin-bottom: 10px;
        }

        .button {
            margin: 10px;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            background-color: black;
            color: white;
            font-size: 18px;
            cursor: pointer;
        }

        button:hover {
            background-color: #3e8e41;
        }

        .message {
            color: red;
        }

        .messageg {
            color: green;
        }
        .user-info {
          display: flex;
          flex-direction: column;
        }

        .info-attribute {
          display: flex;
          align-items: flex-start;
          margin-bottom: 10px;
        }

        .attribute {
          font-weight: bold;
          margin-right: 10px;
        }

        .info {
          margin:0;
      }
    </style>


</head>
<body>
    <div class="container">

        <div class="book-form" style="margin-top:250px;">
                <?php if ($role == 'student'): ?>
                    <h1 class="title">Student</h1>
                <?php elseif ($role == 'teacher'): ?>
                    <h1 class="title">Teacher</h1>
                <?php else: ?>
                    <h1 class="title">Operator</h1>
                <?php endif; ?>
                <div class="user-info">
                    <div class="info-attribute">
                        <span class="attribute">First Name:</span>
                        <span class="info"><?php echo $firstname; ?></span>
                    </div>
                    <div class="info-attribute">
                        <span class="attribute">Last Name:</span>
                        <span class="info"><?php echo $lastname; ?></span>
                    </div>
                    <div class="info-attribute">
                        <span class="attribute">Username:</span>
                        <span class="info"><?php echo $username; ?></span>
                    </div>
                    <div class="info-attribute">
                        <span class="attribute">Birth Date:</span>
                        <span class="info"><?php echo $birthdate; ?></span>
                    </div>
                    <div class="info-attribute">
                        <span class="attribute">School:</span>
                        <span class="info"><?php echo $school; ?></span>
                    </div>
                    <div class="info-attribute">
                        <span class="attribute">User ID:</span>
                        <span class="info"><?php echo $id; ?></span>
                    </div>
                </div>
            </div>

            <div class="button-container">
                <?php if (!$accepted): ?>
                    <form method="post">
                        <input type="hidden" name="UserId" value="<?php echo $UserId; ?>">
                        <input class="button" type="submit" name="acceptButton" value="Accept User">
                    </form>
                <?php else: ?>
                    <button class="button" disabled>Accept</button>
                    <div class="message">
                        User already accepted.
                    </div>
                <?php endif; ?>
                <form method="post">
                    <input type="hidden" name="UserId" value="<?php echo $UserId; ?>">
                    <input class="button" type="submit" name="deleteButton" value="Delete User">
                </form>
                <?php if ($active): ?>
                    <form method="post">
                        <input type="hidden" name="UserId" value="<?php echo $UserId; ?>">
                        <input class="button" type="submit" name="disableButton" value="Disable User">
                    </form>
                    <div class="messageg">
                        User is activated.
                    </div>
                <?php else: ?>
                    <form method="post">
                        <input type="hidden" name="UserId" value="<?php echo $UserId; ?>">
                        <input class="button" type="submit" name="enableButton" value="Activate User">
                    </form>
                    <div class="message">
                        User is now disabled.
                    </div>
                <?php endif; ?>
            </div>


              <div class="list-container" id="resList">
                  <h2>Reservations</h2>
                <?php
                $sql = "SELECT * from Books b join ReserveBook r on b.ISBN = r.ISBN_FK
                        join User u on r.user_id_FK = u.user_id where u.school_name_FK='$user_data[school_name_FK]'
                         and r.reservation_status='made' and u.user_id='$userid'";
                $result = $con->query($sql);

                if ($result->num_rows > 0) {
                  echo '<table>';
                  echo '<tr>';
                  echo '<th>Title</th>';
                  echo '<th>Date</th>';
                  echo '</tr>';
                  while ($row = $result->fetch_assoc()) {
                    echo '<td class="book-title">' . $row['title'] . '</td>';
                    echo '<td>' . $row['reservation_date'] . '</td>';
                    echo '<td>';
                    // echo '<td><button onclick="acceptReservation(\'' . $row['reservation_id'] . '\')">Accept</button></td>'; // Button for accepting the reservation

                    echo '<form method="post">';
                    echo  '<input type="hidden" name="UserId" value="' .$row['user_id']. '">';
                    echo   '<input type="hidden" name="Isbn" value="' .$row['ISBN_FK']. '">';
                    echo   '<input type="hidden" name="school_name" value="' .$row['school_name_FK']. '">';
                    echo   '</form>';
                    echo '</td>';
                    echo '</tr>';
                  }
                  echo '</table>';
                } else {
                  echo 'No reservations found.';
                }
                ?>
              </div>

              <div class="list-container" id="BorrowsList">
                  <h2>Borrows</h2>
                  <?php
                  $sql = "SELECT * FROM Books b
                            JOIN borrowbook r ON b.ISBN = r.ISBN_FK
                            JOIN User u ON r.user_id_FK = u.user_id
                            WHERE u.school_name_FK = '$user_data[school_name_FK]' AND u.user_id='$userid'
                            ORDER BY r.return_date IS NULL DESC, r.return_date DESC";
                  $result = $con->query($sql);

                  if ($result->num_rows > 0) {
                    echo '<table>';
                    echo '<tr>';
                    echo '<th>Title</th>';
                    echo '<th>Borrow Date</th>';
                    echo '<th>Return Date</th>';
                    echo '</tr>';
                    while ($row = $result->fetch_assoc()) {
                      echo '<td class="book-title">' . $row['title'] . '</td>';
                      echo '<td>' . $row['borrow_date'] . '</td>';
                      echo '<td>';

                      if($row['return_date'] == NULL ){
                         echo 'Not yet returned';
                      }
                      else{
                        echo 'Return Date: ' . $row['return_date'];
                      }

                      echo '</td>';
                      echo '</tr>';
                    }
                    echo '</table>';
                  } else {
                    echo 'No borrows found.';
                  }
                  ?>
              </div>

        </div>
    </div>
</body>
</html>

<?php
} else {
    // Book not found
    echo "Book not found.";
}
} else {
    // ISBN parameter is missing
    echo "Invalid request.";
}

// Close the database connection
$con->close();
?>
