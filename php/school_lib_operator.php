<?php
// session_start();

include("connection.php");
include("functions.php");
include("userfunctions.php");
$user_data = check_login($con);

if (isset($_POST['acceptReservationButton'])) {
    $userId = $_POST['UserId'];
    $Isbn = $_POST['Isbn'];
    $school_name = $_POST['school_name'];
    acceptReservation($userId,$Isbn,$school_name);
}

if (isset($_POST['acceptreviewButton'])) {
    $userId = $_POST['UserId'];
    $Isbn = $_POST['Isbn'];
    acceptReview($userId,$Isbn);
}


if (isset($_POST['returnButton'])) {
    $userId = $_POST['UserId'];
    $Isbn = $_POST['Isbn'];
    ReturnBook($userId,$Isbn);
}

?>

<!DOCTYPE html>
<html>
<head>
    <title>Library School Operator Home Page</title>
    <script src="../js/listshowing.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">

    <style>
        #userList,#BorrowsList,#resList,#reviewList,#LateBorrowsList,#aresList {
            display: none;
        }

            #resList, #userList,#BorrowsList,#reviewList,#LateBorrowsList,#aresList{
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
              margin-bottom: 20px;
            }

            .window-container {
                position: fixed;
                top: 20px;
                right: 20px;
                width: 200px;
                background-color: #fff;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
              }

              .window-title {
                 text-align: center;
                 margin-top: 0;
              }

              .window-content {
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    .button-container {
    margin-top: 10px;
    display: flex;
    justify-content: center;
    }

    .window-button {
      padding: 8px 16px;
      border: none;
      border-radius: 5px;
      background-color: #4caf50;
      color: white;
      font-size: 14px;
      cursor: pointer;
    }

    .window-button:hover {
      background-color: #45a049;
    }


    </style>

</head>
<body>
    <!-- <div class="user-box"> -->
        <!-- Add your user data here -->
        <!-- <h3>User Information</h3>
        <p>Name: John Doe</p>
        <p>Email: johndoe@example.com</p>
        <p>Role: Schhol Operator</p>
    </div> -->
    <div class="window-container">
      <div class="window">
        <h3 class="window-title">Welcome, <?php echo $user_data['first_name']; ?></h3>
        <div class="window-content">
          <p><strong>User Information:</strong></p>
          <ul>
            <li><strong>First Name:</strong> <?php echo $user_data['first_name']; ?></li>
            <li><strong>Last Name:</strong> <?php echo $user_data['last_name']; ?></li>
            <li><strong>User Type:</strong> <?php echo $user_data['user_type']; ?></li>
            <li><strong>Username:</strong> <?php echo $user_data['username']; ?></li>
            <li><strong>School:</strong> <?php echo $user_data['school_name_FK']; ?></li>
            <li><strong>Borrowed Books:</strong> <?php echo $user_data['number_of_borrowed_books']; ?></li>
            <li><strong>Reserved Books:</strong> <?php echo $user_data['number_of_reserved_books']; ?></li>
            <li><strong>Activated:</strong> <span class="<?php echo ($user_data['active_user'] == 1 ? 'green' : 'red'); ?>"><?php echo ($user_data['active_user'] == 1 ? 'Activated' : 'Disabled'); ?></span></li>
            <li><strong>Accepted:</strong> <span class="<?php echo ($user_data['accepted_user'] == 1 ? 'green' : 'red'); ?>"><?php echo ($user_data['accepted_user'] == 1 ? 'Accepted' : 'Not accepted yet'); ?></span></li>
          </ul>
          <form action="changeinfo.php" method="post">
            <button class="window-button" type="submit">Edit</button>
          </form>
        </div>

      </div>
    </div>

    <div class="buttonContainer" style="margin-right:50px; max-width:85%;">
        <button class="button" onclick="showList('userList')">Show all School users</button>
        <button class="button" onclick="showList('resList')">Show curent book reservations</button>
        <button class="button" onclick="showList('aresList')">Show all book reservations</button>
        <button class="button" onclick="showList('BorrowsList')">Show book borrows</button>
        <button class="button" onclick="showList('LateBorrowsList')">Show late book borrows</button>
        <button class="button" onclick="showList('reviewList')">Show reviews</button>
        <button class="button" onclick="redirectTosearchuser()">Search user by Name</button>
        <button class="button" onclick="redirectToinstantborrow()">Instant Borrow</button>
        <button class="button" onclick="addbook()">Add new Book</button>
        <button class="button" onclick="redirectTosearchbook()">Search for book(Q 3.2.1)</button>
        <button class="button" onclick="redirectTo322()">Late users(Q 3.2.2)</button>
        <button class="button" onclick="redirectTo323()">Ratings Average(Q 3.2.3)</button>
        <button class="button" onclick="changePassword()">Change Password</button>
        <button class="button" onclick="login()">Log out</button>

    </div>


          </div>
          <div class="container">
              <div class="list-container" id="userList">
                  <h2>Users</h2>

                <?php
                $sql = "SELECT * FROM user WHERE school_name_FK='$user_data[school_name_FK]' and user_type!='school_lib_operator' ORDER BY accepted_user ASC";
                $result = $con->query($sql);

                if ($result->num_rows > 0) {
                  echo '<table>';
                  echo '<tr>';
                  echo '<th>First name</th>';
                  echo '<th>Last name</th>';
                  echo '<th>Username</th>';
                  echo '<th>Status</th>';
                  echo '<th>Active</th>';
                  echo '</tr>';
                  while ($row = $result->fetch_assoc()) {
                    $accepted = $row['accepted_user'];
                    $active = $row['active_user'];
                    echo '<tr onclick="redirectToUserPage(\'' . $row['user_id'] . '\')">';
                    echo '<td>' . $row['first_name'] . '</td>';
                    echo '<td>' . $row['last_name'] . '</td>';
                    echo '<td>' . $row['username'] . '</td>';
                    echo '<td class="' . ($accepted == 1 ? 'green' : 'red') . '">';
                    echo ($accepted == 1 ? 'Accepted User' : 'Not accepted yet');
                    echo '<td class="' . ($active == 1 ? 'green' : 'red') . '">';
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

            <div class="container">
              <div class="list-container" id="resList">
                  <h2>Reservations</h2>
                <?php
                $sql = "SELECT * from Books b join ReserveBook r on b.ISBN = r.ISBN_FK
                        join User u on r.user_id_FK = u.user_id where u.school_name_FK='$user_data[school_name_FK]' and r.reservation_status='made'
                        ORDER BY r.reservation_date";
                $result = $con->query($sql);

                if ($result->num_rows > 0) {
                  echo '<table>';
                  echo '<tr>';
                  echo '<th>Title</th>';
                  echo '<th>First name</th>';
                  echo '<th>Last name</th>';
                  echo '<th>Date</th>';
                  echo '<th>Accept</th>'; // New column for the button
                  echo '</tr>';
                  while ($row = $result->fetch_assoc()) {
                      $sql3 = "SELECT COUNT(*) AS late_count
                               FROM borrowbook
                               WHERE user_id_FK = '" . $row['user_id'] . "' AND late = '" . 1 . "' AND return_date IS NULL";
                      $result3 = $con->query($sql3);
                      $row3 = $result3->fetch_assoc();
                      $late=$row3['late_count'];

                      $sql4 = "SELECT COUNT(*) AS same_count
                               FROM borrowbook
                               WHERE user_id_FK = '" . $row['user_id'] . "' AND ISBN_FK = '" . $row['ISBN'] . "' AND borrow_date + INTERVAL 7 DAY > NOW()";

                      $result4 = $con->query($sql4);
                      $row4 = $result4->fetch_assoc();
                      $same_b=$row4['same_count'];

                      $over2=$row['number_of_borrowed_books'];

                    echo '<td class="book-title">' . $row['title'] . '</td>';
                    echo '<td>' . $row['first_name'] . '</td>';
                    echo '<td>' . $row['last_name'] . '</td>';
                    echo '<td>' . $row['reservation_date'] . '</td>';
                    echo '<td>';
                    // echo '<td><button onclick="acceptReservation(\'' . $row['reservation_id'] . '\')">Accept</button></td>'; // Button for accepting the reservation
                    if ($late == 0 && $same_b == 0 && (($row['user_type'] == 'student' && $row['number_of_borrowed_books'] < 2) || ($row['number_of_borrowed_books'] < 1 && $row['user_type'] == 'teacher') || ($row['user_type'] == 'school_lib_operator' && $row['number_of_borrowed_books'] < 1))) {
                        echo '<form method="post">';
                        echo '<input type="hidden" name="UserId" value="' . $row['user_id'] . '">';
                        echo '<input type="hidden" name="Isbn" value="' . $row['ISBN_FK'] . '">';
                        echo '<input type="hidden" name="school_name" value="' . $row['school_name_FK'] . '">';
                        echo '<input class="button" type="submit" name="acceptReservationButton" value="Accept">';
                        echo '</form>';
                    } else {
                        echo 'Reservation cannot be accepted now';
                    }

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
              </div>

              <div class="container">
                <div class="list-container" id="aresList">
                    <h2>Reservations</h2>
                  <?php
                  $sql = "SELECT * FROM Books b
                          JOIN ReserveBook r ON b.ISBN = r.ISBN_FK
                          JOIN User u ON r.user_id_FK = u.user_id
                          WHERE u.school_name_FK = '$user_data[school_name_FK]'
                          ORDER BY r.reservation_date";

                  $result = $con->query($sql);

                  if ($result->num_rows > 0) {
                    echo '<table>';
                    echo '<tr>';
                    echo '<th>Title</th>';
                    echo '<th>First name</th>';
                    echo '<th>Last name</th>';
                    echo '<th>Date</th>';
                    echo '</tr>';
                    while ($row = $result->fetch_assoc()) {
                      echo '<td class="book-title">' . $row['title'] . '</td>';
                      echo '<td>' . $row['first_name'] . '</td>';
                      echo '<td>' . $row['last_name'] . '</td>';
                      echo '<td>' . $row['reservation_date'] . '</td>';
                      echo   '</form>';
                      echo '</tr>';
                    }
                    echo '</table>';
                  } else {
                    echo 'No reservations found.';
                  }
                  ?>
                </div>
                </div>

              <div class="container">
                <div class="list-container" id="reviewList">
                    <h2>Reviews</h2>
                  <?php

                        // BIG QUERY MANYBJOINS!!
                  $sql = "SELECT u.user_id, u.first_name,u.last_name, r.critique, r.Likert_rating,r.ISBN_FK,r.accepted_critique,b.title
                  FROM user u
                  JOIN ratebook r ON u.user_id = r.user_id_FK
                  JOIN school s ON u.school_name_FK = s.school_name
                  JOIN books b ON r.ISBN_FK = b.ISBN
                  WHERE s.school_name = '$user_data[school_name_FK]';";

                  $result = $con->query($sql);

                  if ($result->num_rows > 0) {
                    echo '<table>';
                    echo '<tr>';
                    echo '<th>Title</th>';
                    echo '<th>First name</th>';
                    echo '<th>Last name</th>';
                    echo '<th>Rating</th>';
                    echo '<th>Review</th>';
                    echo '<th>Accept</th>'; // New column for the button
                    echo '</tr>';
                    while ($row = $result->fetch_assoc()) {
                      echo '<td class="book-title">' . $row['title'] . '</td>';
                      echo '<td>' . $row['first_name'] . '</td>';
                      echo '<td>' . $row['last_name'] . '</td>';
                      echo '<td>' . $row['Likert_rating'] . '</td>';
                      echo '<td>' . $row['critique'] . '</td>';
                      echo '<td>';
                      // echo '<td><button onclick="acceptReservation(\'' . $row['reservation_id'] . '\')">Accept</button></td>'; // Button for accepting the reservation

                      if (!$row['accepted_critique']) {
                        echo '<form method="post">';
                        echo '<input type="hidden" name="UserId" value="' . $row['user_id'] . '">';
                        echo '<input type="hidden" name="Isbn" value="' . $row['ISBN_FK'] . '">';
                        echo '<input class="button" type="submit" name="acceptreviewButton" value="Accept review">';
                        echo '</form>';
                    } else {
                        echo '<button class="button" disabled>Accept review</button>';
                        echo '<div class="message">';
                        echo 'Already accepted.';
                        echo '</div>';
                    }
                      echo '</td>';
                      echo '</tr>';
                    }
                    echo '</table>';
                  } else {
                    echo 'No reviews found.';
                  }
                  ?>
                </div>
                </div>


              <div class="container">
                  <div class="list-container" id="BorrowsList">
                      <h2>Borrows</h2>
                      <?php
                      $sql = "SELECT * FROM Books b
                                JOIN borrowbook r ON b.ISBN = r.ISBN_FK
                                JOIN User u ON r.user_id_FK = u.user_id
                                WHERE u.school_name_FK = '$user_data[school_name_FK]'
                                ORDER BY r.return_date IS NULL DESC, r.return_date DESC";
                      $result = $con->query($sql);

                      if ($result->num_rows > 0) {
                        echo '<table>';
                        echo '<tr>';
                        echo '<th>Title</th>';
                        echo '<th>First name</th>';
                        echo '<th>Last name</th>';
                        echo '<th>Borrow Date</th>';
                        echo '<th>Return Status</th>'; // New column for the button
                        echo '</tr>';
                        while ($row = $result->fetch_assoc()) {
                          echo '<td class="book-title">' . $row['title'] . '</td>';
                          echo '<td>' . $row['first_name'] . '</td>';
                          echo '<td>' . $row['last_name'] . '</td>';
                          echo '<td>' . $row['borrow_date'] . '</td>';
                          echo '<td>';

                          if($row['return_date'] == NULL ){
                              echo '<form method="post">';
                              echo  '<input type="hidden" name="UserId" value="' .$row['user_id']. '">';
                              echo   '<input type="hidden" name="Isbn" value="' .$row['ISBN_FK']. '">';
                              echo  '<input class="button" type="submit" name="returnButton" value="Returned">';
                              echo   '</form>';
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

                <div class="container">
                    <div class="list-container" id="LateBorrowsList">
                        <h2>Borrows</h2>
                        <?php
                        $sql = "SELECT * from Books b join borrowbook r on b.ISBN = r.ISBN_FK
                                join User u on r.user_id_FK = u.user_id where u.school_name_FK='$user_data[school_name_FK]' and r.return_date is NULL and r.late='1'";
                        $result = $con->query($sql);

                        if ($result->num_rows > 0) {
                          echo '<table>';
                          echo '<tr>';
                          echo '<th>Title</th>';
                          echo '<th>First name</th>';
                          echo '<th>Last name</th>';
                          echo '<th>Borrow Date</th>';
                          echo '<th>Due date</th>'; // New column for the button
                          echo '</tr>';
                          while ($row = $result->fetch_assoc()) {
                              echo '<tr>'; // Add opening tr tag here
                            echo '<td class="book-title">' . $row['title'] . '</td>';
                            echo '<td>' . $row['first_name'] . '</td>';
                            echo '<td>' . $row['last_name'] . '</td>';
                            echo '<td>' . $row['borrow_date'] . '</td>';
                            echo '<td>' . $row['due_date'] . '</td>';
                            echo '</tr>';
                          }
                          echo '</table>';
                        } else {
                          echo 'No late borrows found.';
                        }
                        ?>
                    </div>
                  </div>
                  </div>

</body>
</html>
