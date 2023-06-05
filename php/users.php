
<?php
// session_start();

include("connection.php");
include("functions.php");
include("userfunctions.php");
$user_data = check_login($con);

// Check if the user has a specific attribute in the users table
$showBookList = ($user_data['accepted_user'] === '1');


if (isset($_POST['cancelReservationButton'])) {
    $userId = $_POST['UserId'];
    $Isbn = $_POST['Isbn'];
    cancelReservation($userId,$Isbn);
}

?>

<!DOCTYPE html>
<html>
  <head>
    <title>Library User Home Page</title>
    <script src="../js/listshowing.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">


    <style>
    #userList,#BorrowsList,#resList,#reviewList,#ReviewsList,#bookList,#List332 {
        display: none;
    }

        #resList, #userList,#BorrowsList,#reviewList,#ReviewsList,#bookList,#List332{
          background-color: #fff;
          padding: 20px;
          border-radius: 8px;
          box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
          text-align: center;
          margin: 0 auto;
          max-width: 40%;
          margin-top: 100px;
        }

            #userList,
            #resList {
                display: none;
                margin-top: 100px;
            }

            table {
              width: 100%;
              border-collapse: collapse;
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

        .window-container1 {
          position: fixed;
          top: 40px;
          right: 20px;
          width: 200px;
          background-color: #fff;
          padding: 10px;
          border: 1px solid #ccc;
          border-radius: 5px;
          box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
          z-index: 2;
        }

        .window-container2 {
          position: fixed;
          top: 40px;
          left: 20px;
          width: 200px;
          background-color: #9ec2c6;
          padding: 10px;
          border: 1px solid #ccc;
          border-radius: 5px;
          box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
          z-index: 2;
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          text-align: center;
        }
        .window-content {
          margin-top: 10px;
          text-align: left;
        }

        .window-content ul {
          list-style-type: none;
          padding: 0;
        }

        .window-content li {
          margin-bottom: 5px;
        }
        .window-title {
          margin-top: 0;
        }

        .window-content {
          margin-top: 10px;
        }

        .photo-container {
          margin-top: 20px;
        }

        .barcode-photo {
          width: 100%;
          max-width: 100%;
          height: auto;
          object-fit: contain;
          border: 1px solid #ccc;
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
.photo-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 20px;
}


#box {
    background-color: black;
    margin: auto;
    width: 405px;
    padding: 20px;
}

    </style>


  </head>

  <body>

        <div class="window-container1">
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
              <?php if ($user_data['user_type']=='teacher') : ?>
                    <form action="changeinfo.php" method="post">
                      <button class="window-button" type="submit">Edit</button>
                    </form>
              <?php endif; ?>
            </div>
          </div>
        </div>


        <?php if($user_data['accepted_user'] == '1') : ?>
          <div class="window-container2">
            <div class="window">
              <h3 class="window-title">User's Personal card</h3>
              <div class="window-content">
                <ul>
                  <li><strong>User id:</strong> <?php echo $user_data['user_id']; ?></li>
                  <li><strong>School Name:</strong> <?php echo $user_data['school_name_FK']; ?></li>
                </ul>
                <div class="photo-container">
                  <img src="https://ozbarcodes.com.au/wp-content/uploads/2023/05/barcode_example_image-scaled.jpg" alt="Barcode Photo" class="barcode-photo" id="barcode-image">
                </div>
              </div>
            </div>
          </div>
        <?php endif; ?>


<div id="buttonContainer">

    <form method="post">
        <button class="button" type="button" onclick="showBookList()">Show Full Book List</button>
    </form>


        <button class="button" onclick="redirectTosearchbook()">Search book by Title/Author/Category(Q 3.3.1)</button>
        <button class="button" onclick="showList('List332')">Show all borrowed books(Q 3.3.2)</button>
        <button class="button" onclick="showList('BorrowsList')">Show my borrows</button>
        <button class="button" onclick="showList('ReviewsList')">Show my reviews</button>
        <button class="button" onclick="showList('resList')">Show my reservations</button>
        <button class="button" onclick="changePassword()">Change Password</button>
        <button class="button" onclick="login()">Log out</button>
</div>

        <div class="container">
            <div class="list-container" id="bookList">
            <h2>All books</h2>
            <?php
          $sql = "SELECT DISTINCT b.* FROM books AS b
          JOIN (SELECT ISBN_FK FROM hasbook WHERE school_name_FK = '$user_data[school_name_FK]') AS h
          ON b.ISBN = h.ISBN_FK";
        $result = $con->query($sql);

        if ($result->num_rows > 0) {
          echo '<table>';
          echo '<tr>';
          echo '<th>Title</th>';
          echo '<th>Status</th>';
          echo '</tr>';
          while ($row = $result->fetch_assoc()) {
            $sql1 = "SELECT available_copies FROM hasbook WHERE ISBN_FK='{$row['ISBN']}' and school_name_FK='$user_data[school_name_FK]'";
            $result1 = $con->query($sql1);
            $row1 = $result1->fetch_assoc();
            $copies = $row1['available_copies'];

            echo '<tr onclick="redirectToBookPage(\'' . $row['ISBN'] . '\')">';
            echo '<td>' . $row['title'] . '</td>';
            echo '<td class="';
            echo ($copies > 0 ? 'green' : 'red');
            echo '">';
            echo ($copies > 0 ? 'Available' : 'Not available right now');
            echo '</td>';
            echo '</tr>';
          }
          echo '</table>';
        } else {
          echo 'No books found.';
        }

      ?>
    </div>


    <div class="container">
      <div class="list-container" id="resList">
          <h2>Reservations</h2>
        <?php
        $sql = "SELECT * from Books b join ReserveBook r on b.ISBN = r.ISBN_FK
                join User u on r.user_id_FK = u.user_id where u.school_name_FK='$user_data[school_name_FK]'
                and u.user_id='$user_data[user_id]'
                order by reservation_date desc";
        $result = $con->query($sql);

        if ($result->num_rows > 0) {
              echo '<table>';
              echo '<tr>';
              echo '<th>Title</th>';
              echo '<th>Date</th>';
              echo '<th>Status</th>';
              echo '</tr>';
              while ($row = $result->fetch_assoc()) {
                echo '<tr>';
                echo '<td class="book-title">' . $row['title'] . '</td>';
                echo '<td>' . $row['reservation_date'] . '</td>';

                if ($row['reservation_status'] == 'made' || $row['reservation_status'] == 'waiting') {
                  echo '<td>';
                  echo '<form method="post">';
                  echo '<input type="hidden" name="UserId" value="' . $row['user_id'] . '">';
                  echo '<input type="hidden" name="Isbn" value="' . $row['ISBN_FK'] . '">';
                  echo '<input type="submit" class="button" name="cancelReservationButton" value="Cancel Reservation">';
                  echo '</form>';
                  echo '</td>';
                } else {
                  echo '<td>' . $row['reservation_status'] . '</td>';
                }

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
        <div class="list-container" id="List332">
            <h2>List of Borrowed books</h2>
          <?php
          $sql = "SELECT DISTINCT b.*
                    FROM books AS b
                    WHERE b.ISBN IN (SELECT ISBN_FK FROM borrowbook WHERE user_id_FK = '$user_data[user_id]');
                        ";


          $result = $con->query($sql);

          if ($result->num_rows > 0) {
                echo '<table>';
                echo '<tr>';
                echo '<th>Title</th>';
                echo '</tr>';
                while ($row = $result->fetch_assoc()) {
                  echo '<tr>';
                  echo '<td class="book-title">' . $row['title'] . '</td>';
                  echo '</tr>';
                }
                echo '</table>';
              } else {
                echo 'No reservations found.';
              }

          ?>
        </div>
        </div>


        <div class="list-container" id="ReviewsList">
            <h2>Reviews</h2>
          <?php

                // BIG QUERY MANYBJOINS!!
          $sql = "SELECT u.user_id, u.first_name,u.last_name, r.critique, r.Likert_rating,r.ISBN_FK,r.accepted_critique,b.title
          FROM user u
          JOIN ratebook r ON u.user_id = r.user_id_FK
          JOIN school s ON u.school_name_FK = s.school_name
          JOIN books b ON r.ISBN_FK = b.ISBN
          WHERE s.school_name = '$user_data[school_name_FK]' and u.user_id='$user_data[user_id]';";

          $result = $con->query($sql);

          if ($result->num_rows > 0) {
            echo '<table>';
            echo '<tr>';
            echo '<th>Title</th>';
            echo '<th>Rating</th>';
            echo '<th>Review</th>';
            echo '<th>Status</th>';
            echo '</tr>';
            while ($row = $result->fetch_assoc()) {
            echo '<tr onclick="redirectToBookPage(\'' . $row['ISBN_FK'] . '\')">';
              echo '<td class="book-title">' . $row['title'] . '</td>';
              echo '<td>' . $row['Likert_rating'] . '</td>';
              echo '<td>' . $row['critique'] . '</td>';
              echo "<td>" . ($row['accepted_critique'] ? '<p class="green">Accepted</p>' : '<p class="red">Not Accepted</p>') . "</td>";
              echo '</tr>';
            }
            echo '</table>';
          } else {
            echo 'No reviews found.';
          }
          ?>
        </div>


      <div class="container">
          <div class="list-container" id="BorrowsList">
              <h2>Borrows</h2>
              <?php
              $sql = "SELECT * from Books b join borrowbook r on b.ISBN = r.ISBN_FK
                      join User u on r.user_id_FK = u.user_id where u.school_name_FK='$user_data[school_name_FK]'
                       and u.user_id='$user_data[user_id]'
                       order by borrow_date";
              $result = $con->query($sql);

              if ($result->num_rows > 0) {
                echo '<table>';
                echo '<tr>';
                echo '<th>Title</th>';
                echo '<th>Borrow Date</th>';
                echo '<th>Return Date</th>';
                echo '<th>Status</th>'; // New column for the button
                echo '</tr>';
                while ($row = $result->fetch_assoc()) {
                    echo '<td class="book-title">' . $row['title'] . '</td>';
                  echo '<td>' . $row['borrow_date'] . '</td>';
                  echo '<td>';
                  if ($row['return_date'] == null) {
                      echo 'Not returned';
                  } else {
                      echo $row['return_date'];
                  }
                  echo '</td>';
                  echo '<td>';
                  if ($row['return_date'] == null) {
                      if($row['late']==1){
                          echo '<p class="red">' . 'Late' . '</p>';
                      }
                      else{
                         echo '<p class="green">' . 'Active' . '</p>';
                      }
                 }else{
                     echo '<p class="green">' . 'Returned' . '</p>';
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

</html>
