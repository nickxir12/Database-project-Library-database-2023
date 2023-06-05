
<?php


include("connection.php");
include("functions.php");
include("userfunctions.php");

// Check if the user is logged in
$user_data = check_login($con);
$encodedUserId=$user_data['user_id'];

if (isset($_POST['reserveButton'])) {
    $copies = $_POST['copies'];
    $encodedUserId = $_POST['encodedUserId'];
    $encodedIsbn = $_POST['encodedIsbn'];
    ReserveBook($encodedUserId,$encodedIsbn,$copies);
}


if (isset($_POST['deleteReviewButton'])) {
    $encodedUserId = $_POST['encodedUserId'];
    $encodedIsbn = $_POST['encodedIsbn'];
    deleteReview($encodedUserId,$encodedIsbn);
}



if (isset($_POST['reviewButton'])) {
    $rating = $_POST['rating'];
    $encodedIsbn = $_POST['encodedIsbn'];
    $critique = $_POST['comment'];
    ReviewBook($encodedUserId,$rating,$encodedIsbn,$critique);
}


// Check if the book ISBN is provided in the URL
if (isset($_GET['isbn'])) {
    $encodedIsbn = $_GET['isbn'];

    // Fetch the book details from the database based on the ISBN
    $sql = "SELECT * FROM books WHERE ISBN = '$encodedIsbn' ";
    // echo $sql;
    $result = $con->query($sql);


    if ($result->num_rows > 0) {
        // Book found, display the details
        $book = $result->fetch_assoc();
        $title = $book['title'];
        $publisher = $book['publisher'];
        $summary = $book['summary'];
        $language = $book['language'];
        $accepted = $user_data['accepted_user'];
        $activated = $user_data['active_user'];
        // $author = $book['author'];

        $sql1 = "select available_copies from hasbook where ISBN_FK='{$book['ISBN']}' and school_name_FK='$user_data[school_name_FK]'";
        $result1 = $con->query($sql1);
        $row1 = $result1->fetch_assoc();
        $copies = $row1['available_copies'];
        // Add more book attributes as needed
        $sql2 = "SELECT COUNT(*) AS review_count
                 FROM ratebook
                 WHERE user_id_FK = '" . $user_data['user_id'] . "' AND ISBN_FK = '" . $encodedIsbn . "';";
        $result1 = $con->query($sql2);
        $row2 = $result1->fetch_assoc();
        $numbrev=$row2['review_count'];
        // Close the database connection

        $sql3 = "SELECT COUNT(*) AS late_count
                 FROM borrowbook
                 WHERE user_id_FK = '" . $user_data['user_id'] . "' AND late = '" . 1 . "' AND return_date IS NULL";
        $result3 = $con->query($sql3);
        $row3 = $result3->fetch_assoc();
        $late=$row3['late_count'];

        $sql4 = "SELECT COUNT(*) AS same_count
                 FROM borrowbook
                 WHERE user_id_FK = '" . $user_data['user_id'] . "' AND ISBN_FK = '" . $encodedIsbn . "' AND borrow_date + INTERVAL 7 DAY > NOW()";

        $result4 = $con->query($sql4);
        $row4 = $result4->fetch_assoc();
        $same_b=$row4['same_count'];

        $sql5 = "SELECT COUNT(*) AS same_count
                 FROM reservebook
                 WHERE user_id_FK = '" . $user_data['user_id'] . "' AND ISBN_FK = '" . $encodedIsbn . "' AND reservation_date + INTERVAL 7 DAY > NOW()";
        $result5 = $con->query($sql5);
        $row5 = $result5->fetch_assoc();
        $same_r=$row5['same_count'];





?>

<!DOCTYPE html>
<html>
  <head>
    <title>Book Details</title>
    <script src="../js/listshowing.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <style>
        /* Your CSS styles here */



        .container {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;

            font-family: Arial, sans-serif;
        }

        .book-form {
            max-width: 400px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .book-form h1 {
            text-align: center;
        }

        .book-form p {
            margin-top: 10px;
        }

        .button-container {

            display: flex;
            flex-direction: column;
            justify-content: center;
            margin-top: 20px;
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
            margin-bottom:10px;
            margin:auto;
            font-weight:bold;
            color: red;
        }
        .rating-container {
          text-align: center;
          margin-bottom: 10px;
        }

        .rating-container label {
          font-size: 18px;
          font-weight: bold;
        }

        .rating {
          display: flex;
          justify-content: center;
          align-items: center;
          flex-direction: row-reverse; /* Reverse the direction of the stars */
        }

        .rating input {
          display: none;
        }

        .rating label {
          cursor: pointer;
          color: #ccc;
          margin: 0 2px;
        }

        .rating label:before {
          content: '\f005';
          font-family: 'Font Awesome 5 Free';
          font-weight: 900;
        }

        .rating input:checked ~ label {
          color: #ffc107;
        }

        .rating label:hover,
        .rating label:hover ~ label {
          color: #ffc107;
        }
        .book-cover {
                text-align: center;
                margin-bottom: 20px;
              }

          .book-cover img {
            max-width: 300px;
            max-height: 400px;
          }
          .container h1 {
              text-align: center;
              margin-bottom: 20px;
          }

          .form-group {
              margin-bottom: 20px;
          }

          .form-group label {
              display: block;
              font-weight: bold;
              margin-bottom: 5px;
          }

          .form-group textarea {
              width: 100%;
              height: 100px;
              padding: 10px;
              border: 1px solid #ccc;
              border-radius: 5px;
              resize: vertical;
          }

          .submit-btn {
              display: block;
              width: 100%;
              padding: 10px;
              border: none;
              border-radius: 5px;
              background-color: #333;
              color: #fff;
              font-size: 16px;
              text-align: center;
              cursor: pointer;
          }

          .submit-btn:hover {
              background-color: #555;
          }
          .rating-container {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .label-rating {
            margin-right: 10px;
        }

        .critique-container {
            display: flex;
            align-items: center;
        }

        .label-critique {
            margin-right: 10px;
            white-space: nowrap;
        }

        #comment {
            flex: 1;
        }
        table {
          width: 100%;
          border-collapse: collapse;
          background-color: #fff;
          margin-top: 10px;
        }

        th, td {
          padding: 12px;
          border: 1px solid #ddd;
        }

        th {
          background-color: #aaaaaa;
          color: #fff;
        }

        tr:nth-child(even) {
          background-color: #f2f2f2;
        }

        .reviews-title {
          font-size: 24px;
          color: #black;
          margin-bottom: 10px;
        }

        .reservation-title {
            font-size: 24px;
            font-weight: bold;
            color: #black;
            text-align: center;
            margin-bottom: 10px;
        }
        .frame {
            height: 40px;
          border: 1px solid #ccc;
          padding: 5px;
          border-radius: 5px;
          background-color: #f2f2f2;
        }

    </style>

  </head>
  <body>




      <div class="container">
          <div class="book-form">
                <h1><strong><?php echo $title; ?></strong> </h1>

            <div class="book-cover">
              <?php
              if ($book['cover']) {
                echo '<img src="' . $book['cover'] . '" alt="Book Cover">';
              } else {
                echo 'No cover available';
              }
              ?>
            </div>

              <p><strong>Title:</strong> <?php echo $title; ?></p>
              <p><strong>Publisher:</strong> <?php echo $publisher; ?></p>
              <p><strong>Summary:</strong> <?php echo $summary; ?></p>
              <p><strong>Language:</strong> <?php echo $language; ?></p>
              <p><strong>Authors:</strong> <?php echo getAuthorsForBook($encodedIsbn); ?></p>
              <p><strong>Categories:</strong> <?php echo getCategoriesForBook($encodedIsbn); ?></p>
              <p><strong>Available copies:</strong> <?php echo $copies; ?></p>

              <!-- Add more book attributes as needed -->

              <?php if ($accepted=='1' && $activated=='1'): ?>

              <div class="button-container">

                  <?php if ($user_data['user_type']=='school_lib_operator'): ?>
                      <button type="button" onclick="redirectToeditbook('<?php echo $book['ISBN']; ?>')">Edit Book</button>
                  <?php endif; ?>
                        <!-- ADD CONSTRAINT TO NOT BE ABLE TO RESERVE SAME 2 times -->

                        <?php if ($late == 0 && $same_b == 0 && $same_r == 0 && (($user_data['user_type'] == 'student' && $user_data['number_of_reserved_books'] < 2) || ($user_data['number_of_reserved_books'] < 1 && $user_data['user_type'] == 'teacher') || ($user_data['user_type'] == 'school_lib_operator' && $user_data['number_of_reserved_books'] < 1))): ?>

                            <form method="post">
                                <input type="hidden" name="encodedUserId" value="<?php echo $encodedUserId; ?>">
                                <input type="hidden" name="encodedIsbn" value="<?php echo $encodedIsbn; ?>">
                                <input type="hidden" name="copies" value="<?php echo $copies; ?>">
                                <input class="button" type="submit" name="reserveButton" value="Reserve">
                            </form>
                        <?php elseif ($late != 0): ?>
                            <div class="message">
                                Late borrow.
                            </div>
                        <?php elseif ($user_data['user_type'] == 'teacher' || $user_data['user_type'] == 'school_lib_operator'): ?>
                            <div class="message">
                                1 reservation already.
                            </div>
                        <?php elseif ($user_data['user_type'] == 'student' && $user_data['number_of_reserved_books'] >= 2): ?>
                            <div class="message">
                                2 reservations already.
                            </div>
                        <?php else: ?>
                            <div class="message">
                                Borrowed/reserved same book already.
                            </div>
                        <?php endif; ?>


                    <!--IF NOT EXISTS ALREADY -->
                         <?php if ($numbrev=='0'): ?>
                            <form id="ratingForm" method="post">
                                <div class="rating-container">
                                    <label for="rating" class="label-rating">Rating:</label>
                                    <div class="rating" id="ratingStars">
                                        <input type="radio" id="star5" name="rating" value="5">
                                        <label for="star5"></label>
                                        <input type="radio" id="star4" name="rating" value="4">
                                        <label for="star4"></label>
                                        <input type="radio" id="star3" name="rating" value="3">
                                        <label for="star3"></label>
                                        <input type="radio" id="star2" name="rating" value="2">
                                        <label for="star2"></label>
                                        <input type="radio" id="star1" name="rating" value="1">
                                        <label for="star1"></label>
                                    </div>
                                </div>
                                <input type="hidden" name="encodedIsbn" value="<?php echo $encodedIsbn; ?>">

                                <div class="form-group critique-container">
                                    <label for="comment" class="label-critique">Critique:</label>
                                    <textarea id="comment" name="comment" placeholder="Write your critique here..."></textarea>
                                </div>
                                <input class="button" style="margin:auto" type="submit" name="reviewButton" style="margin-left:120px;" value="Sumbit Rating">
                        <?php else: ?>
                                    <!-- IF EXISTS ALREADY -->
                        <?php
                        $sql2 = "SELECT *
                                 FROM ratebook
                                 WHERE user_id_FK = '" . $user_data['user_id'] . "' AND ISBN_FK = '" . $encodedIsbn . "';";
                        $result1 = $con->query($sql2);
                        $row2 = $result1->fetch_assoc();
                        $currentcritique=$row2['critique'];
                        $currentRating=$row2['Likert_rating'];
                        ?>

                        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" class="user-form">
                            <div class="form-group">
                                <label for="comment">Critique:</label>
                                <textarea id="comment" name="critique" placeholder="Write your critique here..."><?php echo $currentcritique; ?></textarea>
                            </div>
                            <div class="rating-container">
                                <label for="rating" class="label-rating">Rating:</label>
                                <div class="rating" id="ratingStars">
                                    <input type="radio" id="star5" name="rating" value="5" <?php if ($currentRating == 5) echo "checked"; ?>>
                                    <label for="star5"></label>
                                    <input type="radio" id="star4" name="rating" value="4" <?php if ($currentRating == 4) echo "checked"; ?>>
                                    <label for="star4"></label>
                                    <input type="radio" id="star3" name="rating" value="3" <?php if ($currentRating == 3) echo "checked"; ?>>
                                    <label for="star3"></label>
                                    <input type="radio" id="star2" name="rating" value="2" <?php if ($currentRating == 2) echo "checked"; ?>>
                                    <label for="star2"></label>
                                    <input type="radio" id="star1" name="rating" value="1" <?php if ($currentRating == 1) echo "checked"; ?>>
                                    <label for="star1"></label>
                                </div>
                            </div>
                            <input type="hidden" name="isbn" value="<?php echo $encodedIsbn; ?>">
                            <div class="form-group">
                                <button class="button" type="submit" style="margin-left:155px;" name="update">Edit</button>
                            </div>
                        </form>

                        <form method="post">
                            <input type="hidden" name="encodedUserId" value="<?php echo $encodedUserId; ?>">
                            <input type="hidden" name="encodedIsbn" value="<?php echo $encodedIsbn; ?>">
                            <input class="button" type="submit" style="margin-left:120px;" name="deleteReviewButton" value="Delete review">
                        </form>



                            <div class="message">
                                Already got a review.
                            </div>
                        <?php endif; ?>





                    </div>
              </div>
              <?php else: ?>
                  <div class="message">
                      No accepted or disabled user.
                  </div>
              <?php endif; ?>



          </div>
      </div>

      <div class="container">
          <div class="list-container">
              <div class="frame" style="width:180px; margin:auto;">
              <h2 class="reviews-title" style="margin-left:50px;">Reviews</h2>
              </div>
            <?php
            $sql = "SELECT DISTINCT r.Likert_rating, r.critique, u.first_name, u.last_name,u.user_type
        FROM ratebook r
        INNER JOIN user u ON r.user_id_FK = u.user_id
        WHERE r.accepted_critique = '1' and r.ISBN_FK='$encodedIsbn'";



            $result = $con->query($sql);

            if ($result->num_rows > 0) {
              echo '<table>';
              echo '<tr>';
              echo '<th>Role</th>';
              echo '<th>First name</th>';
              echo '<th>Last name</th>';
              echo '<th>Rating</th>';
              echo '<th>Review</th>';
              echo '</tr>';
              while ($row = $result->fetch_assoc()) {
                echo '<td>' . $row['user_type'] . '</td>';
                echo '<td>' . $row['first_name'] . '</td>';
                echo '<td>' . $row['last_name'] . '</td>';
                echo '<td>' . $row['Likert_rating'] . '</td>';
                echo '<td>' . $row['critique'] . '</td>';
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
            <div class="frame">
            <h2 class="reviews-title" style="margin-left:50px;">My Borrows</h2>
            </div>
            <?php
            $userId = $user_data['user_id'];
            $sql = "SELECT * FROM Books b
                      JOIN borrowbook r ON b.ISBN = r.ISBN_FK
                      JOIN User u ON r.user_id_FK = u.user_id
                      WHERE u.user_id = '$userId' and b.ISBN='$encodedIsbn'
                      ORDER BY r.return_date IS NULL DESC, r.return_date DESC";
            $result = $con->query($sql);

            if ($result->num_rows > 0) {
              echo '<table>';
              echo '<tr>';
              echo '<th>Borrow Date</th>';
              echo '<th>Return Date</th>';
              echo '</tr>';
              while ($row = $result->fetch_assoc()) {
                echo '<td>' . $row['borrow_date'] . '</td>';
                echo '<td>' . ($row['return_date'] ? $row['return_date'] : 'Not returned') . '</td>';
                echo '</tr>';
              }
              echo '</table>';
            } else {
              echo 'No borrows found.';
            }
            ?>
        </div>
        </div>

        <div class="container">
        <div class="list-container" id="ReservesList">
            <div class="frame">
            <h2 class="reservation-title">My Reservations</h2>
            </div>
            <?php
            $userId = $user_data['user_id'];
            $sql = "SELECT * FROM Books b
                      JOIN reservebook r ON b.ISBN = r.ISBN_FK
                      JOIN User u ON r.user_id_FK = u.user_id
                      WHERE u.user_id = '$userId' and b.ISBN='$encodedIsbn'";
            $result = $con->query($sql);

            if ($result->num_rows > 0) {
              echo '<table>';
              echo '<tr>';
              echo '<th>Reservation Date</th>';
              echo '<th>Status</th>';
              echo '</tr>';
              while ($row = $result->fetch_assoc()) {
                echo '<td>' . $row['reservation_date'] . '</td>';
                echo '<td>' . $row['reservation_status'] . '</td>';
                echo '</tr>';
              }
              echo '</table>';
            } else {
              echo 'No reservations found.';
            }
            ?>
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



  // FOR EDITING RATING
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

if (isset($_POST['update'])) {

$newcritique = $_POST['critique'];
$newRating = $_POST['rating'];
$isbn=$_POST['isbn'];

$query = "UPDATE ratebook SET critique = '$newcritique', Likert_rating = '$newRating',accepted_critique='0' WHERE user_id_FK = '$user_data[user_id]' and  ISBN_FK= '$isbn' ";

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
  // Close the database connection
  $con->close();
  ?> -->
