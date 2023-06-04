<?php
// session_start();

include("connection.php");
include("functions.php");
include("userfunctions.php");
$user_data = check_login($con);


if ($_SERVER['REQUEST_METHOD'] == "POST") {
    // Something was posted

    $title = $_POST['title'];
    $ISBN = $_POST['ISBN'];
    // $ISBN = preg_replace('/[^0-9\-]/', '', $ISBN);
    $publisher = $_POST['publisher'];
    $pages = $_POST['pagenumber'];
    $summary = $_POST['summary'];
    $language = $_POST['language'];
    $copies = $_POST['copies'];
    $categories = $_POST['categories'];
    $s_categories = explode(",", $categories);
    $keywords = $_POST['keywords'];
    $s_keywords = explode(",", $keywords);
    $author = $_POST['authors'];
    $s_authors = explode(",", $author);


                //  CHECK FOR ISBN FORM
    if (!empty($categories) && !empty($keywords) && !empty($title) && !empty($pages) &&  is_numeric($pages) && is_numeric($copies) && !empty($author) && !empty($username) && !empty($publisher) && !empty($summary) && !empty($language)) {

            // Also add in hasschool and add categories parameter!!
                        // Also jump back in home(Done?not checked)
                        $query = "INSERT INTO books (ISBN,title,publisher,page_number,summary,cover,language)
                         VALUES ('$ISBN','$title','$publisher','$pages','$summary','https://www.lybrary.com/images/the_book_without_a_name.jpg','$language')";
                        $result = mysqli_query($con, $query);
                        if ($result) {
                          echo 'Book inserted successfully.';
                        } else {
                          echo 'Error inserting Book.';
                        }


                        foreach ($s_authors as $author) {
                            $authorq = mysqli_real_escape_string($con, $author);

                            $query1 = "SELECT author_id FROM author WHERE author = '$authorq'";
                            $result = mysqli_query($con, $query1);

                            if (mysqli_num_rows($result) == 0) {
                                // The author does not exist, insert a new entry in the author table
                                $query2 = "INSERT INTO author (author) VALUES ('$authorq')";
                                $result2 = mysqli_query($con, $query2);

                                if ($result2) {
                                    $newAuthorId = mysqli_insert_id($con); // Get the newly inserted author_id
                                    $query4 = "INSERT INTO hasauthor (ISBN_FK, author_id_FK)
                                               VALUES ('$ISBN', '$newAuthorId')";
                                    $result4 = mysqli_query($con, $query4);

                                    if ($result4) {
                                        echo 'Author inserted successfully.';
                                    } else {
                                        echo 'Error inserting author in hasauthor.';
                                    }
                                } else {
                                    echo 'Error inserting author in author table.';
                                }
                            } else {
                                $row = mysqli_fetch_assoc($result);
                                $existingAuthorId = $row['author_id'];

                                $query4 = "INSERT INTO hasauthor (ISBN_FK, author_id_FK)
                                           VALUES ('$ISBN', '$existingAuthorId')";
                                $result4 = mysqli_query($con, $query4);

                                if ($result4) {
                                    echo 'Author inserted successfully.';
                                } else {
                                    echo 'Error inserting author in hasauthor.';
                                }
                            }
                        }



        $query4 = "INSERT INTO hasbook (ISBN_FK, school_name_FK,available_copies)
                  VALUES ('$ISBN', '" . $user_data['school_name_FK'] . "','$copies')";

        $result = mysqli_query($con, $query4);

        if ($result) {
            echo 'Book inserted successfully.';
        } else {
            echo 'Error inserting Book.';
        }


        foreach ($s_keywords as $keyword) {
          $keyword = mysqli_real_escape_string($con, $keyword); // Sanitize the category value

          $query2 = "INSERT INTO keyword (keyword, ISBN_FK) VALUES ('$keyword', '$ISBN')";
          $result2 = mysqli_query($con, $query2);

          if (!$result2) {
            // Handle the error if the query fails
            echo "Error: " . mysqli_error($con);
          }
        }

        foreach ($s_categories as $category) {
          $category = mysqli_real_escape_string($con, $category); // Sanitize the category value

          $query2 = "INSERT INTO category (category, ISBN_FK) VALUES ('$category', '$ISBN')";
          $result2 = mysqli_query($con, $query2);

          if (!$result2) {
            // Handle the error if the query fails
            echo "Error: " . mysqli_error($con);
          }
        }



    }else{

        echo "Please enter valid information!";
    }
    header("Location: school_lib_operator.php");
    exit;
}
?>





<!DOCTYPE html>
<html>
<head>
    <title>New Book</title>
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
    <div style="font-size: 20px; margin: 10px; color: white;">New Book Addition</div>
    <input id="text" type="text" name="title" placeholder="Enter the book title"><br><br>
    <input id="text" type="text" name="ISBN" placeholder="Enter ISBN"><br><br>
    <input id="text" type="text" name="publisher" placeholder="Enter publisher"><br><br>
    <input id="text" type="text" name="pagenumber" placeholder="Enter page number"><br><br>
    <input id="text" type="text" name="summary" placeholder="Enter summary"><br><br>
    <input id="text" type="text" name="language" placeholder="Enter language"><br><br>
    <input id="text" type="text" name="copies" placeholder="Enter copies available"><br><br>
    <input id="text" type="text" name="categories" placeholder="Enter categories of book,seperated by a comma"><br><br>
    <input id="text" type="text" name="keywords" placeholder="Enter keywords of book,seperated by a comma"><br><br>
    <input id="text" type="text" name="authors" placeholder="Enter authors of book,seperated by a comma"><br><br>

    <br><br>
    <!-- Move the "Add book" button here -->
    <input id="button" type="submit" value="Add book"><br><br>

    <div id="link">
            <a href="school_lib_operator.php">Back to Home page</a>
    </div>
</form>
</div>
</body>
</html>
